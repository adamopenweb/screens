#!/bin/sh

# Some preferences in Firefox that should be modified before using this script
# The script kills the browser's process in OSX, Firefox thinks it has crashed
# This is to prevent tabs from building up when running large batches of sites
# The utility GetWindowID is used in this script https://github.com/smokris/GetWindowID

# browser.sessionstore.max_resumed_crashes
# browser.sessionstore.resume_from_crash
# toolkit.startup.max_resumed_crashes
# browser.tabs.crashReporting.sendReport
# privacy.popups.showBrowserMessage false

# Do some folder clean up, backup your results or make this pretty
rm -r output
mkdir output;
cd output;
mkdir firefox;
mkdir chrome;
mkdir pass;
mkdir fail;
cd ..;

h=$"http://";
list=(google.com youtube.com facebook.com baidu.com yahoo.com amazon.com wikipedia.org qq.com google.co.in twitter.com live.com taobao.com msn.com sina.com.cn yahoo.co.jp google.co.jp linkedin.com weibo.com bing.com yandex.ru vk.com hao123.com instagram.com ebay.com google.de amazon.co.jp 360.cn tmall.com mail.ru pinterest.com google.co.uk reddit.com netflix.com google.ru t.co google.com.br sohu.com google.fr paypal.com microsoft.com google.it google.es wordpress.com blogspot.com tumblr.com apple.com onclickads.net imgur.com ok.ru xvideos.com gmw.cn stackoverflow.com aliexpress.com imdb.com google.com.hk fc2.com google.com.mx ask.com amazon.de google.ca rakuten.co.jp diply.com google.com.tr soso.com tianya.cn pornhub.com alibaba.com office.com google.co.id github.com craigslist.org chinadaily.com.cn go.com pixnet.net xinhuanet.com nicovideo.jp amazon.co.uk amazon.in bongacams.com outbrain.com cntv.cn blogger.com googleusercontent.com kat.cr cnn.com jd.com google.com.au google.pl naver.com xhamster.com coccoc.com dropbox.com 360.com china.com haosou.com adobe.com sogou.com whatsapp.com microsoftonline.com chase.com nytimes.com flipkart.com booking.com google.com.eg google.com.pk espn.go.com alipay.com bbc.co.uk amazon.cn 163.com google.com.sa adnetworkperformance.com wikia.com youth.cn youku.com google.co.th google.com.tw google.com.ar livedoor.jp china.com.cn ebay.co.uk indiatimes.com ebay.de google.co.kr dailymotion.com quora.com adf.ly amazonaws.com twitch.tv bankofamerica.com cnzz.com google.nl bbc.com xnxx.com popads.net buzzfeed.com dailymail.co.uk ettoday.net wittyfeed.com tudou.com zillow.com huffingtonpost.com wellsfargo.com so.com walmart.com etsy.com ameblo.jp globo.com yelp.com indeed.com aol.com uol.com.br dmm.co.jp detail.tmall.com avito.ru blogspot.in google.gr soundcloud.com txxx.com zhihu.com weather.com cnet.com google.co.za detik.com slideshare.net google.com.ua directrev.com theladbible.com theguardian.com bilibili.com vice.com espncricinfo.com kakaku.com goo.ne.jp taboola.com naver.jp mediafire.com tripadvisor.com gfycat.com flickr.com salesforce.com amazon.it taringa.net stackexchange.com uptodown.com imzog.com redtube.com washingtonpost.com google.com.ng target.com foxnews.com google.cn amazon.fr leboncoin.fr godaddy.com google.com.co forbes.com google.com.sg daum.net softonic.com feedly.com ikea.com bp.blogspot.com 51.la liveadexchanger.com snapdeal.com orange.fr web.de hclips.com tradeadexchange.com youm7.com onlinesbi.com steamcommunity.com force.com google.ro babytree.com vimeo.com comcast.net youporn.com nih.gov github.io udn.com ifeng.com 9gag.com pixiv.net google.be intuit.com tribunnews.com gmx.net zol.com.cn torrentz.eu americanexpress.com mozilla.org rdsa2012.com thepiratebay.se secureserver.net homedepot.com steampowered.com wikihow.com about.com google.com.ph livejournal.com reimageplus.com hdfcbank.com wix.com allegro.pl 1688.com putlocker.is xuite.net capitalone.com bestbuy.com skype.com google.co.ve groupon.com iqiyi.com akamaihd.net w3schools.com usps.com xywy.com hulu.com google.at google.com.pe deviantart.com shutterstock.com ruten.com.tw xfinity.com mega.nz upornia.com slickdeals.net icicibank.com bitauto.com t-online.de onet.pl youtube-mp3.org bet365.com speedtest.net seznam.cz huanqiu.com files.wordpress.com caijing.com.cn pandora.com blastingnews.com blog.jp archive.org amazon.es google.se weebly.com businessinsider.com eksisozluk.com wikimedia.org ebay-kleinanzeigen.de csdn.net spotify.com google.pt google.ae goodreads.com terraclicks.com ups.com nametests.com google.dz doorblog.jp wordpress.org siteadvisor.com rambler.ru google.ch mama.cn popcash.net wp.pl usatoday.com webtretho.com ltn.com.tw 39.net varzesh3.com 1905.com onedio.com liputan6.com samsung.com cnnic.cn ndtv.com rediff.com webmd.com accuweather.com 2ch.net hp.com 51yes.com fedex.com wordreference.com kaskus.co.id google.co.il irctc.co.in twimg.com att.com telegraph.co.uk milliyet.com.tr sberbank.ru hurriyet.com.tr kapanlagi.com abs-cbn.com life.tw fbcdn.net kompas.com loading-delivery2.com doubleclick.net enet.com.cn sourceforge.net icloud.com google.cl eastday.com paytm.com gizmodo.com google.hu verizonwireless.com ontests.me dell.com themeforest.net thesaurus.com chaturbate.com sabah.com.tr google.cz google.ie bloomberg.com hotstar.com livejasmin.com badoo.com digikala.com zendesk.com mashable.com mercadolivre.com.br mailchimp.com addthis.com gsmarena.com urdupoint.com adidas.tmall.com trello.com chaoshi.tmall.com cricbuzz.com watsons.tmall.com jabong.com media.tumblr.com lowes.com roblox.com ign.com bukalapak.com impress.co.jp macys.com kinogo.co merdeka.com sahibinden.com avg.com blogfa.com slack.com tube8.com savefrom.net medium.com pinimg.com mystart.com yandex.ua oracle.com wsj.com citi.com doublepimp.com livedoor.biz baike.com eyny.com buzzlie.com nownews.com airbnb.com olx.pl blackboard.com nyaa.se reuters.com dmm.com cbssports.com friv.com naukri.com ebay.in ilyke.co libero.it mi.com bild.de expedia.com kohls.com taleo.net irs.gov thesportbible.com kinopoisk.ru evernote.com kwejk.pl spiegel.de livedoor.com google.fi giphy.com likes.com battle.net amazon.ca bhaskar.com ancestry.com engadget.com sharepoint.com hm.com hootsuite.com ameba.jp playstation.com google.sk tokopedia.com google.no scribd.com haber7.com adplxmd.com mobile.de realtor.com tistory.com shopify.com 17ok.com aparat.com allrecipes.com tabelog.com ci123.com infusionsoft.com streamcloud.eu nike.com youdao.com newegg.com fidelity.com google.dk billdesk.com box.com java.com lifehacker.com quikr.com conservativetribune.com hespress.com rbc.ru 4shared.com ebay.it cnblogs.com thefreedictionary.com gearbest.com instructure.com messenger.com discovercard.com free.fr gap.com douyutv.com repubblica.it cloudfront.net yallakora.com patch.com ck101.com asos.com stumbleupon.com exoclick.com elpais.com trulia.com theverge.com nbcnews.com freepik.com answers.com lifebuzz.com japanpost.jp surveymonkey.com npr.org list-manage.com gongchang.com nifty.com xunlei.com wunderground.com woot.com meetup.com blogimg.jp fiverr.com hatena.ne.jp ca.gov extratorrent.cc retailmenot.com marca.com shopclues.com rutracker.org nordstrom.com umblr.com costco.com ebay.com.au starsports.com bleacherreport.com chinaz.com sq.cn verizon.com seesaa.net southwest.com teepr.com kickstarter.com daikynguyenvn.com ebates.com airtel.in alicdn.com hotels.com elmogaz.com ask.fm flirchi.com rt.com so-net.ne.jp goal.com momoshop.com.tw kooora.com hdzog.com alexa.cn udemy.com liveinternet.ru azlyrics.com mlb.com nba.com wayfair.com sh.st xe.com gamefaqs.com 58.com blogspot.jp justdial.com xda-developers.com myway.com rottentomatoes.com jimdo.com souq.com subscene.com photobucket.com okezone.com drudgereport.com chip.de mercadolibre.com.ar zippyshare.com albawabhnews.com kijiji.ca agar.io acfun.tv blkget.com hatenablog.com independent.co.uk beeg.com trackingclick.net kayak.com 123cha.com oeeee.com leagueoflegends.com zomato.com nikkei.com squarespace.com cbsnews.com zoho.com lady8844.com lenovo.com google.lk zing.vn vid.me ampclicks.com politico.com yandex.com.tr sakura.ne.jp adp.com itmedia.co.jp yodobashi.com biglobe.ne.jp zulily.com houzz.com india.com overstock.com olx.in voc.com.cn uploaded.net southcn.com clipconverter.cc makemytrip.com youboy.com ero-advertising.com abcnews.go.com adcash.com y8.com dictionary.com list.tmall.com google.com.vn latimes.com telegram.org familydoctor.com.cn tsite.jp tutorialspoint.com upwork.com google.kz elmundo.es ensonhaber.com indianexpress.com wikiwiki.jp netteller.com nhk.or.jp people.com manoramaonline.com k618.cn egou.com timeanddate.com cookpad.com myfitnesspal.com thekitchn.com instructables.com fitbit.com usaa.com thewatchseries.to mixi.jp researchgate.net time.com dropbooks.tv ytimg.com lenta.ru jrj.com.cn eventbrite.com faithtap.com chinaso.com delta.com google.com.my slate.com emol.com openload.co asahi.com sabq.org intoday.in icc-cricket.com norton.com infoseek.co.jp olx.ua moneycontrol.com google.az disqus.com mcafee.com twoo.com 4dsply.com custhelp.com google.bg google.com.kw techcrunch.com subito.it glassdoor.com 104.com.tw alwafd.org huaban.com ouo.io urbandictionary.com gismeteo.ru nikkeibp.co.jp clien.net ibm.com stockstar.com www.gov.uk gameforge.com prpops.com spaceshipads.com mydala.com foodnetwork.com quizlet.com ero-video.net aa.com google.by microsoftstore.com asana.com kissanime.to constantcontact.com gamersky.com pof.com shaparak.ir tmz.com elwatannews.com mynavi.jp swagbucks.com pch.com fanpage.gr asus.com usbank.com bhphotovideo.com sciencedirect.com atwiki.jp change.org buzzfil.net livescore.com kdnet.net academia.edu yadi.sk gigazine.net interia.pl yaolan.com issuu.com sears.com google.rs neobux.com okcupid.com zone-telechargement.com aliyun.com corriere.it gamepedia.com investing.com bidvertiser.com reverso.net nypost.com jcpenney.com gmarket.co.kr wetransfer.com rightmove.co.uk weblio.jp wattpad.com mit.edu ticketmaster.com gyazo.com prezi.com slimspots.com agoda.com 4399.com zhaopin.com wp.com filehippo.com meaww.com eastmoney.com ppomppu.co.kr 6pm.com bs.to blogspot.mx staples.com mackolik.com google.co.nz drom.ru fivethirtyeight.com worldlifestyle.com yandex.kz cisco.com vk.me superuser.com gazetaexpress.com 126.com webex.com google.com.bd abplive.in gawker.com mirror.co.uk blogspot.com.eg coursera.org chron.com priceline.com php.net elfagr.org cnbc.com atlassian.net biobiochile.cl google.com.do seasonvar.ru howtogeek.com abril.com.br zappos.com vnexpress.net e-hentai.org united.com bomb01.com pcmag.com bodybuilding.com 123rf.com suning.com venturead.com yandex.by zara.com exblog.jp absoluteclickscom.com vetogate.com sozcu.com.tr shareasale.com weather.gov duckduckgo.com gutefrage.net audible.com popsugar.com nydailynews.com all2lnk.com bankmellat.ir tim.it carview.co.jp ebay.fr mapquest.com bt.com t-mobile.com ncaa.com indianrail.gov.in sky.com geocities.jp hilton.com inspsearch.com clickadu.com xbox.com lun.com inquirer.net hotnewhiphop.com gamespot.com behance.net anitube.se sfr.fr commentcamarche.net westernjournalism.com marriott.com google.hr mobfactory.info olx.com.br redfin.com otto.de mayoclinic.org yomiuri.co.jp himado.in googleadservices.com milanuncios.com appledaily.com.tw dream.co.id line.me getpocket.com cdiscount.com pchome.com.tw sankei.com syosetu.com douyu.com google.lt ew.com merriam-webster.com thedailybeast.com google.com.ec ria.ru mercadolibre.com.mx kotaku.com android.com wired.com duba.com youjizz.com wav.tv almasryalyoum.com rakuten.ne.jp wiktionary.org lazada.co.id 4chan.org mint.com ted.com gamer.com.tw panasonic.jp codecanyon.net thehindu.com whitepages.com cbs.com cpasbien.cm babycenter.com 2345.com 51sole.com investopedia.com wish.com goo.gl kuronekoyamato.co.jp 51job.com europa.eu servingclks.com mydomainadvisor.com as.com fatosdesconhecidos.com.br 11st.co.kr ly.com farsnews.com gmanetwork.com misrjournal.com 360doc.com informer.com intel.com legacy.com livestrong.com creditkarma.com jin115.com walgreens.com mobile01.com match.com 4pda.ru ccm.net eonline.com hostgator.com aweber.com axisbank.co.in emgn.com bookmyshow.com springer.com dianping.com qingdaonews.com primewire.ag donga.com excite.co.jp internethaber.com 3dmgame.com marktplaats.nl indiamart.com sfgate.com pantip.com backpage.com yellowpages.com nhl.com etao.com qvc.com lapatilla.com fanli.com ampxchange.com videomega.tv cocolog-nifty.com marketwatch.com auto.ru state.gov tomshardware.com novinky.cz lemonde.fr mbc.net pnc.com telegram.me nairaland.com ecnavi.jp ultimate-guitar.com focus.de hepsiburada.com poringa.net oomall.com mercadolibre.com.ve rapidgator.net voyeurhit.com windows.com credit-agricole.fr rarbg.to pogo.com homepage-web.com theatlantic.com 21cn.com le.com duolingo.com acunn.com vodlocker.com cracked.com fandango.com tripadvisor.co.uk xmediaserve.com chouftv.ma thisav.com realclearpolitics.com gazeta.pl lequipe.fr altervista.org hh.ru buy.tmall.com mega.co.nz ryanair.com mihanblog.com folha.uol.com.br caixa.gov.br dailypakistan.com.pk workercn.cn ed.gov dmv.org yjc.ir garmin.com n11.com usnews.com pole-emploi.fr ukr.net);
path="./output/";

firefox(){
  echo "###############################"
  echo "Open new Firefox window";
  open -a "Firefox"; # Open Firefox
  sleep 4; # Wait for browser to load
  echo "Get window ID for screenshot";
  gcwindow=$(./GetWindowID "Firefox" "Mozilla Firefox Start Page"); # Window ID is needed for screenshot, current ID depends on what your start page is set to
  echo $gcwindow;
  sleep 1; # Not sure this pause is needed anymore
  echo "Opening Site #"$i;
  echo $site;
  address=$h$site;
  open -a "Firefox" $address; # Open the address in Firefox
  echo "Wait for page load..";
  # Screencapture has a timer built in, 40 seconds in this case, adjust this and path as required
  # If testing pages other than domain root change $site to something else like $i for example
  screencapture -t png -T 1 -o -l $gcwindow -x  $path'firefox'/$site.png;
  echo "Captured screenshot"
  echo "Close browser window"
  pkill -f "Firefox"; # Kill firefox
  sleep 2; # Give the browser a couple seconds to close
  echo "###############################"
}

chrome(){
  echo "###############################"
  echo "Open new Chrome window";
  open -a "Google Chrome"; # Open Chrome
  sleep 4; # Wait for browser to load
  echo "Get window ID for screenshot";
  gcwindow=$(./GetWindowID "Google Chrome" "New Tab"); # Window ID is needed for screenshot, current ID depends on what your start page is set to
  echo $gcwindow;
  sleep 1; # Not sure this pause is needed anymore
  echo "Opening Site #:"$i;
  echo $site;
  address=$h$site;
  open -a "Google Chrome" $address; # Open the address in Chrome
  echo "Wait for page load..";
  # Screencapture has a timer built in, 40 seconds in this case, adjust this and path as required
  # If testing pages other than domain root change $site to something else like $i for example
  screencapture -t png -T 1 -o -l $gcwindow -x $path'chrome'/$site.png;
  echo "Captured screenshot";
  echo "Close browser window";
  pkill -a -i "Google Chrome"; # Kill Chrome
  sleep 2; # Give the browser a couple seconds to close
  echo "###############################"
}

for i in "${!list[@]}"; do
  site="${list[$i]}";
  echo "#########################################"
  echo "Starting site: " $site;
  firefox;
  chrome;
  node './index.js' $path'firefox/' $path'chrome/' $path $site &
  echo "#########################################"
done
