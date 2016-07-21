// Before getting started, make sure the browser viewports are identical in size
// Resize each browser window and check size in dev tools with:
// console.log(window.innerWidth)
// console.log(window.innerHeight)

var PNGImage = require('pngjs-image');
var BlinkDiff = require('blink-diff');
var fs = require('fs');

var args = process.argv.slice(2); // command line args
var path1 = args[0];
var path2 = args[1];
var outputpath = args[2];
var sitename = args[3];

var diffTest = function(site){
  var firstImage = PNGImage.readImage(path1 + site + '.png', function (err) {
    if (err) {
      throw err;
    }

    var diff = new BlinkDiff({
        imageA: firstImage, // Use already loaded image for first image
        imageBPath: path2 + site + '.png', // Use file-path to select image

        thresholdType: BlinkDiff.THRESHOLD_PERCENT,
        threshold: 0.15, // Percentage threshold 0.1 = 10%
        delta: 50, // Make comparison more tolerant

        outputMaskRed: 0,
        outputMaskBlue: 255, // Use blue for highlighting differences

        hideShift: true, // Hide anti-aliasing differences - will still determine but not showing it
        composeLeftToRight: true,
        perceptual: true,
        gamma: 25,

        cropImageA: { x:0, y:160, width:0, height:0 },
        cropImageB: { x:0, y:144, width:0, height:0 },

        imageOutputPath: outputpath + 'pass/' + site + '.png'
    });

    diff.run(function (error, result) {
      if (error) {
        throw error;
      } else {
        console.log('############################################');
        console.log('Diff Test Result');
        console.log('Site: ' + site);
        console.log(diff.hasPassed(result.code) ? 'Passed' : 'Failed');
        console.log('Found ' + result.differences + ' differences.');
        if (diff.hasPassed(result.code) == false){
          fs.rename(outputpath + 'pass/' + site + '.png', outputpath + 'fail/' + site + '.png'); // Move file from pass to fail
        }
        //Log the data
        var output = {
          URI: site,
          score: result.differences,
          pass: diff.hasPassed(result.code)
        }
        logdata(output);
      }
    });
  });
}

var logdata = function (output){
  //file logging not used in this version
  console.log('############################################');
}

//Run it
diffTest(sitename);
