# twitchindicator

Displays active streams from channels you're following on Twitch.
Now it's a beta version, so don't hesitate to report bugs and request some improvements.


How to Use

Click the "Relogin" button in the widget configuration
Your default browser will open to the Twitch authentication page
After logging in, you'll be redirected to a URL like: http://localhost/#access_token=TTTTTTTTTTTTTTTTTTT&scope=user%3Aread%3Afollows&token_type=bearer

Copy the entire URL

Paste it into the text field and click "Save Token" (the widget will extract the token automatically)
 
## Maintenance and resizing

This Plasma 6 fork is maintained at https://github.com/giubbe/twitchindicator.
Based on the original Twitch Indicator by Sergei Markov.

Resize the open Twitch popup by dragging its border (your window manager's
resize shortcut may also work). The initial size is only a default: Plasma
stores the actual popup size when the popup closes. The compact panel view
follows the panel height instead of requesting a fixed 32-pixel height.
