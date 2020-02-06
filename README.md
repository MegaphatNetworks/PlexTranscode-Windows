# PlexTranscode-Windows
Automatic Transcoding for Plex Media Server using Handbrake-CLI

I used C:\PlexScripts to store the batch files.
You will need to create a subfolder called C:\PlexScripts\Data to store your log files.

Only 1 script 1-TV-Post-Record.bat will need to be configured in PMS in order to have this work. But you will need to download and install HandBrakeCLI 4  (or higher) to perform the conversion. To configure the script in PMS, in your PMS, click Settings, go to Live TV & DVR. Click on DVR Settings. Scroll down to PostProcessing Script and enter C:\PlexScripts\1-TV-Post-Record.bat

Of course, the C:\PlexScripts is how I configured mine. Also the scripts are hard coded with that path so if you wish to use a different path, please make the appropriate changes. So if you use D:\MyPlexScripts, then you will obviously need to make the change accordingly as well as make the subfolder D:\MyPlexScripts\Data as well.

1-TV-Post-Record.bat
This is the file that initiates the whole scripting process by creating temporary file names and a work space to start the conversion process. It creates a log file and then launches the next batch file.

2-TV-Post-Convert.bat
This script begins HandbrakeCLI with the required parameters.

3-TV-Post-Cleanup.bat
This script finishes by cleaning up the temp files created as well as the .ts file. It also tells PMS to update the media library.

