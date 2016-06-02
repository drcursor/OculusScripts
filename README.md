# Oculus Scripts

Useful scripts for Oculus Rift.

## Usage

All of these scripts need to be run with either administrator permissions or permissions to start and stop the Oculus service.
To grant service permissions and avoid the UAC prompts, simply run GrantPermissions.bat

## GrantPermissions.bat

Adds start and stop permissions to the current logged in user. This way you don't need to run the batch files as administrator and you're not faced with a UAC prompt at each usage.
Requires subinacl (a Windows Resource Kit tool), you can download it directly from Microsoft [here](https://download.microsoft.com/download/1/7/d/17d82b72-bc6a-4dc8-bfaa-98b37b22b367/subinacl.msi).
Please make sure to run this script with admin privileges.

## StartStopOculus.bat

Starts or Stops Oculus Service (depending on current status).  Useful if you need to stop Oculus home from auto-starting or to store the HMD with any kind of cover that would otherwise trigger the screens.

## StopOculus.bat

Stops the Oculus Service.

## StartOculus.bat

StopOculus.bat nemesis... Starts the service so you can use it again.

## FixCPU.bat

Sets a false CPU ID on the windows Registry so that Oculus home stops displaying the nagging "Your computer doesn't meet Rift's recommended specifications" message. This change is reverted once you restart your PC.

## Acknowledgments
 - [Bitvar](https://forums.oculus.com/community/discussion/36677/permanent-fix-for-false-doesnt-meet-minimum-message)
 - [Xelys](https://www.reddit.com/r/oculus/comments/4fw89n/how_do_you_turn_off_the_cv1_besides_unplugging_it/d2cla9a)
 - [mushroomtomatoes](http://mushroomtomatoes.com/2016/04/how-to-stop-oculus-home-from-auto-starting-stop-riftcamera-from-running-hot/)


*Please feel free to add other useful scripts*
