SET @t4=0;
SELECT (@t4:=configuration_group_id) as t4 
FROM configuration_group
WHERE configuration_group_title= 'Google Analytics Configuration';
DELETE FROM configuration WHERE configuration_group_id = @t4 AND configuration_group_id != 0;
DELETE FROM configuration_group WHERE configuration_group_id = @t4 AND configuration_group_id != 0;

INSERT INTO configuration_group VALUES (NULL, 'Google Analytics Configuration', 'Set Google Analytics Options', '1', '1');
UPDATE configuration_group SET sort_order = last_insert_id() WHERE configuration_group_id = last_insert_id();

SET @t4=0;
SELECT (@t4:=configuration_group_id) as t4 
FROM configuration_group
WHERE configuration_group_title= 'Google Analytics Configuration';

#INSERT INTO configuration VALUES ( NULL, 'Use Older "urchin.js" Tracking Code', 'GOOGLE_URCHINTRACKING_ACTIVE', 'No', 'This enables you to select which type of tracking code to use (either the older "urchin.js" version or the newer "ga.js" version. By default the system now uses the newer "ga.js" code.<br><br><span style="color:#ff0000;font-weight:bold;">Important Note:</span> There are hundreds of reports across the Internet of ecommerce tracking not being exactly correct when using the new "ga.js" tracking code Google released.<br><br>It <strong>has been confirmed</strong> by Google that the problem is on their end. They are working on the issue and a fix is supposed to be out for the new "ga.js" code near the first week in April 2008.<br><br>Until then, if you want to get more accurate ecommerce tracking results, use the older "urchin.js" tracking code. To revert back tothe older urchin.js code, set this opotion to "Yes" temporarily (meaning you will actually be using the older "urchin.js" tracking code). When Google issues the fix you can then easily switch back to the new "ga.js" tracking code by setting this option to "No".<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Do you want to use the older "urchin.js" tracking code?</b><br>', @t4, 5, NOW(), NOW(), NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO configuration VALUES (NULL, 'Analytics Account', 'GOOGLE_ANALYTICS_UACCT', 'UA-XXXXXX-X', 'This number is the unique id you were given by Google when you registered for your Google Analytics account.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Enter your Google Analytics account number (starting with the "UA-") in the space provided below.</b><br>', @t4, 1, NOW(), NOW(), NULL, NULL);
INSERT INTO configuration VALUES (NULL, 'Target Address', 'GOOGLE_ANALYTICS_TARGET', 'customers', 'This element is used in conjunction with Google E-Commerce Tracking. It indicates how you want your "transactions" to be identified in your Analytics reports.<br><br>Addresses consist of City,State, and Country.<br><br>This information can help you determine locality of orders placed, shipped to, or billed to.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Which address type do you want to use for recording transaction information?</b><br>', @t4, 2, NOW(), NOW(), NULL, 'zen_cfg_select_option(array(''customers'', ''delivery'', ''billing''),');
INSERT INTO configuration VALUES (NULL, 'Affiliation', 'GOOGLE_ANALYTICS_AFFILIATION', '', 'This <b>optional</b> tracking element is used in conjunction with Google E-Commerce Tracking.<br><br>The Affiliation tag describes the affiliating store or processing site.<br><br>It can be used if you have multiple stores (or web sites) in various locations and is used to track from which location a particular sale originated.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>If you have one, enter your optional partner or store affiliation in the space provided below.</b><br>', @t4, 3, NOW(), NOW(), NULL, NULL);
INSERT INTO configuration VALUES (NULL, 'Use sku/code', 'GOOGLE_ANALYTICS_SKUCODE', 'products_id', 'This tracking element is used in conjunction with Google Analytics E-Commerce tracking.<br><br>It enables you to track which products perform better than others using either the Product ID, or the Product Model Number as a unique identifier.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Indicate which identifier you want to use to track product performance by selecting one of the options below.</b>', @t4, 4, now(), now(), NULL, 'zen_cfg_select_option(array(''products_id'', ''products_model''),');
INSERT INTO configuration VALUES (NULL, 'Activate Adwords Conversion Tracking', 'GOOGLE_CONVERSION_ACTIVE', 'No', 'This element enables you turn on or off Google Conversion Tracking.<br><br><span style="color:#ff0000;font-weight:bold;">Please Note:</span> Conversion tracking is used to track the effectiveness of Google AdWords paid search campaigns. If you are <b>not</b> running any paid search campaigns, then you should leave this set to "No".<br><br>If you are running Google AdWords (paid search) campaigns, then turning this on will place the proper conversion tracking code on your checkout success page and enable you to start tracking conversions.<br><br>Turning this on <b>requires you</b> to enter your unique Google Conversion Tracking ID in place of the "XXXXXXXXXXX" number shown in the next section.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Do you want to turn on Google AdWords Conversion Tracking?</b><br>', @t4, 5, NOW(), NOW(), NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO configuration VALUES (NULL, 'Google AdWords Conversion Tracking Number', 'GOOGLE_CONVERSION_IDNUM', 'XXXXXXXXXX', 'If you activated Conversion Tracking in the previous section, then you <b>must</b> enter your unique Google Conversion Tracking ID in place of the "XXXXXXXXXXX" shown in the space provided below.<br><br>If you have activated Conversion Tracking, and do not enter your number below, tracking will not work.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Enter your AdWords Conversion Tracking ID Number below.</b>', @t4, 6, NOW(), NOW(), NULL, NULL);
INSERT INTO configuration VALUES (NULL, 'Google AdWords Language', 'GOOGLE_CONVERSION_LANG', 'en_US', 'Select the language to be used. The default is "English US".<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Select your language below</b><br>', @t4, 7, NOW(), NOW(), NULL, 'zen_cfg_pull_down_google_languages(');
INSERT INTO configuration VALUES (NULL, 'Google Tracking Code Type To Use', 'GOOGLE_ANALYTICS_TRACKING_TYPE', 'ga.js', 'Select the type of tracking you wish to use. The default is the "ga.js" style. You have the ability to change this to either the older Urchin code or the newest Asycronous tracking code. Visit the <a href="http://code.google.com/apis/analytics/docs/tracking/home.html" target="_blank">Google Analytics Website</a> for more information on each.<br><br>For more hints and tips on how to use Google Analytics to increase sales from your store, visit <b><a href="http://www.zencartoptimization.com" target="blank">ZenCartOptimization.com</a></b><br><br><b>Select your tracking preference below</b><br>', @t4, 8, NOW(), NOW(), NULL, 'zen_cfg_select_option(array(''ga.js'', ''Urchin'', ''Asynchronous''), ');
# INSERT INTO configuration VALUES (NULL, 'Add Custom Tracking Before Main Analytics Code?', 'GOOGLE_ANALYTICS_CUSTOM_BEFORE', 'Disable', 'Do you want to include any custom tracking before the main tracking segment?', @t4, 9, now(), now(), NULL, 'zen_cfg_select_option(array(''Enable'', ''Disable''),'), (NULL, 'Google Custom Code - Before', 'GOOGLE_ANALYTICS_BEFORE_CODE', 'Please copy and paste or add your custom tracking here.', 'Insert custom tracking code', @t4, 10, now(), now(), NULL, 'zen_cfg_textarea(');
INSERT INTO configuration VALUES (NULL, 'Add Custom Tracking After Main Analytics Code?', 'GOOGLE_ANALYTICS_CUSTOM_AFTER', 'Disable', 'Do you want to include any custom tracking after the main tracking segment? This can be used to customize the tracking code to your individual needs. Adding tracking objects according to the details on the <a href="http://code.google.com/apis/analytics/docs/tracking/gaTrackingCustomVariables.html" target="_blank">Google Analytics site<a/>. ', @t4, 11, now(), now(), NULL, 'zen_cfg_select_option(array(''Enable'', ''Disable''),'), (NULL, 'Google Custom Code - After', 'GOOGLE_ANALYTICS_AFTER_CODE', 'Please copy and paste or add your custom tracking here.', 'Insert custom tracking code', @t4, 12, now(), now(), NULL, 'zen_cfg_textarea(');


#################################################################
# Add Table for Language support with Google Conversion Tracking.
#################################################################
#
# Table structure for table 'google_analytics_languages'
#

DROP TABLE IF EXISTS google_analytics_languages;
CREATE TABLE google_analytics_languages (
  languages_id int(11) NOT NULL auto_increment,
  name varchar(50) NOT NULL default '',
  code char(10) NOT NULL default '',
  sort_order int(3) default NULL,
  PRIMARY KEY  (languages_id),
  KEY idx_languages_name_zen (name)
);

# --------------------------------------------------------

#
# Add data to new google language table 
#

INSERT INTO google_analytics_languages VALUES (NULL,'Chinese (simplified) - ???','zh_CN',1);
INSERT INTO google_analytics_languages VALUES (NULL,'Chinese (traditional) - ???','zh_TW',2);
INSERT INTO google_analytics_languages VALUES (NULL,'Danish - Dansk','da',3);
INSERT INTO google_analytics_languages VALUES (NULL,'Dutch - Nederlands','nl',4);
INSERT INTO google_analytics_languages VALUES (NULL,'English (Australia)','en_AU',5);
INSERT INTO google_analytics_languages VALUES (NULL,'English (UK))','en_GB',6);
INSERT INTO google_analytics_languages VALUES (NULL,'English (US)','en_US',7);
INSERT INTO google_analytics_languages VALUES (NULL,'Finnish - suomi','fi',8);
INSERT INTO google_analytics_languages VALUES (NULL,'French - Français','fr',9);
INSERT INTO google_analytics_languages VALUES (NULL,'German - Deutsch','de',10);
INSERT INTO google_analytics_languages VALUES (NULL,'Hebrew - ???','iw',11);
INSERT INTO google_analytics_languages VALUES (NULL,'Italian - Italiano','it',12);
INSERT INTO google_analytics_languages VALUES (NULL,'Japanese - ???','ja',13);
INSERT INTO google_analytics_languages VALUES (NULL,'Korean - ???','ko',14);
INSERT INTO google_analytics_languages VALUES (NULL,'Norwegian - Norsk','no',15);
INSERT INTO google_analytics_languages VALUES (NULL,'Polish - polski','pl',16);
INSERT INTO google_analytics_languages VALUES (NULL,'Portuguese (Brazil) - Português (Brasil)','pt_BR',17);
INSERT INTO google_analytics_languages VALUES (NULL,'Portuguese (Portugal) - Português (Portugal)','pt_PT',18);
INSERT INTO google_analytics_languages VALUES (NULL,'Russian - ???????','ru',19);
INSERT INTO google_analytics_languages VALUES (NULL,'Spanish - Español','es',20);
INSERT INTO google_analytics_languages VALUES (NULL,'Swedish - Svenska','sv',21);
INSERT INTO google_analytics_languages VALUES (NULL,'Turkish - Türkçe','tr',22);


# --------------------------------------------------------
DELETE FROM admin_pages WHERE page_key='configGoogle_Analytics';
INSERT INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order) VALUES ('configGoogle_Analytics','BOX_CONFIGURATION_GOOGLE_ANALYTICS','FILENAME_CONFIGURATION',CONCAT('gID=',@t4), 'configuration', 'Y', @t4);
