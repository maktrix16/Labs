<?php
// Text
$_['text_title']           = 'Klarna Account';
$_['text_pay_month']       = 'Klarna Account - Pay from %s/month <span id="klarna_account_toc_link"></span><script text="javascript">$.getScript(\'http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js\', function(){ var terms = new Klarna.Terms.Account({ el: \'klarna_account_toc_link\', eid: \'%s\',   country: \'%s\'});})</script>';
$_['text_information']     = 'Klarna Account Information';
$_['text_additional']      = 'Klarna Account requires some additional information before they can proccess your order.';
$_['text_wait']           = '請稍等！';
$_['text_male']           = '男性';
$_['text_female']         = '女性';
$_['text_year']            = 'Year';
$_['text_month']           = 'Month';
$_['text_day']             = 'Day';
$_['text_payment_option']  = '付款方式';
$_['text_single_payment']  = '單次付款';
$_['text_monthly_payment'] = '%s - %s per month';
$_['text_comment']         = "Klarna's Invoice ID: %s\n%s/%s: %.4f";

// Entry
$_['entry_gender']         = '性別︰';
$_['entry_pno']            = 'Personal Number:<br /><span class="help">請在這里輸入你的社會安全號碼。</span>';
$_['entry_dob']            = '出生日期︰';
$_['entry_phone_no']       = '電話號碼︰<br /><span class="help">請輸入您的手機號碼。</span>';
$_['entry_street']         = '街道︰<br /><span class="help">Please note that delivery can only take place to the registered address when paying with Klarna.</span>';
$_['entry_house_no']       = '門牌號︰<br /><span class="help">請輸入您的門牌號碼。</span>';
$_['entry_house_ext']      = '房間號︰<br /><span class="help">Please submit your house extension here. E.g. A, B, C, Red, Blue ect.</span>';
$_['entry_company']        = '公司註冊編號︰<br /><span class="help">請輸入您的公司的註冊號碼</span>';

// Error
$_['error_deu_terms']     = '您必須同意Klarna\的隱私政策（Datenschutz）';
$_['error_address_match'] = '如果你想用Klarna發票，帳單和運送地址必須匹配';
$_['error_network']       = '連接到Klarna時發生錯誤。請稍後再試。';
?>
