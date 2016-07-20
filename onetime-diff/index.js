// Before getting started, make sure the browser viewports are identical in size
// Resize each browser window and check size in dev tools with:
// console.log(window.innerWidth)
// console.log(window.innerHeight)

var PNGImage = require('pngjs-image');
var BlinkDiff = require('blink-diff');
var fs = require('fs');

var diffTest = function(){
  var firstImage = PNGImage.readImage('firefox.png', function (err) {

    if (err) {
      throw err;
    }

    var diff = new BlinkDiff({
        imageA: firstImage, // Use already loaded image for first image
        imageBPath: 'chrome.png', // Use file-path to select image

        thresholdType: BlinkDiff.THRESHOLD_PERCENT,
        threshold: 0.4, // Percentage threshold 0.1 = 10%
        delta: 50, // Make comparison more tolerant

        outputMaskRed: 0,
        outputMaskBlue: 255, // Use blue for highlighting differences

        hideShift: true, // Hide anti-aliasing differences - will still determine but not showing it
        composeLeftToRight: true,
        perceptual: true,
        gamma: 60,

        cropImageA: { x:0, y:160, width:0, height:1900 }, //Pixels from top of image in Firefox to ignore
        cropImageB: { x:0, y:144, width:0, height:1900 }, //Pixels from top of image in Chrome to ignore

        //blockOut: { x:100, y:250, width:2000, height:1500 },

        imageOutputPath: 'output.png'
    });

    diff.run(function (error, result) {
      if (error) {
        throw error;
      } else {
        console.log(diff.hasPassed(result.code) ? 'Passed' : 'Failed');
        console.log('Found ' + result.differences + ' differences.');
      }
    });
  });
}


diffTest();
