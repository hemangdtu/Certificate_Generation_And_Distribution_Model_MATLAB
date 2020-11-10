function certificate_generator(v1, v2)
    clc
    clear all
    close all
    home

    filename = 'Registration_Details.xls';
    [num, txt] = xlsread(filename);
    % Read Excel sheet containing details.
    
    len = length(txt);
    % Obtain length of text in excel or number of certificates to be
    % generated.
    
    imagetemplate = 'Certificate_Blank.tif'; 
    blankimage = imread(imagetemplate);
    % Read blank certificate image template.
    
    for i=1:len
        for j= 2:2 
            text_names(i,j) = txt(i,j);
        end
    end
    % Obtain names of individuals from the .xls file present in the 2nd
    % column.
    
    for i=1:len
        for j= 3:3
          text_topic(i,j) = txt(i,j);
        end
    end
    % Obtain topic of individuals from the .xls file present in the 3rd
    % column.
    
    % Beginning the loop from the 2nd row of the dataset.
    for i=2:len
            text_all = [text_names(i,2) text_topic(i,3)];
            % Combines names and topics.
            
            position = [408 284; 254 546];         
            % Obtain positions to insert on image.
            
            RGB = insertText(blankimage, position, text_all, 'FontSize', 32, 'Font', 'Arial Bold', 'BoxOpacity', 0);
            % Text formatting for the text to be displayed on the
            % certificates.
            
            figure
            imshow(RGB)
            % Displaying the Image in Figure window.

            y = i-1;
            filename = ['Certificate_' num2str(y)];
            lastf = [filename '.jpg'];
            saveas(gcf, lastf)
            % Saves the image being displayed in the figure window as the
            % string present in lastf variable.
            
            close all
            % Closes the Figure window.
    end
    close all
end