# Browser Screenshots in OSX

Some basic scripts that open a list of URLs in a web browser and take a screenshot. There's lots of room for improvement, but they work. Feedback is welcome, patches welcome too.

The scripts use a handy utility called GetWindowID https://github.com/smokris/GetWindowID.
You can compile yourself if you prefer.


## Scripts for image comparison

The scripts in folders onetime-diff and automatic-diff have the following dependancies:

* blink-diff: npm install blink-diff
* pngjs-image: npm install pngjs-image


## Browser settings and considerations

### General
* Cookie notifications (happens frequently in europe)
* Regional settings (use of VPN to allow U.S based sites to render properly)
* If flash is enabled in one browser, ensure the same in the other
* Disable any add-ons like popup blockers
* Creating a fresh profile for testing is best

If you want to capture screenshots in Private or Incognito tabs:
* Some sites create a specific experience for the first visit
* Consider disabling Tracking Protection in Firefox

### Viewport size
* Decide on a viewport size that makes sense for your test eg. 1280px x 1024px
* In the javscript console of each browser use these to determine the viewport size. The outer window size of each browser is slightly different.
  * window.innerWidth
  * window.innerHeight

### Firefox
Enter about:config in the address bar and change these parameters (at your own risk).
* browser.sessionstore.max_resumed_crashes - set to a high value
* browser.sessionstore.resume_from_crash - false
* toolkit.startup.max_resumed_crashes - set to a high value
* browser.tabs.crashReporting.sendReport - false
* privacy.popups.showBrowserMessage - false

### Chrome
* Settings / Content Settings / Location / Do not allow any site to track your physical location
* Settings / Languages / Disable 'Offer to translate pages'
