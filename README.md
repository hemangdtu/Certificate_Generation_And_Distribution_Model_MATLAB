# Certificate Generation And Distribution Model using MATLAB

### About the Project
MATLAB is a multifaceted tool that can be very well utilized to automate many tasks. In order to explore and utilize the Image Processing, GUI and E-mail Service operation(s)/ features in MATLAB we have decided to write a code which can take a .xls file and a certificate image template as inputs and with the data present in the .xls file generate certificates as a suitable image file which can be mailed to the concerned via Email with the help of a GUI.

### Information about the Files
<ul>
<li><B>model_gui.mlapp</B> - Configure and trigger the GUI in MATLAB App Designer</li>
<li><B>mail_module.m</B> - MATLAB function file used to add the E-mail functionality to the project and mail the JPG file to the concerned based on the data available in Registration_Details.xls</li>
<li><B>certificate_generator.m</B> - MATLAB function file used to generate certificates based on the data present in Registration_Details.xls</li>
<li><B>Registration_Details.xls</B> - Dataset</li>
<li><B>Certificate_Blank.tif</B> - Blank image template of the certificate</li>
<li><B>Certificate_1.jpg</B> - Sample output</li>
</ul>

### Flow of Control in the Project
On running the model_gui.mlapp in the MATLAB App Designer we get the above shown layout in a Dialogue Box titled as “GUI Model”. The GUI here consists of 5 labels, 4 text edit fields and 2 push buttons.<br><br>
When we press the “Generate Certificates Button”, it initiates the program to collect values from the “Image Template Edit Field” and “Registration Dataset Edit Filed” passes the values to “certificate_generator.m” which takes data from “Registration_Details.xls” and as programmed places the data on “Certificate_Blank.tif”. After performing this operation, the program displays the output is a figure window one-by-one and saves the images in .jpg format.<br><br>
When we press the “Mail Certificates Button”, it first configures and connects our MATLAB code to the internet via SMTP. After this it one by one collects the .jpg format certificate files from the present working directory and mails them to the respective E-mail addresses as per the data available in the “Registration_Details.xls” dataset.
