<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2003 The zen-cart developers                           |
// |                                                                      |
// | http://www.zen-cart.com/index.php                                    |
// |                                                                      |
// | Portions Copyright (c) 2003 osCommerce                               |
// +----------------------------------------------------------------------+
// | This source file is subject to version 2.0 of the GPL license,       |
// | that is bundled with this package in the file LICENSE, and is        |
// | available through the world-wide-web at the following url:           |
// | http://www.zen-cart.com/license/2_0.txt.                             |
// | If you did not receive a copy of the zen-cart license and are unable |
// | to obtain it through the world-wide-web, please send a note to       |
// | license@zen-cart.com so we can mail you a copy immediately.          |
// +----------------------------------------------------------------------+
// $Id: PAYBYPHONE.php 1970 2011-01-29 01:36:21Z frank18 $
//


  define('MODULE_PAYMENT_PAYBYPHONE_TEXT_EMAIL_FOOTER', 
  "Please call our office or we will call you.\n\n" .
  "\nPhone No.:  " . MODULE_PAYMENT_PAYBYPHONE_PHONENUM .
  "\n\nWe will ship immediately once we receive payment.\n");

  define('MODULE_PAYMENT_PAYBYPHONE_TEXT_TITLE', 'Pay by Phone(Preferred Method)');
   define('MODULE_PAYMENT_PAYBYPHONE_TEXT_DESCRIPTION', 
  '<br />Please call our office or we will call you.<br />' . 
  "\nPhone No.:  " . MODULE_PAYMENT_PAYBYPHONE_PHONENUM .
  '<p>We will ship immediately once we receive payment.</p>');
?>