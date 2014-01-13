<?php
// Text
$_['text_title']          = 'Klarna Invoice';
$_['text_fee']            = 'Klarna Invoice - Pay within 14 days <span id="klarna_invoice_toc_link"></span> (+%s)<script text="javascript\">$.getScript(\'http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js\', function(){ var terms = new Klarna.Terms.Invoice({ el: \'klarna_invoice_toc_link\', eid: \'%s\', country: \'%s\', charge: %s});})</script>';
$_['text_no_fee']         = 'Klarna Invoice - Pay within 14 days <span id="klarna_invoice_toc_link"></span><script text="javascript">$.getScript(\'http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js\', function(){ var terms = new Klarna.Terms.Invoice({ el: \'klarna_invoice_toc_link\', eid: \'%s\', country: \'%s\'});})</script>';
$_['text_additional']     = 'Klarna Invoice requires some additional information before they can proccess your order.';
$_['text_wait']           = '请稍等！';
$_['text_male']           = '男性';
$_['text_female']         = '女性';
$_['text_year']           = 'Year';
$_['text_month']          = 'Month';
$_['text_day']            = 'Day';
$_['text_comment']        = 'Klarna\'s Invoice ID: %s\n%s/%s: %.4f';

// Entry
$_['entry_gender']         = '性别：';
$_['entry_pno']            = 'Personal Number:<br /><span class="help">请在这里输入你的社会安全号码。</span>';
$_['entry_dob']            = '出生日期：';
$_['entry_phone_no']       = '电话号码：<br /><span class="help">请输入您的手机号码。</span>';
$_['entry_street']         = '街道：<br /><span class="help">Please note that delivery can only take place to the registered address when paying with Klarna.</span>';
$_['entry_house_no']       = '门牌号：<br /><span class="help">请输入您的门牌号码。</span>';
$_['entry_house_ext']      = '房间号：<br /><span class="help">Please submit your house extension here. E.g. A, B, C, Red, Blue ect.</span>';
$_['entry_company']        = '公司注册编号：<br /><span class="help">请输入您的公司的注册号码</span>';

// Error
$_['error_deu_terms']     = '您必须同意Klarna\的隐私政策（Datenschutz）';
$_['error_address_match'] = '如果你想用Klarna发票，帐单和运送地址必须匹配';
$_['error_network']       = '连接到Klarna时发生错误。请稍后再试。';
?>