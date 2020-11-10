function mail_module(subj, msg)
    clc

    senderemail ='hemangsinha.social@gmail.com';    % Sender's Email ID
    senderpass =input('Enter your password: ', 's');
    clc
    % Getting account details.

    setpref('Internet', 'E_mail', senderemail);
    setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
    setpref('Internet', 'SMTP_Username', senderemail);
    setpref('Internet', 'SMTP_Password', senderpass);
    % Establishing SMTP connection between MATLAB and Internet by setting
    % up preferences.

    props = java.lang.System.getProperties;
    props.setProperty( 'mail.smtp.auth', 'true' );
    props.setProperty( 'mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory' );
    props.setProperty( 'mail.smtp.socketFactory.port', '465');
    % Boiler-plate Java code to import Authentication and other necessary
    % services.
    
    filename = 'Registration_Details.xls';
    [num,txt] = xlsread(filename);
    % Read Excel sheet containing details.
    
    len = length(txt);
    for i=1:len
        for j= 4:4 
            text_email(i,j) = txt(i,j);
        end
    end
    % Obtain Email IDs of individuals from the .xls file present in the 4th
    % column.
    
    for i=2:len
            y = i-1;
            filename = ['Certificate_' num2str(y) '.jpg'];
            
            sendmail(text_email(i,4), 'Webinar Certificate', ...
            'Thankyou for attending the session, we hope you found the session to be resourceful. Please find your certificate as an attachment', ...
            filename);
            % Sending mails to respective individuals.
    end
    fprintf('Successful!\n');
end