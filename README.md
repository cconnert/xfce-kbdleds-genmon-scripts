# Installation

Download the lastest [release](https://github.com/ShaolinAssassin/xfce-kbdleds-genmon-scripts/releases) archive and extract it to your home user folder.

# Set notifiers scripts

These scripts will display a notification when CAPS/NUM are being enabled or disabled.

1. Open XFCE Menu > Select Settings > Choose Keyboard option ;

2. Select Application Shortcuts tab in the Keyboard Window ;

3. Click on the Add button in the Application Shortcuts window ;
4. For the command, add
>>
/home/username/.scripts/capslock-notifier.sh

then select OK ;

5. You will be able to see a pop-up window named Command Shortcut, press the Caps Key.

6. Done. Repeat the process to install the numlock notifier script.

Now everytime you press the Caps or Num keys, a notification will be displayed.

# Set genmon scripts

**Requierements :**
- xfce4-genmon-plugin (4.1.1+)
- xdotool (_sudo apt install xdotool_ for any debian based distribution)

These scripts will display CAPS/NUM status from XFCE panel. **Each script will require his own dedicated genmon plugin in XFCE panel.**

1. Add a genmon-plugin to XFCE panel ;

2. Right-click on it and select Properties ;

3. Settings :
>>
Command : /home/username/.scripts/genmon-capsleds.sh
>>
Label : (unchecked)
>>
Period : 0,25
>>
Font : leave it as default

4. Save. Done. Repeat the process to install the genmon numlock script.
