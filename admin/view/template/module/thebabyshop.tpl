<?php echo $header; ?>

<style type="text/css">
.color {border:1px solid #CCCCCC;}
.thebabyshop_help {color:#999999;font-size:12px;padding-left:5px;}
span.thebabyshop_help_tip {margin-left:10px;padding:2px 6px;background-color:#73B80A;border-radius:15px;}
span.thebabyshop_help_tip a {color:#FFFFFF;font-size:12px;font-weight:bold;text-decoration:none;}
.thebabyshop_sep {background-color:#F7F7F7;}
.ptn {position:relative;width:40px;height:40px;float:left;margin-right:5px;margin-bottom:5px;}
.ptn_nr {position:absolute;bottom:0px;right:3px;}
table.form {margin-bottom:0;}
table.form div {padding-top:5px;text-align:left}
table.form b {color:#003A88;font-size:13px}
table.form > tbody > tr > td:first-child {text-align:right}
a.link {text-decoration:none; margin-left:15px; margin-right:15px;}
.htabs {margin-top:15px;}
</style>                        
<?php 

if(empty($thebabyshop_body_background_color)) $thebabyshop_body_background_color ="FFFFFF";
if(empty($thebabyshop_headings_color)) $thebabyshop_headings_color ="66BCDA";
if(empty($thebabyshop_body_text_color)) $thebabyshop_body_text_color ="545454";
if(empty($thebabyshop_light_text_color)) $thebabyshop_light_text_color ="A3A3A3";
if(empty($thebabyshop_other_links_color)) $thebabyshop_other_links_color ="66BCDA";
if(empty($thebabyshop_links_hover_color)) $thebabyshop_links_hover_color ="EE3963";
if(empty($thebabyshop_main_column_background_color)) $thebabyshop_main_column_background_color ="F8F8F8";
if(empty($thebabyshop_main_column_border_color)) $thebabyshop_main_column_border_color ="CCCCCC";
if(empty($thebabyshop_left_right_column_background_color)) $thebabyshop_left_right_column_background_color ="FFFFFF";
if(empty($thebabyshop_left_right_column_box_background_color)) $thebabyshop_left_right_column_box_background_color ="FFFFFF";
if(empty($thebabyshop_left_right_column_head_background_color)) $thebabyshop_left_right_column_head_background_color ="66BCDA";
if(empty($thebabyshop_left_right_column_head_title_color)) $thebabyshop_left_right_column_head_title_color ="FFFFFF";
if(empty($thebabyshop_left_right_column_separator_color)) $thebabyshop_left_right_column_separator_color ="FFFFFF";
if(empty($thebabyshop_content_column_background_color)) $thebabyshop_content_column_background_color ="FFFFFF";
if(empty($thebabyshop_content_column_separator_color)) $thebabyshop_content_column_separator_color ="F6F6F6";

if(empty($thebabyshop_price_color)) $thebabyshop_price_color ="66BCDA";
if(empty($thebabyshop_price_old_color)) $thebabyshop_price_old_color ="A3A3A3";
if(empty($thebabyshop_price_new_color)) $thebabyshop_price_new_color ="EE3963";
if(empty($thebabyshop_price_tax_color)) $thebabyshop_price_tax_color ="A3A3A3";

if(empty($thebabyshop_button_background_color)) $thebabyshop_button_background_color ="66BCDA";
if(empty($thebabyshop_button_border_top_color)) $thebabyshop_button_border_top_color ="66BCDA";
if(empty($thebabyshop_button_border_bottom_color)) $thebabyshop_button_border_bottom_color ="66BCDA";
if(empty($thebabyshop_button_background_hover_color)) $thebabyshop_button_background_hover_color ="62B4D1";
if(empty($thebabyshop_button_border_top_hover_color)) $thebabyshop_button_border_top_hover_color ="559CB5";
if(empty($thebabyshop_button_border_bottom_hover_color)) $thebabyshop_button_border_bottom_hover_color ="5CA9C4";
if(empty($thebabyshop_button_text_color)) $thebabyshop_button_text_color ="FFFFFF";
if(empty($thebabyshop_button_exclusive_background_color)) $thebabyshop_button_exclusive_background_color ="EE3963";
if(empty($thebabyshop_button_exclusive_border_top_color)) $thebabyshop_button_exclusive_border_top_color ="EE3963";
if(empty($thebabyshop_button_exclusive_border_bottom_color)) $thebabyshop_button_exclusive_border_bottom_color ="EE3963";
if(empty($thebabyshop_button_exclusive_background_hover_color)) $thebabyshop_button_exclusive_background_hover_color ="E0365D";
if(empty($thebabyshop_button_exclusive_border_top_hover_color)) $thebabyshop_button_exclusive_border_top_hover_color ="A12744";
if(empty($thebabyshop_button_exclusive_border_bottom_hover_color)) $thebabyshop_button_exclusive_border_bottom_hover_color ="BE2E50";
if(empty($thebabyshop_button_exclusive_text_color)) $thebabyshop_button_exclusive_text_color ="FFFFFF";

if(empty($thebabyshop_top_area_background_color)) $thebabyshop_top_area_background_color ="F8F8F8";
if(empty($thebabyshop_search_bar_style_color)) $thebabyshop_search_bar_style_color ="62B5DD";
if(empty($thebabyshop_search_bar_border_color)) $thebabyshop_search_bar_border_color ="DFDFDF";
if(empty($thebabyshop_top_area_ls_link_color)) $thebabyshop_top_area_ls_link_color ="545454";
if(empty($thebabyshop_top_area_ls_link_color_hover)) $thebabyshop_top_area_ls_link_color_hover ="EE3963";
if(empty($thebabyshop_top_area_ls_link_separator_color)) $thebabyshop_top_area_ls_link_separator_color ="E3E3E3";
if(empty($thebabyshop_top_area_cart_link_color)) $thebabyshop_top_area_cart_link_color ="66BCDA";
if(empty($thebabyshop_top_area_cart_link_color_hover)) $thebabyshop_top_area_cart_link_color_hover ="EE3963";
if(empty($thebabyshop_top_area_lc_text_color)) $thebabyshop_top_area_lc_text_color ="545454";
if(empty($thebabyshop_top_area_dropdown_background_color)) $thebabyshop_top_area_dropdown_background_color ="FFFFFF";
if(empty($thebabyshop_top_area_dropdown_top_bar_color)) $thebabyshop_top_area_dropdown_top_bar_color ="333333";

if(empty($thebabyshop_mm_background_color)) $thebabyshop_mm_background_color ="EE3963";
if(empty($thebabyshop_mm_separator_color)) $thebabyshop_mm_separator_color ="C30B36";
if(empty($thebabyshop_mm_border_top_color)) $thebabyshop_mm_border_top_color ="C30B36";
if(empty($thebabyshop_mm_border_bottom_color)) $thebabyshop_mm_border_bottom_color ="C30B36";

if(empty($thebabyshop_mm1_background_color)) $thebabyshop_mm1_background_color ="333333";
if(empty($thebabyshop_mm1_background_hover_color)) $thebabyshop_mm1_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm1_link_color)) $thebabyshop_mm1_link_color ="FFFFFF";
if(empty($thebabyshop_mm1_link_hover_color)) $thebabyshop_mm1_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm2_background_color)) $thebabyshop_mm2_background_color ="66BCDA";
if(empty($thebabyshop_mm2_background_hover_color)) $thebabyshop_mm2_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm2_link_color)) $thebabyshop_mm2_link_color ="FFFFFF";
if(empty($thebabyshop_mm2_link_hover_color)) $thebabyshop_mm2_link_hover_color ="FFFFFF";
if(empty($thebabyshop_mm2_main_category_link_color)) $thebabyshop_mm2_main_category_link_color ="545454";

if(empty($thebabyshop_mm3_background_color)) $thebabyshop_mm3_background_color ="EE3963";
if(empty($thebabyshop_mm3_background_hover_color)) $thebabyshop_mm3_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm3_link_color)) $thebabyshop_mm3_link_color ="FFFFFF";
if(empty($thebabyshop_mm3_link_hover_color)) $thebabyshop_mm3_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm4_background_color)) $thebabyshop_mm4_background_color ="EE3963";
if(empty($thebabyshop_mm4_background_hover_color)) $thebabyshop_mm4_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm4_link_color)) $thebabyshop_mm4_link_color ="FFFFFF";
if(empty($thebabyshop_mm4_link_hover_color)) $thebabyshop_mm4_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm5_background_color)) $thebabyshop_mm5_background_color ="EE3963";
if(empty($thebabyshop_mm5_background_hover_color)) $thebabyshop_mm5_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm5_link_color)) $thebabyshop_mm5_link_color ="FFFFFF";
if(empty($thebabyshop_mm5_link_hover_color)) $thebabyshop_mm5_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm6_background_color)) $thebabyshop_mm6_background_color ="EE3963";
if(empty($thebabyshop_mm6_background_hover_color)) $thebabyshop_mm6_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm6_link_color)) $thebabyshop_mm6_link_color ="FFFFFF";
if(empty($thebabyshop_mm6_link_hover_color)) $thebabyshop_mm6_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm7_background_color)) $thebabyshop_mm7_background_color ="EE3963";
if(empty($thebabyshop_mm7_background_hover_color)) $thebabyshop_mm7_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm7_link_color)) $thebabyshop_mm7_link_color ="FFFFFF";
if(empty($thebabyshop_mm7_link_hover_color)) $thebabyshop_mm7_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm8_background_color)) $thebabyshop_mm8_background_color ="EE3963";
if(empty($thebabyshop_mm8_background_hover_color)) $thebabyshop_mm8_background_hover_color ="66BCDA";
if(empty($thebabyshop_mm8_link_color)) $thebabyshop_mm8_link_color ="FFFFFF";
if(empty($thebabyshop_mm8_link_hover_color)) $thebabyshop_mm8_link_hover_color ="FFFFFF";

if(empty($thebabyshop_mm_sub_background_color)) $thebabyshop_mm_sub_background_color ="FFFFFF";
if(empty($thebabyshop_mm_sub_background_hover_color)) $thebabyshop_mm_sub_background_hover_color ="F8F8F8";
if(empty($thebabyshop_mm_sub_titles_background_color)) $thebabyshop_mm_sub_titles_background_color ="F8F8F8";
if(empty($thebabyshop_mm_sub_text_color)) $thebabyshop_mm_sub_text_color ="545454";
if(empty($thebabyshop_mm_sub_link_color)) $thebabyshop_mm_sub_link_color ="000000";
if(empty($thebabyshop_mm_sub_link_hover_color)) $thebabyshop_mm_sub_link_hover_color ="EE3963";
if(empty($thebabyshop_mm_sub_separator_color)) $thebabyshop_mm_sub_separator_color ="F3F3F3";

if(empty($thebabyshop_mid_prod_slider_background_color)) $thebabyshop_mid_prod_slider_background_color ="FFFFFF";
if(empty($thebabyshop_mid_prod_slider_name_color)) $thebabyshop_mid_prod_slider_name_color ="545454";
if(empty($thebabyshop_mid_prod_slider_desc_color)) $thebabyshop_mid_prod_slider_desc_color ="A3A3A3";
if(empty($thebabyshop_mid_prod_slider_price_color)) $thebabyshop_mid_prod_slider_price_color ="EE3963";
if(empty($thebabyshop_mid_prod_slider_links_color_hover)) $thebabyshop_mid_prod_slider_links_color_hover ="EE3963";
if(empty($thebabyshop_mid_prod_slider_bottom_bar_background_color)) $thebabyshop_mid_prod_slider_bottom_bar_background_color ="F3F3F3";
if(empty($thebabyshop_mid_prod_slider_bottom_bar_background_color_hover)) $thebabyshop_mid_prod_slider_bottom_bar_background_color_hover ="F9F9F9";
if(empty($thebabyshop_mid_prod_slider_bottom_bar_background_color_sm)) $thebabyshop_mid_prod_slider_bottom_bar_background_color_sm ="66BCDA";
if(empty($thebabyshop_mid_prod_slider_bottom_bar_link_color)) $thebabyshop_mid_prod_slider_bottom_bar_link_color ="545454";

if(empty($thebabyshop_mid_prod_box_background_color)) $thebabyshop_mid_prod_box_background_color ="F7F7F7";
if(empty($thebabyshop_mid_prod_box_background_hover_color)) $thebabyshop_mid_prod_box_background_hover_color ="E9F0F4";
if(empty($thebabyshop_mid_prod_box_border_color)) $thebabyshop_mid_prod_box_border_color ="F7F7F7";
if(empty($thebabyshop_mid_prod_box_border_hover_color)) $thebabyshop_mid_prod_box_border_hover_color ="E9F0F4";
if(empty($thebabyshop_mid_prod_box_sale_icon_color)) $thebabyshop_mid_prod_box_sale_icon_color ="EE3963";

if(empty($thebabyshop_mid_prod_page_buy_section_background_color)) $thebabyshop_mid_prod_page_buy_section_background_color ="F3F3F3";
if(empty($thebabyshop_mid_prod_page_buy_section_separator_color)) $thebabyshop_mid_prod_page_buy_section_separator_color ="EDEDED";

if(empty($thebabyshop_mid_prod_page_tabs_background_color)) $thebabyshop_mid_prod_page_tabs_background_color ="F3F3F3";

if(empty($thebabyshop_f1_background_color)) $thebabyshop_f1_background_color ="1F1F1F";
if(empty($thebabyshop_f1_titles_color)) $thebabyshop_f1_titles_color ="66BCDA";
if(empty($thebabyshop_f1_titles_border_bottom_color)) $thebabyshop_f1_titles_border_bottom_color ="2E2E2E";
if(empty($thebabyshop_f1_text_color)) $thebabyshop_f1_text_color ="A3A3A3";
if(empty($thebabyshop_f1_link_color)) $thebabyshop_f1_link_color ="66BCDA";
if(empty($thebabyshop_f1_link_hover_color)) $thebabyshop_f1_link_hover_color ="FFFFFF";
if(empty($thebabyshop_f1_light_text_color)) $thebabyshop_f1_light_text_color ="616161";
if(empty($thebabyshop_f1_border_top_color)) $thebabyshop_f1_border_top_color ="000000";

if(empty($thebabyshop_f2_background_color)) $thebabyshop_f2_background_color ="191919";
if(empty($thebabyshop_f2_titles_color)) $thebabyshop_f2_titles_color ="66BCDA";
if(empty($thebabyshop_f2_titles_border_bottom_color)) $thebabyshop_f2_titles_border_bottom_color ="262626";
if(empty($thebabyshop_f2_link_color)) $thebabyshop_f2_link_color ="A3A3A3";
if(empty($thebabyshop_f2_link_hover_color)) $thebabyshop_f2_link_hover_color ="FFFFFF";
if(empty($thebabyshop_f2_border_top_color)) $thebabyshop_f2_border_top_color ="191919";

if(empty($thebabyshop_f4_background_color)) $thebabyshop_f4_background_color ="191919";
if(empty($thebabyshop_f4_text_color)) $thebabyshop_f4_text_color ="A3A3A3";
if(empty($thebabyshop_f4_link_color)) $thebabyshop_f4_link_color ="66BCDA";
if(empty($thebabyshop_f4_link_hover_color)) $thebabyshop_f4_link_hover_color ="FFFFFF";
if(empty($thebabyshop_f4_light_text_color)) $thebabyshop_f4_light_text_color ="545454";
if(empty($thebabyshop_f4_border_top_color)) $thebabyshop_f4_border_top_color ="1F1F1F";

if(empty($thebabyshop_f5_background_color)) $thebabyshop_f5_background_color ="191919";
if(empty($thebabyshop_f5_text_color)) $thebabyshop_f5_text_color ="545454";
if(empty($thebabyshop_f5_link_color)) $thebabyshop_f5_link_color ="66BCDA";
if(empty($thebabyshop_f5_link_hover_color)) $thebabyshop_f5_link_hover_color ="FFFFFF";
if(empty($thebabyshop_f5_border_top_color)) $thebabyshop_f5_border_top_color ="1F1F1F";

if(empty($thebabyshop_custom_box_background)) $thebabyshop_custom_box_background ="EE3963";

$bgp = array(
	''    => 'none',
	'1'   => '1',
	'2'   => '2',
	'3'   => '3',
	'4'   => '4',
	'5'   => '5',
	'6'   => '6',
	'7'   => '7',
	'8'   => '8',  
	'9'   => '9',
	'10'  => '10',
	'11'  => '11',
	'12'  => '12', 
	'13'  => '13',
	'14'  => '14',
	'15'  => '15',
	'16'  => '16',
	'17'  => '17',
	'18'  => '18',  
	'19'  => '19',
	'20'  => '20',
	'21'  => '21',
	'22'  => '22', 
	'23'  => '23',
	'24'  => '24',
	'25'  => '25',
	'26'  => '26',
	'27'  => '27',
	'28'  => '28',  
	'29'  => '29',
	'30'  => '30',
	'31'  => '31',
	'32'  => '32', 
	'33'  => '33',
	'34'  => '34',
	'35'  => '35',
	'36'  => '36',
	'37'  => '37',
	'38'  => '38',  
	'39'  => '39',
	'40'  => '40',
	'41'  => '41',
	'42'  => '42', 
	'43'  => '43',
	'44'  => '44',
	'45'  => '45',
	'46'  => '46',
	'47'  => '47',
	'48'  => '48',  
	'49'  => '49',  
	'50'  => '50',
	'51'  => '51',
	'52'  => '52', 
	'53'  => '53',
	'54'  => '54',
	'55'  => '55',
	'56'  => '56',
	'57'  => '57',
	'58'  => '58',  
	'59'  => '59',
	'60'  => '60',
	'61'  => '61',
	'62'  => '62', 
	'63'  => '63',
	'64'  => '64',
	'65'  => '65',
	'66'  => '66',
	'67'  => '67',
	'68'  => '68',  
	'69'  => '69',
	'70'  => '70',
	'71'  => '71',
	'72'  => '72', 
	'73'  => '73',
	'74'  => '74',
	'75'  => '75',                            
	'101' => '101',
    '102' => '102',
    '103' => '103',
    '104' => '104',
    '105' => '105',
    '106' => '106',
    '107' => '107',
    '108' => '108',
    '109' => '109',
    '110' => '110',
	'111' => '111',
    '112' => '112',
    '113' => '113',
    '114' => '114',
    '115' => '115',
    '116' => '116',
    '117' => '117',
    '118' => '118',
    '119' => '119',
    '120' => '120',
	'121' => '121',
    '122' => '122',
    '123' => '123',
    '124' => '124',
    '125' => '125',
    '126' => '126',
    '127' => '127',
    '128' => '128',
    '129' => '129',
    '130' => '130', 
	'131' => '131',
    '132' => '132',
    '133' => '133',
    '134' => '134',
    '135' => '135',
    '136' => '136',
    '137' => '137',
    '138' => '138',
    '139' => '139',
    '140' => '140',
	'141' => '141',
    '142' => '142',
    '143' => '143',
    '144' => '144',
    '145' => '145',
    '146' => '146',
    '147' => '147',
    '148' => '148',
    '149' => '149',
    '150' => '150', 
	'151' => '151',
    '152' => '152',
    '153' => '153',
    '154' => '154',
    '155' => '155',
    '156' => '156',
    '157' => '157',
    '158' => '158',
    '159' => '159',
    '160' => '160',
	'161' => '161',
    '162' => '162',
    '163' => '163',
    '164' => '164',
    '165' => '165',
    '166' => '166',
    '167' => '167',
    '168' => '168',
    '169' => '169',
    '170' => '170',
	'171' => '171',
    '172' => '172',
    '173' => '173',
    '174' => '174',
    '175' => '175',
    '176' => '176',
    '177' => '177',
    '178' => '178',
    '179' => '179',
    '180' => '180',  
	'181' => '181',
    '182' => '182',
    '183' => '183',
    '184' => '184',
    '185' => '185',
    '186' => '186',
    '187' => '187',
    '188' => '188',
    '189' => '189',
    '190' => '190',
	'191' => '191',
    '192' => '192',
    '193' => '193',
    '194' => '194',
    '195' => '195',
    '196' => '196',
    '197' => '197',
    '198' => '198',
    '199' => '199',
    '200' => '200',
	'201' => '201',
    '202' => '202',
    '203' => '203',
    '204' => '204',
    '205' => '205',
    '206' => '206',
    '207' => '207',
    '208' => '208',
    '209' => '209',
    '210' => '210',
	'211' => '211',
    '212' => '212',
    '213' => '213',
    '214' => '214',
    '215' => '215',
    '216' => '216',
    '217' => '217',
    '218' => '218',
    '219' => '219',
    '220' => '220',
	'221' => '221',
    '222' => '222',
    '223' => '223',
    '224' => '224',
    '225' => '225',
    '226' => '226',
    '227' => '227',
    '228' => '228',
    '229' => '229',
    '230' => '230', 
	'231' => '231',
    '232' => '232',
    '233' => '233',
    '234' => '234',
    '235' => '235',
    '236' => '236',
    '237' => '237',
    '238' => '238',
    '239' => '239',
    '240' => '240',
	'241' => '241',
    '242' => '242',
    '243' => '243',
    '244' => '244',
    '245' => '245',
    '246' => '246',
    '247' => '247',
    '248' => '248',
    '249' => '249',
    '250' => '250', 
	'251' => '251',
    '252' => '252',
    '253' => '253',
    '254' => '254',


    '255' => '255',
    '256' => '256',
    '257' => '257',
    '258' => '258',
    '259' => '259',
    '260' => '260',
	'261' => '261',
    '262' => '262',
    '263' => '263',
    '264' => '264',
    '265' => '265',
    '266' => '266',
    '267' => '267',
    '268' => '268',
    '269' => '269',
    '270' => '270',
	'271' => '271',
    '272' => '272',
    '273' => '273',
    '274' => '274',
    '275' => '275',
    '276' => '276',
    '277' => '277',
    '278' => '278',
    '279' => '279',
    '280' => '280',  
	'281' => '281',
    '282' => '282',
    '283' => '283',
    '284' => '284',
    '285' => '285',
    '286' => '286',
    '287' => '287',
    '288' => '288',
    '289' => '289',
    '290' => '290',
	'291' => '291',
    '292' => '292',
    '293' => '293',
    '294' => '294',
    '295' => '295',
    '296' => '296',
    '297' => '297',
    '298' => '298',
    '299' => '299',
    '300' => '300',
	'301' => '301',
    '302' => '302',
    '303' => '303',
    '304' => '304',
    '305' => '305',
    '306' => '306',
    '307' => '307',
    '308' => '308',
    '309' => '309',
    '310' => '310',
	'311' => '311',
    '312' => '312',
    '313' => '313',
    '314' => '314',
    '315' => '315',
    '316' => '316',
    '317' => '317',
    '318' => '318',
    '319' => '319',
    '320' => '320',
	'321' => '321',
    '322' => '322',
    '323' => '323',
    '324' => '324',
    '325' => '325',
    '326' => '326',
    '327' => '327',
    '328' => '328',
    '329' => '329',
    '330' => '330', 
	'331' => '331',
    '332' => '332',
    '333' => '333',
    '334' => '334',
    '335' => '335',
    '336' => '336',
    '337' => '337',
    '338' => '338',
    '339' => '339',
    '340' => '340',
	'341' => '341',
    '342' => '342',
    '343' => '343',
    '344' => '344',
    '345' => '345',
    '346' => '346',
    '347' => '347',
    '348' => '348',
    '349' => '349',
    '350' => '350', 
	'351' => '351',
    '352' => '352',
    '353' => '353',
    '354' => '354',
    '355' => '355',
    '356' => '356',
    '357' => '357',
    '358' => '358',
    '359' => '359',
    '360' => '360',
	'361' => '361',
    '362' => '362',
    '363' => '363',
    '364' => '364',
    '365' => '365',
    '366' => '366',
    '367' => '367',
    '368' => '368',
    '369' => '369',
    '370' => '370',
	'371' => '371',
    '372' => '372',
    '373' => '373', 
    '374' => '374',
    '375' => '375',
    '376' => '376',
    '377' => '377',
    '378' => '378',
    '379' => '379',                                                   
)
;
	
$googlefonts = array(
	''                         => '--- Default ---',
	'Arial'                    => 'Arial',
	'Georgia'                  => 'Georgia',
	'Helvetica'                => 'Helvetica',
	'Lucida Grande'            => 'Lucida Grande',    
	'Lucida Sans Unicode'      => 'Lucida Sans Unicode',
 	'Segoe UI'                 => 'Segoe UI',   
	'Tahoma'                   => 'Tahoma',
	'Times New Roman'          => 'Times New Roman',
	'Trebuchet MS'             => 'Trebuchet MS',    
	'Verdana'                  => 'Verdana', 
    'ABeeZee'                  => 'ABeeZee',  
	'Abel'                     => 'Abel',
	'Abril+Fatface'            => 'Abril Fatface',
	'Aclonica'                 => 'Aclonica',
	'Acme'                     => 'Acme',
	'Actor'                    => 'Actor',
	'Adamina'                  => 'Adamina',
	'Advent+Pro'               => 'Advent Pro',
	'Aguafina+Script'          => 'Aguafina Script',    
    'Akronim'                  => 'Akronim',
	'Aladin'                   => 'Aladin',
	'Aldrich'                  => 'Aldrich',
	'Alegreya'                 => 'Alegreya',
	'Alegreya+SC'              => 'Alegreya SC',
	'Alex+Brush'               => 'Alex Brush',
	'Alfa+Slab+One'            => 'Alfa Slab One',
	'Alice'                    => 'Alice',
	'Alike'                    => 'Alike',
	'Alike+Angular'            => 'Alike Angular',
	'Allan'                    => 'Allan',
	'Allerta'                  => 'Allerta',
	'Allerta+Stencil'          => 'Allerta Stencil',
	'Allura'                   => 'Allura',
	'Almendra'                 => 'Almendra',
	'Almendra+Display'         => 'Almendra Display',    
	'Almendra+SC'              => 'Almendra SC',
    'Amarante'                 => 'Amarante',
	'Amaranth'                 => 'Amaranth',
	'Amatic+SC'                => 'Amatic SC',
	'Amethysta'                => 'Amethysta',
    'Anaheim'                  => 'Anaheim',
	'Andada'                   => 'Andada',
	'Andika'                   => 'Andika',
	'Angkor'                   => 'Angkor',    
	'Annie+Use+Your+Telescope' => 'Annie Use Your Telescope',
	'Anonymous+Pro'            => 'Anonymous Pro',
	'Antic'                    => 'Antic',
	'Antic+Didone'             => 'Antic Didone',
	'Antic+Slab'               => 'Antic Slab',        
	'Anton'                    => 'Anton',
	'Arapey'                   => 'Arapey',
	'Arbutus'                  => 'Arbutus',  
    'Arbutus+Slab'             => 'Arbutus Slab',    
	'Architects+Daughter'      => 'Architects Daughter',
    'Archivo+Black'            => 'Archivo Black',
    'Archivo+Narrow'           => 'Archivo Narrow',
	'Arimo'                    => 'Arimo',
	'Arizonia'                 => 'Arizonia',    
	'Armata'                   => 'Armata',
	'Artifika'                 => 'Artifika',
	'Arvo'                     => 'Arvo',
	'Asap'                     => 'Asap',
	'Asset'                    => 'Asset',
	'Astloch'                  => 'Astloch',
	'Asul'                     => 'Asul',
	'Atomic+Age'               => 'Atomic Age',
	'Aubrey'                   => 'Aubrey',
	'Audiowide'                => 'Audiowide', 
    'Autour+One'               => 'Autour One',
	'Average'                  => 'Average',
    'Average+Sans'             => 'Average Sans',
	'Averia+Gruesa+Libre'      => 'Averia Gruesa Libre',
	'Averia+Libre'             => 'Averia Libre',
	'Averia+Sans+Libre'        => 'Averia Sans Libre',
	'Averia+Serif+Libre'       => 'Averia Serif Libre',                       
	'Bad+Script'               => 'Bad Script',
	'Balthazar'                => 'Balthazar',
	'Bangers'                  => 'Bangers',
	'Basic'                    => 'Basic',
	'Battambang'               => 'Battambang',
	'Baumans'                  => 'Baumans',
	'Bayon'                    => 'Bayon',
	'Belgrano'                 => 'Belgrano',
	'Belleza'                  => 'Belleza',  
    'BenchNine'                => 'BenchNine',  
	'Bentham'                  => 'Bentham',
	'Berkshire+Swash'          => 'Berkshire Swash',    
	'Bevan'                    => 'Bevan',
	'Bigelow+Rules'            => 'Bigelow Rules',    
	'Bigshot+One'              => 'Bigshot One',
	'Bilbo'                    => 'Bilbo',
	'Bilbo+Swash+Caps'         => 'Bilbo Swash Caps',
	'Bitter'                   => 'Bitter',
	'Black+Ops+One'            => 'Black Ops One',
	'Bokor'                    => 'Bokor',
	'Bonbon'                   => 'Bonbon',
	'Boogaloo'                 => 'Boogaloo',
	'Bowlby+One'               => 'Bowlby One',
	'Bowlby+One+SC'            => 'Bowlby One SC',
	'Brawler'                  => 'Brawler',
	'Bree+Serif'               => 'Bree Serif',
	'Bubblegum+Sans'           => 'Bubblegum Sans',
    'Bubbler+One'              => 'Bubbler One',
	'Buda'                     => 'Buda',
	'Buenard'                  => 'Buenard',
	'Butcherman'               => 'Butcherman',
	'Butterfly+Kids'           => 'Butterfly Kids',
	'Cabin'                    => 'Cabin',
	'Cabin+Condensed'          => 'Cabin Condensed',
	'Cabin+Sketch'             => 'Cabin Sketch',
	'Caesar+Dressing'          => 'Caesar Dressing',
	'Cagliostro'               => 'Cagliostro',
	'Calligraffitti'           => 'Calligraffitti',
	'Cambo'                    => 'Cambo',
	'Candal'                   => 'Candal',
	'Cantarell'                => 'Cantarell',
	'Cantata+One'              => 'Cantata One',
    'Cantora+One'              => 'Cantora One',
    'Capriola'                 => 'Capriola',
	'Cardo'                    => 'Cardo',
	'Carme'                    => 'Carme',
    'Carrois+Gothic'           => 'Carrois Gothic',
    'Carrois+Gothic+SC'        => 'Carrois Gothic SC',
	'Carter+One'               => 'Carter One',
	'Caudex'                   => 'Caudex',    
	'Cedarville Cursive'       => 'Cedarville Cursive',
	'Ceviche+One'              => 'Ceviche One',    
	'Changa+One'               => 'Changa One',
	'Chango'                   => 'Chango',
	'Chau+Philomene+One'       => 'Chau Philomene One',    
    'Chela+One'                => 'Chela One',
	'Chelsea+Market'           => 'Chelsea Market',
	'Chenla'                   => 'Chenla',    
	'Cherry+Cream+Soda'        => 'Cherry Cream Soda',
    'Cherry+Swash'             => 'Cherry Swash',
	'Chewy'                    => 'Chewy',
	'Chicle'                   => 'Chicle',
	'Chivo'                    => 'Chivo',  
    'Cinzel'                   => 'Cinzel', 
    'Cinzel+Decorative'        => 'Cinzel Decorative',     
	'Clicker+Script'           => 'Clicker Script',
	'Coda'                     => 'Coda',    
	'Coda+Caption'             => 'Coda Caption',
	'Codystar'                 => 'Codystar',
    'Combo'                    => 'Combo',
	'Comfortaa'                => 'Comfortaa',
	'Coming+Soon'              => 'Coming Soon',
	'Concert+One'              => 'Concert One',    
	'Condiment'                => 'Condiment',
	'Content'                  => 'Content',    
	'Contrail+One'             => 'Contrail One',
	'Convergence'              => 'Convergence',
	'Cookie'                   => 'Cookie',
	'Copse'                    => 'Copse',
	'Corben'                   => 'Corben',
    'Courgette'                => 'Courgette',
	'Cousine'                  => 'Cousine',
	'Coustard'                 => 'Coustard',
	'Covered+By+Your+Grace'    => 'Covered By Your Grace',
	'Crafty+Girls'             => 'Crafty Girls',
	'Creepster'                => 'Creepster',        
	'Crete+Round'              => 'Crete Round',
	'Crimson+Text'             => 'Crimson Text',
	'Croissant+One'            => 'Croissant One',    
	'Crushed'                  => 'Crushed',
	'Cuprum'                   => 'Cuprum',
	'Cutive'                   => 'Cutive', 
    'Cutive+Mono'              => 'Cutive Mono',
	'Damion'                   => 'Damion',
	'Dancing+Script'           => 'Dancing Script',
	'Dangrek'                  => 'Dangrek',
	'Dawning+Of+A+New+Day'     => 'Dawning of a New Day',
	'Days+One'                 => 'Days One',        
	'Delius'                   => 'Delius',
	'Delius+Swash+Caps'        => 'Delius Swash Caps',
	'Delius+Unicase'           => 'Delius Unicase',
	'Della+Respira'            => 'Della Respira',
    'Denk+One'                 => 'Denk One',
	'Devonshire'               => 'Devonshire',
	'Didact+Gothic'            => 'Didact Gothic',
	'Diplomata'                => 'Diplomata',
	'Diplomata+SC'             => 'Diplomata SC',
    'Domine'                   => 'Domine',
    'Donegal+One'              => 'Donegal One',
	'Doppio+One'               => 'Doppio One',
	'Dorsa'                    => 'Dorsa',
	'Dosis'                    => 'Dosis',    
	'Dr+Sugiyama'              => 'Dr Sugiyama',
	'Droid+Sans'               => 'Droid Sans',
	'Droid+Sans+Mono'          => 'Droid Sans Mono',
	'Droid+Serif'              => 'Droid Serif',
	'Duru+Sans'                => 'Duru Sans',
	'Dynalight'                => 'Dynalight',
    'Eagle+Lake'               => 'Eagle Lake',
	'Eater'                    => 'Eater',
	'EB+Garamond'              => 'EB Garamond',
	'Economica'                => 'Economica',
	'Electrolize'              => 'Electrolize',
    'Elsie'                    => 'Elsie',
    'Elsie+Swash+Caps'         => 'Elsie Swash Caps',
	'Emblema+One'              => 'Emblema One',
	'Emilys+Candy'             => 'Emilys Candy',    
	'Engagement'               => 'Engagement',
	'Englebert'                => 'Englebert',    
	'Enriqueta'                => 'Enriqueta',
	'Erica+One'                => 'Erica One',
	'Esteban'                  => 'Esteban',
	'Euphoria+Script'          => 'Euphoria Script',
	'Ewert'                    => 'Ewert',    
	'Exo'                      => 'Exo',
	'Expletus+Sans'            => 'Expletus Sans',
	'Fanwood+Text'             => 'Fanwood Text',
	'Fascinate'                => 'Fascinate',
	'Fascinate+Inline'         => 'Fascinate Inline',
    'Faster+One'               => 'Faster One',
	'Federant'                 => 'Federant',
	'Federo'                   => 'Federo',
	'Felipa'                   => 'Felipa',
    'Fenix'                    => 'Fenix',
    'Finger+Paint'             => 'Finger Paint',
	'Fjalla+One'               => 'Fjalla One',    
	'Fjord+One'                => 'Fjord One',
	'Flamenco'                 => 'Flamenco',
	'Flavors'                  => 'Flavors',
	'Fondamento'               => 'Fondamento',
	'Fontdiner+Swanky'         => 'Fontdiner Swanky',
	'Forum'                    => 'Forum',
	'Francois+One'             => 'Francois One',
    'Freckle+Face'             => 'Freckle Face',    
	'Fredericka+The+Great'     => 'Fredericka the Great',   
    'Fredoka+One'              => 'Fredoka One',
    'Freehand'                 => 'Freehand', 
	'Fresca'                   => 'Fresca',
	'Frijole'                  => 'Frijole',
	'Fruktur'                  => 'Fruktur',    
	'Fugaz+One'                => 'Fugaz One',
	'Gabriela'                 => 'Gabriela', 
    'Gafata'                   => 'Gafata',    
	'Galdeano'                 => 'Galdeano',
    'Galindo'                  => 'Galindo',
	'Gentium+Basic'            => 'Gentium Basic',
	'Gentium+Book+Basic'       => 'Gentium Book Basic',
	'Geo'                      => 'Geo',
	'Geostar'                  => 'Geostar',
	'Geostar+Fill'             => 'Geostar Fill',
	'Germania+One'             => 'Germania One',
	'GFS+Didot'                => 'GFS Didot',
	'GFS+Neohellenic'          => 'GFS Neohellenic',
	'Gilda+Display'            => 'Gilda Display',
    'Give+You+Glory'           => 'Give You Glory',
	'Glass+Antiqua'            => 'Glass Antiqua',
	'Glegoo'                   => 'Glegoo',
	'Gloria+Hallelujah'        => 'Gloria Hallelujah',
	'Goblin+One'               => 'Goblin One',
	'Gochi+Hand'               => 'Gochi Hand',
	'Gorditas'                 => 'Gorditas',
	'Goudy+Bookletter+1911'    => 'Goudy Bookletter 1911',
	'Graduate'                 => 'Graduate',
    'Grand+Hotel'              => 'Grand Hotel',
	'Gravitas+One'             => 'Gravitas One',
	'Great Vibes'              => 'Great Vibes',
    'Griffy'                   => 'Griffy',
	'Gruppo'                   => 'Gruppo',
	'Gudea'                    => 'Gudea',
	'Habibi'                   => 'Habibi',
	'Hammersmith+One'          => 'Hammersmith One',
	'Hanalei'                  => 'Hanalei',       
	'Hanalei+Fill'             => 'Hanalei Fill',    
	'Handlee'                  => 'Handlee',
	'Hanuman'                  => 'Hanuman',
	'Happy+Monkey'             => 'Happy Monkey',
    'Headland+One'             => 'Headland One',
	'Henny+Penny'              => 'Henny Penny',
	'Herr+Von+Muellerhoff'     => 'Herr Von Muellerhoff',
	'Holtwood+One+SC'          => 'Holtwood One SC',
	'Homemade+Apple'           => 'Homemade Apple',    
	'Homenaje'                 => 'Homenaje',
	'Iceberg'                  => 'Iceberg',
	'Iceland'                  => 'Iceland',
	'IM+Fell+Double+Pica'      => 'IM Fell Double Pica',
	'IM+Fell+Double+Pica+SC'   => 'IM Fell Double Pica SC',
	'IM+Fell+DW+Pica'          => 'IM Fell DW Pica',    
	'IM+Fell+DW+Pica+SC'       => 'IM Fell DW Pica SC',
	'IM+Fell+English'          => 'IM Fell English',
	'IM+Fell+English+SC'       => 'IM Fell English SC',
	'IM+Fell+French+Canon'     => 'IM Fell French Canon',
	'IM+Fell+French+Canon+SC'  => 'IM Fell French Canon SC',
	'IM+Fell+Great+Primer'     => 'IM Fell Great Primer',
	'IM+Fell+Great+Primer+SC'  => 'IM Fell Great Primer SC',
	'Imprima'                  => 'Imprima',
	'Inconsolata'              => 'Inconsolata',
	'Inder'                    => 'Inder',
	'Indie+Flower'             => 'Indie Flower',
	'Inika'                    => 'Inika',
	'Irish+Grover'             => 'Irish Grover',
	'Istok+Web'                => 'Istok Web',
	'Italiana'                 => 'Italiana',
	'Italianno'                => 'Italianno',
    'Jacques+Francois'         => 'Jacques Francois',
    'Jacques+Francois+Shadow'  => 'Jacques Francois Shadow',
	'Jim+Nightshade'           => 'Jim Nightshade',
	'Jockey+One'               => 'Jockey One',
	'Jolly Lodger'             => 'Jolly Lodger',
	'Josefin+Sans'             => 'Josefin Sans',
	'Josefin+Slab'             => 'Josefin Slab',
    'Joti+One'                 => 'Joti One',
	'Judson'                   => 'Judson',
	'Julee'                    => 'Julee',
    'Julius+Sans+One'          => 'Julius Sans One',
	'Junge'                    => 'Junge',
	'Jura'                     => 'Jura',
	'Just+Another+Hand'        => 'Just Another Hand',
	'Just+Me+Again+Down+Here'  => 'Just Me Again Down Here',
	'Kameron'                  => 'Kameron',
	'Karla'                    => 'Karla',
	'Kaushan+Script'           => 'Kaushan Script',
    'Kavoon'                   => 'Kavoon',
    'Keania+One'               => 'Keania One',
	'Kelly+Slab'               => 'Kelly Slab',
	'Kenia'                    => 'Kenia',
	'Khmer'                    => 'Khmer',
    'Kite+One'                 => 'Kite One',
	'Knewave'                  => 'Knewave',
	'Kotta+One'                => 'Kotta One',
	'Koulen'                   => 'Koulen',
	'Kranky'                   => 'Kranky',
	'Kreon'                    => 'Kreon',
	'Kristi'                   => 'Kristi',
	'Krona+One'                => 'Krona One',
	'La+Belle+Aurore'          => 'La Belle Aurore',
	'Lancelot'                 => 'Lancelot',
	'Lato'                     => 'Lato',
	'League+Script'            => 'League Script',
	'Leckerli+One'             => 'Leckerli One',
	'Ledger'                   => 'Ledger',
	'Lekton'                   => 'Lekton',
	'Lemon'                    => 'Lemon',
    'Libre+Baskerville'        => 'Libre Baskerville',
    'Life+Savers'              => 'Life Savers',
	'Lilita+One'               => 'Lilita One',
	'Limelight'                => 'Limelight',
	'Linden+Hill'              => 'Linden Hill',
	'Lobster'                  => 'Lobster',
	'Lobster+Two'              => 'Lobster Two',
	'Londrina+Outline'         => 'Londrina Outline',
	'Londrina+Shadow'          => 'Londrina Shadow',
	'Londrina+Sketch'          => 'Londrina Sketch',
	'Londrina+Solid'           => 'Londrina Solid',
	'Lora'                     => 'Lora',
	'Love+Ya+Like+A+Sister'    => 'Love Ya Like A Sister',
	'Loved+By+The+King'        => 'Loved by the King',
	'Lovers+Quarrel'           => 'Lovers Quarrel',
	'Luckiest+Guy'             => 'Luckiest Guy',
	'Lusitana'                 => 'Lusitana',
	'Lustria'                  => 'Lustria',
	'Macondo'                  => 'Macondo',
	'Macondo+Swash+Caps'       => 'Macondo Swash Caps',
	'Magra'                    => 'Magra',
	'Maiden+Orange'            => 'Maiden Orange',
	'Mako'                     => 'Mako',
    'Marcellus'                => 'Marcellus',
    'Marcellus+SC'             => 'Marcellus SC',
	'Marck+Script'             => 'Marck Script',
	'Margarine'                => 'Margarine',    
	'Marko+One'                => 'Marko One',
	'Marmelad'                 => 'Marmelad',
	'Marvel'                   => 'Marvel',
	'Mate'                     => 'Mate',
	'Mate+SC'                  => 'Mate SC',
	'Maven+Pro'                => 'Maven Pro',
    'McLaren'                  => 'McLaren',    
	'Meddon'                   => 'Meddon',
	'MedievalSharp'            => 'MedievalSharp',
	'Medula+One'               => 'Medula One',
	'Megrim'                   => 'Megrim',
    'Meie+Script'              => 'Meie Script',
    'Merienda'                 => 'Merienda',
	'Merienda+One'             => 'Merienda One',
	'Merriweather'             => 'Merriweather',
    'Merriweather+Sans'        => 'Merriweather Sans',
	'Metal'                    => 'Metal',
    'Metal Mania'              => 'Metal Mania',
	'Metamorphous'             => 'Metamorphous',
	'Metrophobic'              => 'Metrophobic',
	'Michroma'                 => 'Michroma',
	'Milonga'                  => 'Milonga',    
	'Miltonian'                => 'Miltonian',
	'Miltonian+Tattoo'         => 'Miltonian Tattoo',
	'Miniver'                  => 'Miniver',
	'Miss+Fajardose'           => 'Miss Fajardose',
	'Modern+Antiqua'           => 'Modern Antiqua',
	'Molengo'                  => 'Molengo',
    'Molle'                    => 'Molle',
	'Monda'                    => 'Monda',    
	'Monofett'                 => 'Monofett',
	'Monoton'                  => 'Monoton',
	'Monsieur+La+Doulaise'     => 'Monsieur La Doulaise',
	'Montaga'                  => 'Montaga',
	'Montez'                   => 'Montez',
	'Montserrat'               => 'Montserrat',
    'Montserrat+Alternates'    => 'Montserrat Alternates',
    'Montserrat+Subrayada'     => 'Montserrat Subrayada',
	'Moul'                     => 'Moul',
	'Moulpali'                 => 'Moulpali',
	'Mountains+of+Christmas'   => 'Mountains of Christmas',
	'Mouse+Memoirs'            => 'Mouse Memoirs',    
	'Mr+Bedfort'               => 'Mr Bedfort',
	'Mr+Dafoe'                 => 'Mr Dafoe',
	'Mr+De+Haviland'           => 'Mr De Haviland',
	'Mrs+Saint+Delafield'      => 'Mrs Saint Delafield',
	'Mrs+Sheppards'            => 'Mrs Sheppards',
	'Muli'                     => 'Muli',
	'Mystery+Quest'            => 'Mystery Quest',
	'Neucha'                   => 'Neucha',
	'Neuton'                   => 'Neuton',
    'New+Rocker'               => 'New Rocker',    
	'News+Cycle'               => 'News Cycle',
	'Niconne'                  => 'Niconne',
	'Nixie+One'                => 'Nixie One',
	'Nobile'                   => 'Nobile',
	'Nokora'                   => 'Nokora',
	'Norican'                  => 'Norican',
	'Nosifer'                  => 'Nosifer',
	'Nothing+You+Could+Do'     => 'Nothing You Could Do',
	'Noticia+Text'             => 'Noticia Text',
	'Noto+Sans'                => 'Noto Sans',
	'Noto+Serif'               => 'Noto Serif',          
	'Nova+Cut'                 => 'Nova Cut',
	'Nova+Flat'                => 'Nova Flat',
	'Nova+Mono'                => 'Nova Mono',
	'Nova+Oval'                => 'Nova Oval',
	'Nova+Round'               => 'Nova Round',
	'Nova+Script'              => 'Nova Script',
	'Nova+Slim'                => 'Nova Slim',
	'Nova+Square'              => 'Nova Square',
	'Numans'                   => 'Numans',
	'Nunito'                   => 'Nunito',
	'Odor+Mean+Chey'           => 'Odor Mean Chey',
    'Offside'                  => 'Offside',
	'Old+Standard+TT'          => 'Old Standard TT',
	'Oldenburg'                => 'Oldenburg',
	'Oleo+Script'              => 'Oleo Script',
 	'Oleo+Script+Swash+Caps'   => 'Oleo Script Swash Caps',   
	'Open+Sans'                => 'Open Sans',
	'Open+Sans+Condensed'      => 'Open Sans Condensed',
    'Oranienbaum'              => 'Oranienbaum',
	'Orbitron'                 => 'Orbitron',
    'Oregano'                  => 'Oregano',
    'Orienta'                  => 'Orienta',
	'Original+Surfer'          => 'Original Surfer',
	'Oswald'                   => 'Oswald',
	'Over+the+Rainbow'         => 'Over the Rainbow',
	'Overlock'                 => 'Overlock',
	'Overlock+SC'              => 'Overlock SC',
	'Ovo'                      => 'Ovo',
	'Oxygen'                   => 'Oxygen',
    'Oxygen+Mono'              => 'Oxygen Mono',
	'Pacifico'                 => 'Pacifico',
    'Paprika'                  => 'Paprika',
	'Parisienne'               => 'Parisienne',
	'Passero+One'              => 'Passero One',
	'Passion+One'              => 'Passion One',
	'Patrick+Hand'             => 'Patrick Hand',
    'Patrick+Hand+SC'          => 'Patrick Hand SC',
	'Patua+One'                => 'Patua One',
	'Paytone+One'              => 'Paytone One',
    'Peralta'                  => 'Peralta',
	'Permanent+Marker'         => 'Permanent Marker',
    'Petit+Formal+Script'      => 'Petit Formal Script',
	'Petrona'                  => 'Petrona',
	'Philosopher'              => 'Philosopher',
	'Piedra'                   => 'Piedra',
	'Pinyon+Script'            => 'Pinyon Script',
    'Pirata+One'               => 'Pirata One',
	'Plaster'                  => 'Plaster',
	'Play'                     => 'Play',
	'Playball'                 => 'Playball',
	'Playfair+Display'         => 'Playfair Display',
    'Playfair+Display+SC'      => 'Playfair Display SC',
	'Podkova'                  => 'Podkova',
	'Poiret+One'               => 'Poiret One',
	'Poller+One'               => 'Poller One',
	'Poly'                     => 'Poly',
	'Pompiere'                 => 'Pompiere',
	'Pontano+Sans'             => 'Pontano Sans',
	'Port+Lligat+Sans'         => 'Port Lligat Sans',
	'Port+Lligat+Slab'         => 'Port Lligat Slab',
	'Prata'                    => 'Prata',
	'Preahvihear'              => 'Preahvihear',
	'Press+Start+2P'           => 'Press Start 2P',
	'Princess+Sofia'           => 'Princess Sofia',
	'Prociono'                 => 'Prociono',
	'Prosto+One'               => 'Prosto One',
	'PT+Mono'                  => 'PT Mono',
	'PT+Sans'                  => 'PT Sans',
	'PT+Sans+Caption'          => 'PT Sans Caption',
	'PT+Sans+Narrow'           => 'PT Sans Narrow',
	'PT+Serif'                 => 'PT Serif',
	'PT+Serif+Caption'         => 'PT Serif Caption',
	'Puritan'                  => 'Puritan',
    'Purple+Purse'             => 'Purple Purse',
    'Quando'                   => 'Quando',
	'Quantico'                 => 'Quantico',
	'Quattrocento'             => 'Quattrocento',
	'Quattrocento+Sans'        => 'Quattrocento Sans',
	'Questrial'                => 'Questrial',
	'Quicksand'                => 'Quicksand',
	'Quintessential'           => 'Quintessential',    
	'Qwigley'                  => 'Qwigley',
    'Racing+Sans+One'          => 'Racing Sans One',
	'Radley'                   => 'Radley',
	'Raleway'                  => 'Raleway',
    'Raleway+Dots'             => 'Raleway Dots',
    'Rambla'                   => 'Rambla',
	'Rammetto+One'             => 'Rammetto One',
    'Ranchers'                 => 'Ranchers',
	'Rancho'                   => 'Rancho',
	'Rationale'                => 'Rationale',
	'Redressed'                => 'Redressed',
	'Reenie+Beanie'            => 'Reenie Beanie',
	'Revalia'                  => 'Revalia',
	'Ribeye'                   => 'Ribeye',
	'Ribeye+Marrow'            => 'Ribeye Marrow',
	'Righteous'                => 'Righteous',
	'Risque'                   => 'Risque',
	'Roboto'                   => 'Roboto',
    'Roboto+Condensed'         => 'Roboto Condensed',          
	'Rochester'                => 'Rochester',
	'Rock+Salt'                => 'Rock Salt',
	'Rokkitt'                  => 'Rokkitt',
    'Romanesco'                => 'Romanesco',
	'Ropa+Sans'                => 'Ropa Sans',
	'Rosario'                  => 'Rosario',
	'Rosarivo'                 => 'Rosarivo',
	'Rouge+Script'             => 'Rouge Script',
	'Ruda'                     => 'Ruda',
    'Rufina'                   => 'Rufina',
	'Ruge+Boogie'              => 'Ruge Boogie',
	'Ruluko'                   => 'Ruluko',
	'Rum+Raisin'               => 'Rum Raisin',    
	'Ruslan+Display'           => 'Ruslan Display',
	'Russo+One'                => 'Russo One',
	'Ruthie'                   => 'Ruthie',
    'Rye'                      => 'Rye',
    'Sacramento'               => 'Sacramento',
	'Sail'                     => 'Sail',
	'Salsa'                    => 'Salsa',
    'Sanchez'                  => 'Sanchez',
	'Sancreek'                 => 'Sancreek',
	'Sansita+One'              => 'Sansita One',
	'Sarina'                   => 'Sarina',
	'Satisfy'                  => 'Satisfy',
    'Scada'                    => 'Scada',
	'Schoolbell'               => 'Schoolbell',
	'Seaweed+Script'           => 'Seaweed Script',
	'Sevillana'                => 'Sevillana',
    'Seymour+One'              => 'Seymour One',
	'Shadows+Into+Light'       => 'Shadows Into Light',
	'Shadows+Into+Light+Two'   => 'Shadows Into Light Two',
	'Shanti'                   => 'Shanti',
	'Share'                    => 'Share',
    'Share+Tech'               => 'Share Tech',
    'Share+Tech+Mono'          => 'Share Tech Mono',
	'Shojumaru'                => 'Shojumaru',
	'Short+Stack'              => 'Short Stack',
	'Siemreap'                 => 'Siemreap',
	'Sigmar+One'               => 'Sigmar One',
	'Signika'                  => 'Signika',
	'Signika+Negative'         => 'Signika Negative',
	'Simonetta'                => 'Simonetta',
	'Sintony'                  => 'Sintony',    
	'Sirin+Stencil'            => 'Sirin Stencil',
	'Six+Caps'                 => 'Six Caps',
    'Skranji'                  => 'Skranji',
	'Slackey'                  => 'Slackey',
	'Smokum'                   => 'Smokum',
	'Smythe'                   => 'Smythe',
	'Sniglet'                  => 'Sniglet',
	'Snippet'                  => 'Snippet',
	'Snowburst+One'            => 'Snowburst One',  
    'Sofadi+One'               => 'Sofadi One',  
	'Sofia'                    => 'Sofia',
	'Sonsie+One'               => 'Sonsie One',
	'Sorts+Mill+Goudy'         => 'Sorts Mill Goudy',
    'Source+Code+Pro'          => 'Source Code Pro',
    'Source+Sans+Pro'          => 'Source Sans Pro',
	'Special+Elite'            => 'Special Elite',
	'Spicy+Rice'               => 'Spicy Rice',
	'Spinnaker'                => 'Spinnaker',
	'Spirax'                   => 'Spirax',
	'Squada+One'               => 'Squada One',
	'Stalemate'                => 'Stalemate',
    'Stalinist+One'            => 'Stalinist One',        
	'Stardos+Stencil'          => 'Stardos Stencil',
	'Stint+Ultra+Condensed'    => 'Stint Ultra Condensed',
	'Stint+Ultra+Expanded'     => 'Stint Ultra Expanded',
	'Stoke'                    => 'Stoke',
    'Strait'                   => 'Strait',
	'Sue+Ellen+Francisco'      => 'Sue Ellen Francisco',
	'Sunshiney'                => 'Sunshiney',
	'Supermercado+One'         => 'Supermercado One',
	'Suwannaphum'              => 'Suwannaphum',
	'Swanky+And+Moo+Moo'       => 'Swanky and Moo Moo',
	'Syncopate'                => 'Syncopate',
	'Tangerine'                => 'Tangerine',
	'Taprom'                   => 'Taprom',
	'Tauri'                    => 'Tauri',    
	'Telex'                    => 'Telex',
	'Tenor+Sans'               => 'Tenor Sans',
	'Terminal+Dosis'           => 'Terminal Dosis',
    'Text+Me+One'              => 'Text Me One',
	'The+Girl+Next+Door'       => 'The Girl Next Door',
	'Tienne'                   => 'Tienne',
	'Tinos'                    => 'Tinos',
	'Titan+One'                => 'Titan One',
    'Titillium+Web'            => 'Titillium Web',
	'Trade+Winds'              => 'Trade Winds',
	'Trocchi'                  => 'Trocchi',
	'Trochut'                  => 'Trochut',
	'Trykker'                  => 'Trykker',
	'Tulpen+One'               => 'Tulpen One',
	'Ubuntu'                   => 'Ubuntu',
	'Ubuntu+Condensed'         => 'Ubuntu Condensed',
	'Ubuntu+Mono'              => 'Ubuntu Mono',
	'Ultra'                    => 'Ultra',
	'Uncial+Antiqua'           => 'Uncial Antiqua',
    'Underdog'                 => 'Underdog',
    'Unica+One'                => 'Unica One',
	'UnifrakturCook'           => 'UnifrakturCook',
	'UnifrakturMaguntia'       => 'UnifrakturMaguntia',
	'Unkempt'                  => 'Unkempt',
	'Unlock'                   => 'Unlock',
	'Unna'                     => 'Unna',
	'Vampiro+One'              => 'Vampiro One',    
	'Varela'                   => 'Varela',
	'Varela+Round'             => 'Varela Round',
	'Vast+Shadow'              => 'Vast Shadow',
	'Vibur'                    => 'Vibur',
	'Vidaloka'                 => 'Vidaloka',
	'Viga'                     => 'Viga',
	'Voces'                    => 'Voces',
	'Volkhov'                  => 'Volkhov',
	'Vollkorn'                 => 'Vollkorn',
	'Voltaire'                 => 'Voltaire',
	'VT323'                    => 'VT323',
	'Waiting+for+the+Sunrise'  => 'Waiting for the Sunrise',
	'Wallpoet'                 => 'Wallpoet',
	'Walter+Turncoat'          => 'Walter Turncoat',
    'Warnes'                   => 'Warnes',
	'Wellfleet'                => 'Wellfleet',
	'Wendy+One'                => 'Wendy One',    
	'Wire+One'                 => 'Wire One',
	'Yanone+Kaffeesatz'        => 'Yanone Kaffeesatz',
	'Yellowtail'               => 'Yellowtail',
	'Yeseva+One'               => 'Yeseva One',
	'Yesteryear'               => 'Yesteryear',
	'Zeyada'                   => 'Zeyada',
	); 
?>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
    
<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons">
        <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
        <a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a>
        </div>
	</div>

	<div class="content">    
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

        <div>
		<div style="margin-top:0px; margin-bottom:20px; float:left; display:block">
			<label><?php echo $entry_status; ?></label>
			<select name="thebabyshop_status">
				<?php if ($thebabyshop_status) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select> 
		</div>
        <div style="margin-top:10px; margin-bottom:20px; margin-left:170px;">
			<label><?php echo $entry_skin; ?></label>
            <select name="thebabyshop_skin">
                 <option value="1"<?php if($thebabyshop_skin == '1') echo ' selected="selected"';?><?php if($thebabyshop_skin == '') echo ' selected="selected"';?>><?php echo $entry_skin_1; ?></option>
                 <option value="2"<?php if($thebabyshop_skin == '2') echo ' selected="selected"';?>><?php echo $entry_skin_2; ?></option>
                 <option value="3"<?php if($thebabyshop_skin == '3') echo ' selected="selected"';?>><?php echo $entry_skin_3; ?></option>
                 <option value="4"<?php if($thebabyshop_skin == '4') echo ' selected="selected"';?>><?php echo $entry_skin_4; ?></option>
                 <option value="5"<?php if($thebabyshop_skin == '5') echo ' selected="selected"';?>><?php echo $entry_skin_5; ?></option> 
                 <option value="6"<?php if($thebabyshop_skin == '6') echo ' selected="selected"';?>><?php echo $entry_skin_6; ?></option> 
                 <option value="7"<?php if($thebabyshop_skin == '7') echo ' selected="selected"';?>><?php echo $entry_skin_7; ?></option>
                 <option value="8"<?php if($thebabyshop_skin == '8') echo ' selected="selected"';?>><?php echo $entry_skin_8; ?></option>                                
            </select> 
            <span class="thebabyshop_help_tip"><a id="thebabyshop-help-32" title="" href="#">?</a></span> 
		</div>
        </div>
        
		<div id="settings_tabs" class="htabs">
			<a href="#tab-store-features"><?php echo $entry_tab_store_features; ?></a>
            <a href="#tab-colors-styles"><?php echo $entry_tab_colors_styles; ?></a>
            <a href="#tab-background-images"><?php echo $entry_tab_background_images; ?></a> 
            <a href="#tab-fonts"><?php echo $entry_tab_fonts; ?></a>                                                                 
			<a href="#tab-footer"><?php echo $entry_tab_footer; ?></a>
			<a href="#tab-widgets"><?php echo $entry_tab_widgets; ?></a>  
			<a href="#tab-css"><?php echo $entry_tab_custom_css; ?></a>                                      
		</div>        

        
        <div id="tab-store-features">   
        
        <div id="store_features_tabs" class="vtabs">
             <a href="#tab-store-features-main-menu"><?php echo $entry_store_features_main_menu; ?></a>
             <a href="#tab-store-features-homepage"><?php echo $entry_store_features_homepage; ?></a>
             <a href="#tab-store-features-category"><?php echo $entry_store_features_category; ?></a> 
             <a href="#tab-store-features-product"><?php echo $entry_store_features_product; ?></a>   
             <a href="#tab-store-features-contact"><?php echo $entry_store_features_contact; ?></a>  
             <a href="#tab-store-features-lrcolumn"><?php echo $entry_store_features_left_right_column; ?></a> 
             <a href="#tab-store-features-others"><?php echo $entry_store_features_others; ?></a>                                         
        </div> 
        
        <div id="tab-store-features-main-menu" class="vtabs-content">    
        
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_homepage; ?></b></div></td>
					</tr>  
					<tr>
						<td><?php echo $entry_menu_homepage_status; ?></td>
						<td>			
                        <select name="thebabyshop_menu_homepage_status">
                            <option value="1"<?php if($thebabyshop_menu_homepage_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_menu_homepage_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_homepage_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                     <tr>
						<td><?php echo $entry_menu_homepage_style; ?></td>
						<td>
                        <select name="thebabyshop_menu_homepage_style">    
                           <option value="1"<?php if($thebabyshop_menu_homepage_style == '1') echo ' selected="selected"';?>><?php echo $text_icon; ?></option>      
                           <option value="2"<?php if($thebabyshop_menu_homepage_style == '2') echo ' selected="selected"';?><?php if($thebabyshop_menu_homepage_style == '') echo ' selected="selected"';?>><?php echo $text_text; ?></option>                               
                        </select>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_categories; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_categories_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_categories_status">
                            <option value="1"<?php if($thebabyshop_menu_categories_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_menu_categories_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_categories_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_categories_style; ?></td>
						<td>			
                        <select name="thebabyshop_menu_categories_style">
                           <option value="1"<?php if($thebabyshop_menu_categories_style == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                           <option value="2"<?php if($thebabyshop_menu_categories_style == '2') echo ' selected="selected"';?>><?php echo $text_vertical; ?></option>
                           <option value="3"<?php if($thebabyshop_menu_categories_style == '3') echo ' selected="selected"';?><?php if($thebabyshop_menu_categories_style == '') echo ' selected="selected"';?>><?php echo $text_horizontal; ?></option>                           
                        </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_mm2_main_category_icon_status; ?><br /><span class="thebabyshop_help"><?php echo $entry_mm2_main_category_icon_status_help; ?></span></td>
						<td>
                        <select name="thebabyshop_mm2_main_category_icon_status">
                            <option value="1"<?php if($thebabyshop_mm2_main_category_icon_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm2_main_category_icon_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_mm2_main_category_icon_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                           
                        </td>
					</tr>                      
                          
		 </table>
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_brands; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-34" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_brands_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_brands_status">
                            <option value="1"<?php if($thebabyshop_menu_brands_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_brands_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_brands_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                             
                        </td>
					</tr>
                                     
                    <tr>
						<td><?php echo $entry_menu_brands_style; ?></td>
                        <td>
                        <select name="thebabyshop_menu_brands_style">
                           <option value="1"<?php if($thebabyshop_menu_brands_style == '1') echo ' selected="selected"';?>><?php echo $text_brand_logo; ?></option>
                           <option value="2"<?php if($thebabyshop_menu_brands_style == '2') echo ' selected="selected"';?>><?php echo $text_brand_name; ?></option>
                           <option value="3"<?php if($thebabyshop_menu_brands_style == '3') echo ' selected="selected"';?>><?php echo $text_brand_logo_name; ?></option>                           
                        </select>
                        </td>
					</tr>                                             
                    
                    <tr>
						<td><?php echo $entry_menu_brands_per_row; ?></td>
                        <td>
                        <select name="thebabyshop_menu_brands_per_row">
                           <option value="4"<?php if($thebabyshop_menu_brands_per_row == '4') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($thebabyshop_menu_brands_per_row == '6') echo ' selected="selected"';?>>6</option>
                           <option value="8"<?php if($thebabyshop_menu_brands_per_row == '8') echo ' selected="selected"';?>>8</option>                           
                        </select>
                        </td>
					</tr>                 
                          
		 </table>                                       
        
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_information_pages; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_information_pages_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_information_pages_status">
                            <option value="1"<?php if($thebabyshop_menu_information_pages_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_information_pages_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_information_pages_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                           
                        </td>
					</tr>
                          
		 </table>  
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_your_account; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_your_account_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_your_account_status">
                            <option value="1"<?php if($thebabyshop_menu_your_account_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_your_account_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_your_account_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
                          
		 </table>                        
        
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="5"><div><b><?php echo $entry_menu_links; ?></b></div></td>
					</tr>
         			<tr>
						<td><?php echo $entry_menu_link_1; ?></td>
						<td width="70">
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_1_status"<?php if($thebabyshop_menu_link_1_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td width="150">
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_1<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td width="140">
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_1_url" value="<?php echo $thebabyshop_menu_link_1_url; ?>" />
                        </td>  
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_1_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_1_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_1_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_1_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                        
					</tr> 

         			<tr>
						<td><?php echo $entry_menu_link_2; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_2_status"<?php if($thebabyshop_menu_link_2_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_2<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_2_url" value="<?php echo $thebabyshop_menu_link_2_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_2_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_2_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_2_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_2_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
                    
         			<tr>
						<td><?php echo $entry_menu_link_3; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_3_status"<?php if($thebabyshop_menu_link_3_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_3<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_3<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_3' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_3_url" value="<?php echo $thebabyshop_menu_link_3_url; ?>" />
                        </td> 
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_3_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_3_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_3_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_3_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                  
					</tr>
                    
         			<tr>
						<td><?php echo $entry_menu_link_4; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_4_status"<?php if($thebabyshop_menu_link_4_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_4<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_4<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_4' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_4_url" value="<?php echo $thebabyshop_menu_link_4_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_4_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_4_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_4_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_4_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>  
         
         			<tr>
						<td><?php echo $entry_menu_link_5; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_5_status"<?php if($thebabyshop_menu_link_5_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_5<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_5<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_5' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_5_url" value="<?php echo $thebabyshop_menu_link_5_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_5_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_5_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_5_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_5_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>
                    
         			<tr>
						<td><?php echo $entry_menu_link_6; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_6_status"<?php if($thebabyshop_menu_link_6_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_6<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_6<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_6' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_6_url" value="<?php echo $thebabyshop_menu_link_6_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_6_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_6_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_6_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_6_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
                    
         			<tr>
						<td><?php echo $entry_menu_link_7; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_7_status"<?php if($thebabyshop_menu_link_7_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_7<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_7<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_7' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_7_url" value="<?php echo $thebabyshop_menu_link_7_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_7_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_7_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_7_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_7_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>     
                    
         			<tr>
						<td><?php echo $entry_menu_link_8; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_8_status"<?php if($thebabyshop_menu_link_8_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_8<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_8<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_8' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_8_url" value="<?php echo $thebabyshop_menu_link_8_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_8_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_8_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_8_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_8_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr> 
            
         			<tr>
						<td><?php echo $entry_menu_link_9; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_9_status"<?php if($thebabyshop_menu_link_9_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_9<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_9<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_9' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_9_url" value="<?php echo $thebabyshop_menu_link_9_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_9_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_9_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_9_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_9_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>  
                    
         			<tr>
						<td><?php echo $entry_menu_link_10; ?></td>
						<td>
                        <div style="float:left">
                        <label class="s_checkbox"><input type="checkbox" value="1" name="thebabyshop_menu_link_10_status"<?php if($thebabyshop_menu_link_10_status == '1') echo ' checked="checked"';?> />
                         Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>
                        <td>
                        <?php echo $text_title; ?><br />
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_menu_link_10<?php echo $language['language_id']; ?>" id="thebabyshop_menu_link_10<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_link_10' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
						<td>
                        <?php echo $entry_menu_links_url; ?><br /><input type="text" name="thebabyshop_menu_link_10_url" value="<?php echo $thebabyshop_menu_link_10_url; ?>" />
                        </td>
                      	<td>
                        <?php echo $entry_menu_links_target; ?><br />
                        <select name="thebabyshop_menu_link_10_target">
                            <option value="_self"<?php if($thebabyshop_menu_link_10_target == '_self') echo ' selected="selected"';?><?php if($thebabyshop_menu_link_10_target == '') echo ' selected="selected"';?>><?php echo $text_tself; ?></option>
                            <option value="_blank"<?php if($thebabyshop_menu_link_10_target == '_blank') echo ' selected="selected"';?>><?php echo $text_tblank; ?></option>                        
			            </select>                          
                        </td>                                                   
					</tr>                                                                                                                                                                          
                                             
		 </table>  
         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_custom_block; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_custom_block_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_custom_block_status">
                            <option value="1"<?php if($thebabyshop_menu_custom_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_custom_block_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_custom_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>  
                        </td>
					</tr>
                    
		 </table>                     
                    
                   <div id="menu_thebabyshop_custom" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_menu_custom<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_menu_custom<?php echo $language['language_id']; ?>">
                   <table class="form">         
				     <tr>
						<td><?php echo $entry_custom_title; ?></td>
						<td><input type="text" name="thebabyshop_menu_custom_block_title_1<?php echo $language['language_id']; ?>" id="thebabyshop_menu_custom_block_title_1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_custom_block_title_1' . $language['language_id']}; ?>" /></td>
					 </tr>                      
					 <tr>
						<td><?php echo $entry_custom_content; ?></td>
						<td><textarea name="thebabyshop_menu_custom_block_content_1<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_menu_custom_block_content_1' . $language['language_id']}) ? ${'thebabyshop_menu_custom_block_content_1' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                         

         
        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_custom_block_2; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_custom_block_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_custom_block_2_status">
                            <option value="1"<?php if($thebabyshop_menu_custom_block_2_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_custom_block_2_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_custom_block_2_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>  
                        </td>
					</tr>

		 </table>  
                    
                   <div id="menu_thebabyshop_custom_2" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_menu_custom_2<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_menu_custom_2<?php echo $language['language_id']; ?>">
                   <table class="form">         
				     <tr>
						<td><?php echo $entry_custom_title; ?></td>
						<td><input type="text" name="thebabyshop_menu_custom_block_title_2<?php echo $language['language_id']; ?>" id="thebabyshop_menu_custom_block_title_2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_custom_block_title_2' . $language['language_id']}; ?>" /></td>
					 </tr>                      
					 <tr>
						<td><?php echo $entry_custom_content; ?></td>
						<td><textarea name="thebabyshop_menu_custom_block_content_2<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_menu_custom_block_content_2' . $language['language_id']}) ? ${'thebabyshop_menu_custom_block_content_2' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                    


        <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_custom_block_3; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_custom_block_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_custom_block_3_status">
                            <option value="1"<?php if($thebabyshop_menu_custom_block_3_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_custom_block_3_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_custom_block_3_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>  
                        </td>
					</tr>                        
                          
		 </table>     
         
                   <div id="menu_thebabyshop_custom_3" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_menu_custom_3<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_menu_custom_3<?php echo $language['language_id']; ?>">
                   <table class="form">         
				     <tr>
						<td><?php echo $entry_custom_title; ?></td>
						<td><input type="text" name="thebabyshop_menu_custom_block_title_3<?php echo $language['language_id']; ?>" id="thebabyshop_menu_custom_block_title_3<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_menu_custom_block_title_3' . $language['language_id']}; ?>" /></td>
					 </tr>                      
					 <tr>
						<td><?php echo $entry_custom_content; ?></td>
						<td><textarea name="thebabyshop_menu_custom_block_content_3<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_menu_custom_block_content_3' . $language['language_id']}) ? ${'thebabyshop_menu_custom_block_content_3' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                 
         
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_menu_contacts; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_menu_contacts_status; ?></td>
						<td>
                        <select name="thebabyshop_menu_contacts_status">
                            <option value="1"<?php if($thebabyshop_menu_contacts_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_menu_contacts_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_menu_contacts_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table> 
     			
        </div> 
           
        <div id="tab-store-features-homepage" class="vtabs-content">
        
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_banner_slider; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-26" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_banner_slider_type; ?></td>
						<td>
                        <select name="thebabyshop_homepage_banner_slider_type">
                            <option value="1"<?php if($thebabyshop_homepage_banner_slider_type == '1') echo ' selected="selected"';?>><?php echo $entry_homepage_banner_slider_flexslider; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_banner_slider_type == '0') echo ' selected="selected"';?><?php if($thebabyshop_homepage_banner_slider_type == '') echo ' selected="selected"';?>><?php echo $entry_homepage_banner_slider_camera; ?></option>                        
			            </select>                        
                        </td>
					</tr>
                          
		 </table>        
         
        <table class="form thebabyshop_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_bestseller; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_bestseller_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_bestseller_status">
                            <option value="1"<?php if($thebabyshop_homepage_bestseller_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_homepage_bestseller_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_bestseller_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>           
        
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_featured; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_featured_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_featured_status">
                            <option value="1"<?php if($thebabyshop_homepage_featured_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_homepage_featured_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_featured_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>                        
                        </td>
					</tr>
                          
		 </table> 
         
        <table class="form thebabyshop_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_latest; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_latest_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_latest_status">
                            <option value="1"<?php if($thebabyshop_homepage_latest_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_homepage_latest_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_latest_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table> 	
         
        <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_specials; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_specials_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_specials_status">
                            <option value="1"<?php if($thebabyshop_homepage_specials_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_homepage_specials_status == '') echo ' selected="selected"';?>>
                            <?php echo $text_slider; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_specials_status == '0') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>                
         
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_category_wall; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-24" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_category_wall_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_category_wall_status">
                            <option value="1"<?php if($thebabyshop_homepage_category_wall_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_category_wall_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_homepage_category_wall_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                        
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_category_wall_icon_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_category_wall_icon_status">
                            <option value="1"<?php if($thebabyshop_homepage_category_wall_icon_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_homepage_category_wall_icon_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_category_wall_icon_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>   
                        </td>
					</tr>                    
                    <tr>
						<td><?php echo $entry_homepage_category_wall_per_row; ?></td>
                        <td>
                        <select name="thebabyshop_homepage_category_wall_per_row">
                           <option value="4"<?php if($thebabyshop_homepage_category_wall_per_row == '4') echo ' selected="selected"';?><?php if($thebabyshop_homepage_category_wall_per_row == '') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($thebabyshop_homepage_category_wall_per_row == '6') echo ' selected="selected"';?>>6</option>
                        </select>
                        </td>
					</tr>                       
                    <tr>
						<td><?php echo $entry_homepage_category_wall_sub_number; ?></td>
                        <td>
                        <select name="thebabyshop_homepage_category_wall_sub_number">
                           <option value="2"<?php if($thebabyshop_homepage_category_wall_sub_number == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_homepage_category_wall_sub_number == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_homepage_category_wall_sub_number == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_homepage_category_wall_sub_number == '5') echo ' selected="selected"';?><?php if($thebabyshop_homepage_category_wall_sub_number == '') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($thebabyshop_homepage_category_wall_sub_number == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_homepage_category_wall_sub_number == '7') echo ' selected="selected"';?>>7</option>
                           <option value="8"<?php if($thebabyshop_homepage_category_wall_sub_number == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($thebabyshop_homepage_category_wall_sub_number == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_homepage_category_wall_sub_number == '10') echo ' selected="selected"';?>>10</option>
                        </select>
                        </td>
					</tr>   
                          
		 </table>
         
        <table class="form">
					<tr>
						<td colspan="2"><div><b><?php echo $entry_homepage_brands_wall; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-25" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_homepage_brands_wall_status; ?></td>
						<td>
                        <select name="thebabyshop_homepage_brands_wall_status">
                            <option value="1"<?php if($thebabyshop_homepage_brands_wall_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_homepage_brands_wall_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_homepage_brands_wall_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
                    <tr>
						<td><?php echo $entry_homepage_brands_wall_style; ?></td>
                        <td>
                        <select name="thebabyshop_homepage_brands_wall_style">
                           <option value="1"<?php if($thebabyshop_homepage_brands_wall_style == '1') echo ' selected="selected"';?>><?php echo $text_brand_logo; ?></option>
                           <option value="2"<?php if($thebabyshop_homepage_brands_wall_style == '2') echo ' selected="selected"';?>><?php echo $text_brand_name; ?></option>
                           <option value="3"<?php if($thebabyshop_homepage_brands_wall_style == '3') echo ' selected="selected"';?>><?php echo $text_brand_logo_name; ?></option>                           
                        </select>
                        </td>
					</tr>                       
                    <tr>
						<td><?php echo $entry_homepage_brands_wall_per_row; ?></td>
                        <td>
                        <select name="thebabyshop_homepage_brands_wall_per_row">
                           <option value="4"<?php if($thebabyshop_homepage_brands_wall_per_row == '4') echo ' selected="selected"';?>>4</option>
                           <option value="6"<?php if($thebabyshop_homepage_brands_wall_per_row == '6') echo ' selected="selected"';?><?php if($thebabyshop_homepage_brands_wall_per_row == '') echo ' selected="selected"';?>>6</option>
                        </select>
                        </td>
					</tr>                        
                          
		 </table>         
     			
        </div>
        
        <div id="tab-store-features-category" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_category_subcategories; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-31" title="" href="#">?</a></span></div></td>
					</tr>        
        			<tr>
						<td><?php echo $entry_category_subcategories_status; ?></td>
						<td>
                        <select name="thebabyshop_category_subcategories_status">
                            <option value="1"<?php if($thebabyshop_category_subcategories_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_category_subcategories_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_category_subcategories_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                          
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_category_subcategories_style; ?></td>
						<td>
                        <select name="thebabyshop_category_subcategories_style">
                            <option value="1"<?php if($thebabyshop_category_subcategories_style == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($thebabyshop_category_subcategories_style == '0') echo ' selected="selected"';?><?php if($thebabyshop_category_subcategories_style == '') echo ' selected="selected"';?>><?php echo $text_thebabyshop; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>                                    
     			
        </div>
        
        <div id="tab-store-features-product" class="vtabs-content">  
        
        <table class="form">

        			<tr>
						<td><?php echo $entry_product_manufacturer_logo_status; ?></td>
						<td>
                        <select name="thebabyshop_product_manufacturer_logo_status">
                            <option value="1"<?php if($thebabyshop_product_manufacturer_logo_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_product_manufacturer_logo_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_manufacturer_logo_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
        			<tr>
						<td><?php echo $entry_product_viewed_status; ?></td>
						<td>
                        <select name="thebabyshop_product_viewed_status">
                            <option value="1"<?php if($thebabyshop_product_viewed_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_product_viewed_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_viewed_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>   
        			<tr>
						<td><?php echo $entry_product_i_c_status; ?></td>
						<td>
                        <select name="thebabyshop_product_i_c_status">
                            <option value="1"<?php if($thebabyshop_product_i_c_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_product_i_c_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_i_c_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
                    
		 </table>        
        
        <table class="form thebabyshop_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_zoom; ?></b></div></td>
					</tr>        
					<tr>
						<td><?php echo $entry_product_zoom_type; ?></td>
						<td>
                        <select name="thebabyshop_product_zoom_type">
                            <option value="1"<?php if($thebabyshop_product_zoom_type == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($thebabyshop_product_zoom_type == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_zoom_type == '') echo ' selected="selected"';?>><?php echo $text_cloud_zoom; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>
         
        <table class="form">
                      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_related; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-27" title="" href="#">?</a></span></div></td>
					</tr>         
        			<tr>
						<td><?php echo $entry_product_related_status; ?></td>
						<td>
                        <select name="thebabyshop_product_related_status">
                            <option value="1"<?php if($thebabyshop_product_related_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_product_related_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_related_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_product_related_position; ?></td>
						<td>
                        <select name="thebabyshop_product_related_position">
                            <option value="1"<?php if($thebabyshop_product_related_position == '1') echo ' selected="selected"';?>><?php echo $text_position_b; ?></option>
                            <option value="0"<?php if($thebabyshop_product_related_position == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_related_position == '') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>
         
        <table class="form thebabyshop_sep">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-28" title="" href="#">?</a></span></div></td>
					</tr> 
					<tr>
						<td><?php echo $entry_product_custom_status; ?></td>
						<td>
                        <select name="thebabyshop_product_custom_status">
                            <option value="1"<?php if($thebabyshop_product_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_custom_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>  
                    
		 </table>                     
                    
                   <div id="product_thebabyshop_custom" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_product_custom<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_product_custom<?php echo $language['language_id']; ?>">
                   <table class="form">                            
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_product_custom_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_product_custom_content' . $language['language_id']}) ? ${'thebabyshop_product_custom_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>   

    
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom_tab; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-29" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_product_custom_tab_status; ?></td>
						<td>
                        <select name="thebabyshop_product_custom_tab_status">
                            <option value="1"<?php if($thebabyshop_product_custom_tab_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_custom_tab_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_custom_tab_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>                    
                    
                   <div id="product_thebabyshop_custom_tab" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_product_custom_tab<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_product_custom_tab<?php echo $language['language_id']; ?>">
                   <table class="form">  
                   <tr>
						<td><?php echo $text_title; ?></td>
						<td><input type="text" name="thebabyshop_product_custom_tab_title<?php echo $language['language_id']; ?>" id="thebabyshop_product_custom_tab_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_product_custom_tab_title' . $language['language_id']}; ?>" /></td>
					 </tr>                           
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_product_custom_tab_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_product_custom_tab_content' . $language['language_id']}) ? ${'thebabyshop_product_custom_tab_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?> 
 
        <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom_tab_2; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_product_custom_tab_2_status; ?></td>
						<td>
                        <select name="thebabyshop_product_custom_tab_2_status">
                            <option value="1"<?php if($thebabyshop_product_custom_tab_2_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_custom_tab_2_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_custom_tab_2_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>                    
                    
                   <div id="product_thebabyshop_custom_tab_2" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_product_custom_tab_2<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_product_custom_tab_2<?php echo $language['language_id']; ?>">
                   <table class="form">  
                   <tr>
						<td><?php echo $text_title; ?></td>
						<td><input type="text" name="thebabyshop_product_custom_tab_2_title<?php echo $language['language_id']; ?>" id="thebabyshop_product_custom_tab_2_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_product_custom_tab_2_title' . $language['language_id']}; ?>" /></td>
					 </tr>                           
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_product_custom_tab_2_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_product_custom_tab_2_content' . $language['language_id']}) ? ${'thebabyshop_product_custom_tab_2_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>      
                   
         <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_product_custom_tab_3; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_product_custom_tab_3_status; ?></td>
						<td>
                        <select name="thebabyshop_product_custom_tab_3_status">
                            <option value="1"<?php if($thebabyshop_product_custom_tab_3_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_product_custom_tab_3_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_product_custom_tab_3_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                    
		 </table>                    
                    
                   <div id="product_thebabyshop_custom_tab_3" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_product_custom_tab_3<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_product_custom_tab_3<?php echo $language['language_id']; ?>">
                   <table class="form">  
                   <tr>
						<td><?php echo $text_title; ?></td>
						<td><input type="text" name="thebabyshop_product_custom_tab_3_title<?php echo $language['language_id']; ?>" id="thebabyshop_product_custom_tab_3_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_product_custom_tab_3_title' . $language['language_id']}; ?>" /></td>
					 </tr>                           
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_product_custom_tab_3_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_product_custom_tab_3_content' . $language['language_id']}) ? ${'thebabyshop_product_custom_tab_3_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                    
     			
        </div>
        
        <div id="tab-store-features-contact" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_contact_custom; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-30" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_contact_custom_status; ?></td>
						<td>
                        <select name="thebabyshop_contact_custom_status">
                            <option value="1"<?php if($thebabyshop_contact_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_contact_custom_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_contact_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>  
                    
		 </table>                    
                    
                   <div id="contact_thebabyshop_custom" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_contact_custom<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_contact_custom<?php echo $language['language_id']; ?>">
                   <table class="form">                            
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_contact_custom_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_contact_custom_content' . $language['language_id']}) ? ${'thebabyshop_contact_custom_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                       
                   
     			
        </div>     
        
        <div id="tab-store-features-lrcolumn" class="vtabs-content">
        
        <table class="form">
      
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_categories; ?></b></div></td>
					</tr>              
					<tr>
						<td><?php echo $entry_left_right_column_categories_type; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_categories_type">
                            <option value="1"<?php if($thebabyshop_left_right_column_categories_type == '1') echo ' selected="selected"';?>><?php echo $text_opencart; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_categories_type == '0') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_categories_type == '') echo ' selected="selected"';?>><?php echo $text_accordion; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>
     			
        </div>
        
        <div id="tab-store-features-others" class="vtabs-content">
        
        <table class="form">
                 
					<tr>
						<td><?php echo $entry_others_totop; ?></td>
						<td>
                        <select name="thebabyshop_others_totop">
                            <option value="1"<?php if($thebabyshop_others_totop == '1') echo ' selected="selected"';?><?php if($thebabyshop_others_totop == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_others_totop == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>
     			
        </div>                       
        
        </div>
  
        
        
        <div id="tab-colors-styles">
      
            <div id="colors_styles_settings_tabs" class="vtabs">
             <a href="#tab-colors-styles-general"><?php echo $entry_general_color; ?></a>      
             <a href="#tab-colors-styles-prices"><?php echo $entry_price; ?></a>
             <a href="#tab-colors-styles-buttons"><?php echo $entry_buttons_color; ?></a> 
             <a href="#tab-colors-styles-top-area-header"><?php echo $entry_top_area_header_color; ?></a>
             <a href="#tab-colors-styles-top-area-main-menu"><?php echo $entry_top_area_main_menu_color; ?></a>
             <a href="#tab-colors-styles-midsection"><?php echo $entry_midsection_color; ?></a>
             <a href="#tab-colors-styles-bottom-area"><?php echo $entry_bottom_area_color; ?></a>    
           </div> 
           
        <div id="tab-colors-styles-general" class="vtabs-content">
        <table class="form">
        
					<tr>
						<td><?php echo $entry_layout_style; ?></td>
						<td>                        
                        <select name="thebabyshop_layout_style">
                           <option value="1"<?php if($thebabyshop_layout_style == '1') echo ' selected="selected"';?>><?php echo $text_boxed; ?></option>
                           <option value="2"<?php if($thebabyshop_layout_style == '2') echo ' selected="selected"';?>><?php echo $text_full_width; ?></option>                         
                        </select>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $entry_body_background_color; ?></td>
						<td><input type="text" name="thebabyshop_body_background_color" value="<?php echo $thebabyshop_body_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_body_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_headings_color; ?></td>
						<td><input type="text" name="thebabyshop_headings_color" value="<?php echo $thebabyshop_headings_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_headings_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_body_text_color; ?></td>
						<td><input type="text" name="thebabyshop_body_text_color" value="<?php echo $thebabyshop_body_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_body_text_color_help; ?></span>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $entry_light_text_color; ?></td>
						<td><input type="text" name="thebabyshop_light_text_color" value="<?php echo $thebabyshop_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_light_text_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_other_links_color; ?></td>
						<td><input type="text" name="thebabyshop_other_links_color" value="<?php echo $thebabyshop_other_links_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_other_links_color_help; ?></span>
                        </td>
					</tr>                                                                   
					<tr>
						<td><?php echo $entry_links_hover_color; ?></td>
						<td><input type="text" name="thebabyshop_links_hover_color" value="<?php echo $thebabyshop_links_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_links_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_general_icons_style; ?></td>
						<td>
                        <div>
							<span class="thebabyshop_help">1.&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/thebabyshop-compare-1.png">&nbsp;
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/thebabyshop-wishlist-1.png">
                            <br /><br />       
							<span class="thebabyshop_help">2.&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/thebabyshop-compare-2.png">&nbsp;
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/thebabyshop-wishlist-2.png">                                                
						</div><br />                                          
                        <select name="thebabyshop_general_icons_style">
                           <option value="1"<?php if($thebabyshop_general_icons_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_general_icons_style == '2') echo ' selected="selected"';?>>2</option>                                                      
                        </select>
                        </td>
					</tr>                                       
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                                              
					<tr>
						<td colspan="2"><div><b><?php echo $entry_main_column; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-5" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_main_column_status">
                            <option value="1"<?php if($thebabyshop_main_column_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_main_column_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_main_column_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_main_column_background_color" value="<?php echo $thebabyshop_main_column_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_main_column_background_color_help; ?></span>
                        </td>
					</tr>                   
					<tr>
						<td><?php echo $text_border; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_main_column_border_status">
                            <option value="1"<?php if($thebabyshop_main_column_border_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_main_column_border_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_main_column_border_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>                      
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_main_column_border_size">
                           <option value="1"<?php if($thebabyshop_main_column_border_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_main_column_border_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_main_column_border_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_main_column_border_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_main_column_border_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_main_column_border_style">
                           <option value="solid"<?php if($thebabyshop_main_column_border_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_main_column_border_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_main_column_border_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_main_column_border_color" value="<?php echo $thebabyshop_main_column_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_main_column_border_color_help; ?></span>
                        </td>
					</tr>                  
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_main_column_radius">
                           <option value="0"<?php if($thebabyshop_main_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_main_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_main_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_main_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_main_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_main_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_main_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_main_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_main_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_main_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_main_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="thebabyshop_main_column_shadow">
                            <option value="1"<?php if($thebabyshop_main_column_shadow == '1') echo ' selected="selected"';?><?php if($thebabyshop_main_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_main_column_shadow == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-2" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_left_right_column_status; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_status">
                            <option value="1"<?php if($thebabyshop_left_right_column_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_left_right_column_background_color" value="<?php echo $thebabyshop_left_right_column_background_color; ?>" class="color {required:false,hash:true}" size="7"
                        />
                        <span class="thebabyshop_help"><?php echo $entry_left_right_column_background_color_help; ?></span>
                        </td>
					</tr>                   
                    <tr>
						<td><?php echo $entry_left_right_column_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_left_right_column_radius">
                           <option value="0"<?php if($thebabyshop_left_right_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_left_right_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_left_right_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_left_right_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_left_right_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_left_right_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_left_right_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_left_right_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_left_right_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_left_right_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_left_right_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_shadow; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_shadow">
                            <option value="1"<?php if($thebabyshop_left_right_column_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_head; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-3" title="" href="#">?</a></span></div></td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_head_status; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_head_status">
                            <option value="1"<?php if($thebabyshop_left_right_column_head_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_head_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_head_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_head_background_color; ?></td>
						<td><input type="text" name="thebabyshop_left_right_column_head_background_color" value="<?php echo $thebabyshop_left_right_column_head_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_left_right_column_head_background_color_help; ?></span>
                        </td>
					</tr>  
				    <tr>
					    <td><?php echo $entry_left_right_column_head_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_left_right_column_head_custom" value="<?php echo $thebabyshop_left_right_column_head_custom; ?>" id="thebabyshop_left_right_column_head_custom" />
						<img src="<?php echo $thebabyshop_left_right_column_head_custom_thumb; ?>" id="thebabyshop_left_right_column_head_custom_thumb" />
						<br /><a onclick="image_upload('thebabyshop_left_right_column_head_custom', 'thebabyshop_left_right_column_head_custom_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_left_right_column_head_custom_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_left_right_column_head_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
				    </tr>                    
                    <tr>
						<td><?php echo $entry_left_right_column_head_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_left_right_column_head_radius">
                           <option value="0"<?php if($thebabyshop_left_right_column_head_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_left_right_column_head_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_left_right_column_head_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_left_right_column_head_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_left_right_column_head_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_left_right_column_head_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_left_right_column_head_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_left_right_column_head_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_left_right_column_head_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_left_right_column_head_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_left_right_column_head_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_head_shadow; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_head_shadow">
                            <option value="1"<?php if($thebabyshop_left_right_column_head_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_head_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_head_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_left_right_column_head_title_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_left_right_column_head_title_color" value="<?php echo $thebabyshop_left_right_column_head_title_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_left_right_column_head_title_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td colspan="2"><div><b><?php echo $entry_left_right_column_box; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-4" title="" href="#">?</a></span></div></td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_box_status; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_box_status">
                            <option value="1"<?php if($thebabyshop_left_right_column_box_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_box_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_box_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $entry_left_right_column_box_background_color; ?></td>
						<td><input type="text" name="thebabyshop_left_right_column_box_background_color" value="<?php echo $thebabyshop_left_right_column_box_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_left_right_column_box_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_left_right_column_separator_size">
                           <option value="1"<?php if($thebabyshop_left_right_column_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_left_right_column_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_left_right_column_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_left_right_column_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_left_right_column_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_left_right_column_separator_style">
                           <option value="solid"<?php if($thebabyshop_left_right_column_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_left_right_column_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_left_right_column_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_left_right_column_separator_color" value="<?php echo $thebabyshop_left_right_column_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_left_right_column_separator_color_help; ?></span>
                        </td>                        
					</tr>                                     
                    <tr>
						<td><?php echo $entry_left_right_column_box_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_left_right_column_box_radius">
                           <option value="0"<?php if($thebabyshop_left_right_column_box_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_left_right_column_box_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_left_right_column_box_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_left_right_column_box_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_left_right_column_box_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_left_right_column_box_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_left_right_column_box_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_left_right_column_box_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_left_right_column_box_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_left_right_column_box_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_left_right_column_box_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_left_right_column_box_shadow; ?></td>
						<td>
                        <select name="thebabyshop_left_right_column_box_shadow">
                            <option value="1"<?php if($thebabyshop_left_right_column_box_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_left_right_column_box_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_left_right_column_box_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                        
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_content_column; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-1" title="" href="#">?</a></span></div></td>
					</tr>                     
					<tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_content_column_status">
                            <option value="1"<?php if($thebabyshop_content_column_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_content_column_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_content_column_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                               
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_content_column_background_color" value="<?php echo $thebabyshop_content_column_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_content_column_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_content_column_separator_size">
                           <option value="1"<?php if($thebabyshop_content_column_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_content_column_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_content_column_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_content_column_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_content_column_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_content_column_separator_style">
                           <option value="solid"<?php if($thebabyshop_content_column_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_content_column_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_content_column_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_content_column_separator_color" value="<?php echo $thebabyshop_content_column_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_content_column_separator_color_help; ?></span>
                        </td>                        
					</tr>                     
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_content_column_radius">
                           <option value="0"<?php if($thebabyshop_content_column_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_content_column_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_content_column_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_content_column_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_content_column_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_content_column_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_content_column_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_content_column_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_content_column_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_content_column_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_content_column_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="thebabyshop_content_column_shadow">
                            <option value="1"<?php if($thebabyshop_content_column_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_content_column_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_content_column_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                                                                                                                                               

		 </table>  
        </div>
        
        <div id="tab-colors-styles-prices" class="vtabs-content">
        <table class="form">     

					<tr>
						<td><?php echo $entry_price_color; ?></td>
						<td><input type="text" name="thebabyshop_price_color" value="<?php echo $thebabyshop_price_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_price_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_old_color; ?></td>
						<td><input type="text" name="thebabyshop_price_old_color" value="<?php echo $thebabyshop_price_old_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_price_old_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_new_color; ?></td>
						<td><input type="text" name="thebabyshop_price_new_color" value="<?php echo $thebabyshop_price_new_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_price_new_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_price_tax_color; ?></td>
						<td><input type="text" name="thebabyshop_price_tax_color" value="<?php echo $thebabyshop_price_tax_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_price_tax_color_help; ?></span>
                        </td>
					</tr> 
                                                                               
		 </table>     
        </div>
        
        <div id="tab-colors-styles-buttons" class="vtabs-content">
        <table class="form">     
        
                    <tr>
						<td><?php echo $entry_button_border_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_button_border_radius">
                           <option value="0"<?php if($thebabyshop_button_border_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_button_border_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_button_border_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_button_border_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_button_border_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_button_border_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_button_border_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_button_border_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_button_border_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_button_border_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_button_border_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $entry_button_text_shadow; ?></td>
						<td>
                        <select name="thebabyshop_button_text_shadow">
                            <option value="1"<?php if($thebabyshop_button_text_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_button_text_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_button_text_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>	
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_buttons_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-6" title="" href="#">?</a></span></div></td>
					</tr>                                        
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_button_background_color" value="<?php echo $thebabyshop_button_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color; ?></td>
						<td><input type="text" name="thebabyshop_button_border_top_color" value="<?php echo $thebabyshop_button_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color; ?></td>
						<td><input type="text" name="thebabyshop_button_border_bottom_color" value="<?php echo $thebabyshop_button_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_border_bottom_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_button_background_hover_color" value="<?php echo $thebabyshop_button_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_button_border_top_hover_color" value="<?php echo $thebabyshop_button_border_top_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_border_top_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_button_border_bottom_hover_color" value="<?php echo $thebabyshop_button_border_bottom_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_border_bottom_hover_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="thebabyshop_button_text_color" value="<?php echo $thebabyshop_button_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_text_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_exclusive_buttons_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-7" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_background_color" value="<?php echo $thebabyshop_button_exclusive_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_border_top_color" value="<?php echo $thebabyshop_button_exclusive_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_border_bottom_color" value="<?php echo $thebabyshop_button_exclusive_border_bottom_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_border_bottom_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_background_hover_color" value="<?php echo $thebabyshop_button_exclusive_background_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_top_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_border_top_hover_color" value="<?php echo $thebabyshop_button_exclusive_border_top_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_border_top_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_border_bottom_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_border_bottom_hover_color" value="<?php echo $thebabyshop_button_exclusive_border_bottom_hover_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_border_bottom_hover_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_button_exclusive_text_color" value="<?php echo $thebabyshop_button_exclusive_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_button_exclusive_text_color_help; ?></span>
                        </td>
					</tr>
                    
		 </table>     
        </div> 
        
        <div id="tab-colors-styles-top-area-header" class="vtabs-content">
        
        <table class="form">      
          
                    <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_top_area_status">
                            <option value="1"<?php if($thebabyshop_top_area_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_top_area_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_top_area_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_background_color" value="<?php echo $thebabyshop_top_area_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_background_color_help; ?></span>
                        </td>
					</tr>
		 </table>   
                 
        <table class="form thebabyshop_sep">
                                                                                                                                 
					<tr>
						<td colspan="2"><div><b><?php echo $entry_logo; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_logo_position; ?></td>
						<td>                        
                        <select name="thebabyshop_logo_position">
                           <option value="left"<?php if($thebabyshop_logo_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                          
                           <option value="center"<?php if($thebabyshop_logo_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>                         
                        </select>
                        </td>
					</tr>                    

		 </table>  
         
        <table class="form">
                                                                                                                                 
					<tr>
						<td colspan="2"><div><b><?php echo $entry_search_bar; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_position; ?></td>
						<td>                        
                        <select name="thebabyshop_search_bar_position">
                           <option value="right"<?php if($thebabyshop_search_bar_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="center"<?php if($thebabyshop_search_bar_position == 'center') echo ' selected="selected"';?><?php if($thebabyshop_search_bar_position == '') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_search_bar_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                           
                        </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_style; ?></td>
						<td>
                        <div>
							<span class="thebabyshop_help">1.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/searchbar_1.png">
                            <br /><br />       
							<span class="thebabyshop_help">2.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/searchbar_2.png">
                            <br /><br />       
							<span class="thebabyshop_help">3.&nbsp;&nbsp;</span>
                            <img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/searchbar_3.png">                                                                         
						</div><br /><br />                                              
                        <select name="thebabyshop_search_bar_style">                     
                           <option value="1"<?php if($thebabyshop_search_bar_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_search_bar_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_search_bar_style == '3') echo ' selected="selected"';?>>3</option> 
                        </select>
                        <span class="thebabyshop_help"><?php echo $entry_search_bar_style_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_search_bar_style_color; ?><br /><span class="thebabyshop_help"><?php echo $entry_search_bar_style_color_help; ?></span></td>
						<td><input type="text" name="thebabyshop_search_bar_style_color" value="<?php echo $thebabyshop_search_bar_style_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_search_bar_style_color_help2; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_search_bar_border_color; ?></td>
						<td><input type="text" name="thebabyshop_search_bar_border_color" value="<?php echo $thebabyshop_search_bar_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_search_bar_border_color_help; ?></span>
                        </td>
					</tr>                                                                                                                     

		 </table> 
         <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_ls; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_ls_link_color" value="<?php echo $thebabyshop_top_area_ls_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_ls_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_top_area_ls_link_color_hover" value="<?php echo $thebabyshop_top_area_ls_link_color_hover; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_ls_link_color_hover_help; ?></span>
                        </td>
					</tr>       
					<tr>
						<td><?php echo $text_separator_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_ls_link_separator_color" value="<?php echo $thebabyshop_top_area_ls_link_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_ls_link_separator_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>            
            
        <table class="form">
                                                                  
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_cart; ?></b></div></td>
					</tr>  
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_cart_link_color" value="<?php echo $thebabyshop_top_area_cart_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_cart_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_top_area_cart_link_color_hover" value="<?php echo $thebabyshop_top_area_cart_link_color_hover; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_cart_link_color_hover_help; ?></span>
                        </td>
					</tr>
                     <tr>
						<td><?php echo $entry_top_area_cart_icon; ?></td>
						<td>
                        <select name="thebabyshop_top_area_cart_icon_status">
                            <option value="1"<?php if($thebabyshop_top_area_cart_icon_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_top_area_cart_icon_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_top_area_cart_icon_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_top_area_cart_icon_style; ?></td>
						<td> 
                        <div>
							<span class="thebabyshop_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icon_cart_1.png">
							<span class="thebabyshop_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icon_cart_2.png">
							<span class="thebabyshop_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icon_cart_3.png">
							<span class="thebabyshop_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icon_cart_4.png">                            
						</div><br /><br />                        
                        <select name="thebabyshop_top_area_cart_icon_style">                     
                           <option value="1"<?php if($thebabyshop_top_area_cart_icon_style == '1') echo ' selected="selected"';?><?php if($thebabyshop_top_area_cart_icon_style == '') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_top_area_cart_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_top_area_cart_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($thebabyshop_top_area_cart_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                        </select> 
                        <span class="thebabyshop_help"><?php echo $entry_top_area_cart_icon_style_help; ?></span>
                        </td>
					</tr>                      
                          
		 </table>     
        
        <table class="form thebabyshop_sep">
                                                                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_lc; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_lc_text_color" value="<?php echo $thebabyshop_top_area_lc_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_lc_text_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>      
         
        <table class="form">
                                                                             
					<tr>
						<td colspan="2"><div><b><?php echo $entry_top_area_dropdown; ?></b></div></td>
					</tr>
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_dropdown_background_color" value="<?php echo $thebabyshop_top_area_dropdown_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_dropdown_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_top_area_dropdown_top_bar_color; ?></td>
						<td><input type="text" name="thebabyshop_top_area_dropdown_top_bar_color" value="<?php echo $thebabyshop_top_area_dropdown_top_bar_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_top_area_dropdown_top_bar_color_help; ?></span>
                        </td>
					</tr>                     
                          
		 </table>                            
                  
        </div>
        
        <div id="tab-colors-styles-top-area-main-menu" class="vtabs-content">
        
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm; ?></b></div></td>
					</tr>                      
                    <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm_background_color" value="<?php echo $thebabyshop_mm_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_mm_separator_status">
                            <option value="1"<?php if($thebabyshop_mm_separator_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_separator_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_mm_separator_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                          
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_mm_separator_size">
                           <option value="1"<?php if($thebabyshop_mm_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mm_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mm_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mm_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mm_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_mm_separator_style">
                           <option value="solid"<?php if($thebabyshop_mm_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_mm_separator_style == 'dotted') echo ' selected="selected"';?><?php if($thebabyshop_mm_separator_style == '') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_mm_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_mm_separator_color" value="<?php echo $thebabyshop_mm_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_separator_color_help; ?></span>
                        </td>                        
					</tr> 
					<tr>
						<td><?php echo $entry_mm_margin_size; ?></td>
						<td>                        
                        <select name="thebabyshop_mm_margin_size">
                           <option value="0"<?php if($thebabyshop_mm_margin_size == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_mm_margin_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mm_margin_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mm_margin_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mm_margin_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mm_margin_size == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($thebabyshop_mm_margin_size == '6') echo ' selected="selected"';?>>6</option>   
                           <option value="7"<?php if($thebabyshop_mm_margin_size == '7') echo ' selected="selected"';?>>7</option>   
                           <option value="8"<?php if($thebabyshop_mm_margin_size == '8') echo ' selected="selected"';?>>8</option>   
                           <option value="9"<?php if($thebabyshop_mm_margin_size == '9') echo ' selected="selected"';?>>9</option>   
                           <option value="10"<?php if($thebabyshop_mm_margin_size == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($thebabyshop_mm_margin_size == '11') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($thebabyshop_mm_margin_size == '12') echo ' selected="selected"';?>>12</option>
                           <option value="13"<?php if($thebabyshop_mm_margin_size == '13') echo ' selected="selected"';?>>13</option>
                           <option value="14"<?php if($thebabyshop_mm_margin_size == '14') echo ' selected="selected"';?>>14</option>
                           <option value="15"<?php if($thebabyshop_mm_margin_size == '15') echo ' selected="selected"';?>>15</option>
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_mm_border_top_status">
                            <option value="1"<?php if($thebabyshop_mm_border_top_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_border_top_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_mm_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_mm_border_top_style">
                           <option value="solid"<?php if($thebabyshop_mm_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_mm_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_mm_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_mm_border_top_color" value="<?php echo $thebabyshop_mm_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_border_top_color_help; ?></span>
                        </td>                        
					</tr>         
                    <tr>
						<td><?php echo $text_border_bottom; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_mm_border_bottom_status">
                            <option value="1"<?php if($thebabyshop_mm_border_bottom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_border_bottom_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_mm_border_bottom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>                        
			            </select>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_mm_border_bottom_style">
                           <option value="solid"<?php if($thebabyshop_mm_border_bottom_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_mm_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_mm_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_mm_border_bottom_color" value="<?php echo $thebabyshop_mm_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_border_bottom_color_help; ?></span>
                        </td>                        
					</tr> 
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_mm_radius">
                           <option value="0"<?php if($thebabyshop_mm_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_mm_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mm_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mm_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mm_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mm_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_mm_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_mm_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_mm_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_mm_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_mm_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                     
                    <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="thebabyshop_mm_shadow">
                            <option value="1"<?php if($thebabyshop_mm_shadow == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_shadow == '0') echo ' selected="selected"';?><?php if($thebabyshop_mm_shadow == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                                                          
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm1; ?></b></div></td>
					</tr>                                          
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm1_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm1_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm1_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm1_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                        
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm1_background_color" value="<?php echo $thebabyshop_mm1_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm1_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm1_background_hover_color" value="<?php echo $thebabyshop_mm1_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm1_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm1_link_color" value="<?php echo $thebabyshop_mm1_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm1_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm1_link_hover_color" value="<?php echo $thebabyshop_mm1_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm1_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm2; ?></b></div></td>
					</tr>                                            
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm2_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm2_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm2_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm2_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                      
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm2_background_color" value="<?php echo $thebabyshop_mm2_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm2_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm2_background_hover_color" value="<?php echo $thebabyshop_mm2_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm2_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm2_link_color" value="<?php echo $thebabyshop_mm2_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm2_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm2_link_hover_color" value="<?php echo $thebabyshop_mm2_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm2_link_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_mm2_main_category_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm2_main_category_link_color" value="<?php echo $thebabyshop_mm2_main_category_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm2_main_category_link_color_help; ?></span>
                        </td>
					</tr>                                      
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm3; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm3_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm3_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm3_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm3_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                  
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm3_background_color" value="<?php echo $thebabyshop_mm3_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm3_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm3_background_hover_color" value="<?php echo $thebabyshop_mm3_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm3_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm3_link_color" value="<?php echo $thebabyshop_mm3_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm3_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm3_link_hover_color" value="<?php echo $thebabyshop_mm3_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm3_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm4; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm4_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm4_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm4_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm4_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                     
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm4_background_color" value="<?php echo $thebabyshop_mm4_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm4_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm4_background_hover_color" value="<?php echo $thebabyshop_mm4_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm4_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm4_link_color" value="<?php echo $thebabyshop_mm4_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm4_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm4_link_hover_color" value="<?php echo $thebabyshop_mm4_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm4_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                            
					<tr>

						<td colspan="2"><div><b><?php echo $entry_mm5; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm5_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm5_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm5_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm5_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                         
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm5_background_color" value="<?php echo $thebabyshop_mm5_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm5_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm5_background_hover_color" value="<?php echo $thebabyshop_mm5_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm5_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm5_link_color" value="<?php echo $thebabyshop_mm5_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm5_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm5_link_hover_color" value="<?php echo $thebabyshop_mm5_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm5_link_hover_color_help; ?></span>
                        </td>
					</tr>
                          
		 </table>            
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm6; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm6_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm6_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm6_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm6_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                     
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm6_background_color" value="<?php echo $thebabyshop_mm6_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm6_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm6_background_hover_color" value="<?php echo $thebabyshop_mm6_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm6_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm6_link_color" value="<?php echo $thebabyshop_mm6_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm6_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm6_link_hover_color" value="<?php echo $thebabyshop_mm6_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm6_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>            
        
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm8; ?></b></div></td>
					</tr>                           
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm8_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm8_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm8_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm8_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                      
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm8_background_color" value="<?php echo $thebabyshop_mm8_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm8_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm8_background_hover_color" value="<?php echo $thebabyshop_mm8_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm8_background_hover_color_help; ?></span>
                        </td>
					</tr>                   
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm8_link_color" value="<?php echo $thebabyshop_mm8_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm8_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm8_link_hover_color" value="<?php echo $thebabyshop_mm8_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm8_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>           
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm7; ?></b></div></td>
					</tr>                           
                     <tr>
						<td><?php echo $text_show_background_color; ?></td>
						<td>
                        <select name="thebabyshop_mm7_background_color_status">
                            <option value="1"<?php if($thebabyshop_mm7_background_color_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm7_background_color_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm7_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                      
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm7_background_color" value="<?php echo $thebabyshop_mm7_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm7_background_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm7_background_hover_color" value="<?php echo $thebabyshop_mm7_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm7_background_hover_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm7_link_color" value="<?php echo $thebabyshop_mm7_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm7_link_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm7_link_hover_color" value="<?php echo $thebabyshop_mm7_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm7_link_hover_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>                   
        
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_mm_sub; ?></b></div></td>
					</tr>                         
                     <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_background_color" value="<?php echo $thebabyshop_mm_sub_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_background_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_background_hover_color" value="<?php echo $thebabyshop_mm_sub_background_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_background_hover_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $entry_mm_sub_titles_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_titles_background_color" value="<?php echo $thebabyshop_mm_sub_titles_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_titles_background_color_help; ?></span>
                        </td>
					</tr>                                         
                     <tr>
						<td><?php echo $text_text_color; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_text_color" value="<?php echo $thebabyshop_mm_sub_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_text_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_link_color; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_link_color" value="<?php echo $thebabyshop_mm_sub_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_link_color_help; ?></span>
                        </td>
					</tr>                     
                     <tr>
						<td><?php echo $text_link_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mm_sub_link_hover_color" value="<?php echo $thebabyshop_mm_sub_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_link_hover_color_help; ?></span>
                        </td>
					</tr>

                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>                                        
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_mm_sub_separator_style">
                           <option value="solid"<?php if($thebabyshop_mm_sub_separator_style == 'solid') echo ' selected="selected"';?><?php if($thebabyshop_mm_sub_separator_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_mm_sub_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_mm_sub_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_mm_sub_separator_color" value="<?php echo $thebabyshop_mm_sub_separator_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mm_sub_separator_color_help; ?></span>
                        </td>                        
					</tr>                                                              
                     <tr>
						<td><?php echo $text_shadow; ?></td>
						<td>
                        <select name="thebabyshop_mm_sub_box_shadow">
                            <option value="1"<?php if($thebabyshop_mm_sub_box_shadow == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm_sub_box_shadow == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_sub_box_shadow == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                                                                                                     

		 </table>  
            
        </div>                                 
        
        <div id="tab-colors-styles-midsection" class="vtabs-content">
          
        <table class="form">
                                                                                                                                                                                                   
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_box; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-8" title="" href="#">?</a></span></div></td>
					</tr>
                     <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_box_background_color" value="<?php echo $thebabyshop_mid_prod_box_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_box_background_color_help; ?></span>
                        </td>
					</tr>  
                     <tr>
						<td><?php echo $text_border_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_box_border_color" value="<?php echo $thebabyshop_mid_prod_box_border_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_box_border_color_help; ?></span>
                        </td>
					</tr>                      
                     <tr>
						<td><?php echo $text_background_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_box_background_hover_color" value="<?php echo $thebabyshop_mid_prod_box_background_hover_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_box_background_hover_color_help; ?></span>
                        </td>
					</tr>   
                     <tr>
						<td><?php echo $text_border_color_hover; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_box_border_hover_color" value="<?php echo $thebabyshop_mid_prod_box_border_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_box_border_hover_color_help; ?></span>
                        </td>
					</tr>                                                                                                               
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_mid_prod_box_radius">
                           <option value="0"<?php if($thebabyshop_mid_prod_box_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_mid_prod_box_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mid_prod_box_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mid_prod_box_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mid_prod_box_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mid_prod_box_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_mid_prod_box_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_mid_prod_box_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_mid_prod_box_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_mid_prod_box_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_mid_prod_box_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr> 
                     <tr>
						<td><?php echo $entry_midsection_product_box_sale_icon_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_box_sale_icon_color" value="<?php echo $thebabyshop_mid_prod_box_sale_icon_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_box_sale_icon_color_help; ?></span>
                        </td>
					</tr>                     
                          
		 </table> 
         
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_stars; ?></b></div></td>
					</tr>                                   
         			<tr>
						<td><?php echo $entry_midsection_product_stars_color; ?></td>
						<td>
						<span class="thebabyshop_help">1.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars1-4.png"><br />
						<span class="thebabyshop_help">2.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars2-4.png"><br />
                        <span class="thebabyshop_help">3.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars3-4.png"><br />
                        <span class="thebabyshop_help">4.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars4-4.png"><br />
                        <span class="thebabyshop_help">5.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars5-4.png"><br />
                        <span class="thebabyshop_help">6.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars6-4.png"><br />
                        <span class="thebabyshop_help">7.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars7-4.png"><br />
                        <span class="thebabyshop_help">8.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars8-4.png"><br />
                        <span class="thebabyshop_help">9.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars9-4.png"><br />
                        <span class="thebabyshop_help">10.&nbsp;&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/stars/stars10-4.png"><br /><br />
                        <select name="thebabyshop_mid_prod_stars_color">                     
                           <option value="1"<?php if($thebabyshop_mid_prod_stars_color == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mid_prod_stars_color == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mid_prod_stars_color == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($thebabyshop_mid_prod_stars_color == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mid_prod_stars_color == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($thebabyshop_mid_prod_stars_color == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_mid_prod_stars_color == '7') echo ' selected="selected"';?>>7</option>
                           <option value="8"<?php if($thebabyshop_mid_prod_stars_color == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($thebabyshop_mid_prod_stars_color == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_mid_prod_stars_color == '10') echo ' selected="selected"';?>>10</option>                            
                        </select>
                        <span class="thebabyshop_help"><?php echo $entry_midsection_product_stars_color_help; ?></span>
                        </td>
					</tr>                                  
                     
		 </table>                       
        
        <table class="form">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_page_buy; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-9" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_page_buy_section_background_color" value="<?php echo $thebabyshop_mid_prod_page_buy_section_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_page_buy_section_background_color_help; ?></span>
                        </td>
					</tr>
                    <tr>
						<td><?php echo $text_separator; ?></td>
						<td>                    
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_mid_prod_page_buy_section_separator_size">
                           <option value="1"<?php if($thebabyshop_mid_prod_page_buy_section_separator_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mid_prod_page_buy_section_separator_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mid_prod_page_buy_section_separator_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mid_prod_page_buy_section_separator_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mid_prod_page_buy_section_separator_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                      
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_mid_prod_page_buy_section_separator_style">
                           <option value="solid"<?php if($thebabyshop_mid_prod_page_buy_section_separator_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_mid_prod_page_buy_section_separator_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_mid_prod_page_buy_section_separator_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_mid_prod_page_buy_section_separator_color" value="<?php echo $thebabyshop_mid_prod_page_buy_section_separator_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_page_buy_section_separator_color_help; ?></span>
                        </td>                        
					</tr>
                    <tr>
						<td><?php echo $text_radius; ?></td>
						<td>                        
                        <select name="thebabyshop_mid_prod_page_buy_section_radius">
                           <option value="0"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '0') echo ' selected="selected"';?>>0</option>                        
                           <option value="1"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '5') echo ' selected="selected"';?>>5</option> 
                           <option value="6"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '6') echo ' selected="selected"';?>>6</option>
                           <option value="7"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '7') echo ' selected="selected"';?>>7</option>                           
                           <option value="8"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '8') echo ' selected="selected"';?>>8</option> 
                           <option value="9"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '9') echo ' selected="selected"';?>>9</option>
                           <option value="10"<?php if($thebabyshop_mid_prod_page_buy_section_radius == '10') echo ' selected="selected"';?>>10</option>        
                        </select>
                        </td>
					</tr>                                                                             
                     
		 </table>        
         
        <table class="form thebabyshop_sep">
                            
					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_page_tabs; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-10" title="" href="#">?</a></span></div></td>
					</tr>                    
					<tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_page_tabs_background_color" value="<?php echo $thebabyshop_mid_prod_page_tabs_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_page_tabs_background_color_help; ?></span>
                        </td>
					</tr>                                        
                     
		 </table>            
         
         <table class="form">

					<tr>
						<td colspan="2"><div><b><?php echo $entry_midsection_product_slider; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-11" title="" href="#">?</a></span></div></td>
					</tr>
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td><input type="text" name="thebabyshop_mid_prod_slider_background_color" value="<?php echo $thebabyshop_mid_prod_slider_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_background_color_help; ?></span>
                        </td>
					</tr>
				    <tr>
					    <td><?php echo $entry_mid_prod_slider_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_mid_prod_slider_custom" value="<?php echo $thebabyshop_mid_prod_slider_custom; ?>" id="thebabyshop_mid_prod_slider_custom" />
						<img src="<?php echo $thebabyshop_mid_prod_slider_thumb; ?>" id="thebabyshop_mid_prod_slider_thumb" />
						<br /><a onclick="image_upload('thebabyshop_mid_prod_slider_custom', 'thebabyshop_mid_prod_slider_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thebabyshop_mid_prod_slider_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_mid_prod_slider_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
				    </tr>
  					<tr>
						<td><?php echo $entry_mid_prod_slider_custom_position; ?></td>
						<td>                        
                        <select name="thebabyshop_mid_prod_slider_custom_position">
                           <option value="top center"<?php if($thebabyshop_mid_prod_slider_custom_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_mid_prod_slider_custom_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_mid_prod_slider_custom_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_mid_prod_slider_custom_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_mid_prod_slider_custom_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_mid_prod_slider_custom_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_mid_prod_slider_custom_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_mid_prod_slider_custom_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_mid_prod_slider_custom_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_mid_prod_slider_custom_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_mid_prod_slider_custom_repeat">
                           <option value="repeat"<?php if($thebabyshop_mid_prod_slider_custom_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>                        
                           <option value="repeat-x"<?php if($thebabyshop_mid_prod_slider_custom_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_mid_prod_slider_custom_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>  
                           <option value="no-repeat"<?php if($thebabyshop_mid_prod_slider_custom_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                     
                        </select>
                        </td>
					</tr>                                              
                    <tr>
						<td><?php echo $entry_mid_prod_slider_name_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_name_color" value="<?php echo $thebabyshop_mid_prod_slider_name_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_name_color_help; ?></span>
                        </td>
					</tr>     
                    <tr>
						<td><?php echo $entry_mid_prod_slider_desc_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_desc_color" value="<?php echo $thebabyshop_mid_prod_slider_desc_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_desc_color_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_price_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_price_color" value="<?php echo $thebabyshop_mid_prod_slider_price_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_price_color_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_links_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_links_color_hover" value="<?php echo $thebabyshop_mid_prod_slider_links_color_hover; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_links_color_hover_help; ?></span>
                        </td>
					</tr>    
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_bottom_bar_background_color" value="<?php echo $thebabyshop_mid_prod_slider_bottom_bar_background_color; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_help; ?></span>
                        </td>
					</tr>    
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color_hover; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_bottom_bar_background_color_hover" value="<?php echo $thebabyshop_mid_prod_slider_bottom_bar_background_color_hover; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_hover_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_background_color_sm; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_bottom_bar_background_color_sm" value="<?php echo $thebabyshop_mid_prod_slider_bottom_bar_background_color_sm; ?>" 
                        class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_bottom_bar_background_color_sm_help; ?></span>
                        </td>
					</tr> 
                    <tr>
						<td><?php echo $entry_mid_prod_slider_bottom_bar_link_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_mid_prod_slider_bottom_bar_link_color" value="<?php echo $thebabyshop_mid_prod_slider_bottom_bar_link_color; ?>" class="color {required:false,hash:true}" 
                        size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_mid_prod_slider_bottom_bar_link_color_help; ?></span>
                        </td>
					</tr> 
                          
		 </table>           
              
        </div> 
        
        <div id="tab-colors-styles-bottom-area" class="vtabs-content">
        
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f1_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-12" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f1_background_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_background_color" value="<?php echo $thebabyshop_f1_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f1_titles_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_titles_color" value="<?php echo $thebabyshop_f1_titles_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_titles_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_titles_border_bottom; ?></td>
						<td>
                        <?php echo $text_size; ?>
                         <select name="thebabyshop_f1_titles_border_bottom_size">
                           <option value="1"<?php if($thebabyshop_f1_titles_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f1_titles_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f1_titles_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f1_titles_border_bottom_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f1_titles_border_bottom_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f1_titles_border_bottom_style">
                           <option value="solid"<?php if($thebabyshop_f1_titles_border_bottom_style == 'solid') echo ' selected="selected"';?><?php if($thebabyshop_f1_titles_border_bottom_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f1_titles_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f1_titles_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f1_titles_border_bottom_color" value="<?php echo $thebabyshop_f1_titles_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_titles_border_bottom_color_help; ?></span>
                        </td>
					</tr>                                          
					<tr>
						<td><?php echo $entry_f1_text_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_text_color" value="<?php echo $thebabyshop_f1_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f1_link_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_link_color" value="<?php echo $thebabyshop_f1_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f1_link_hover_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_link_hover_color" value="<?php echo $thebabyshop_f1_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_link_hover_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $entry_f1_light_text_color; ?></td>
						<td><input type="text" name="thebabyshop_f1_light_text_color" value="<?php echo $thebabyshop_f1_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_light_text_color_help; ?></span>
                        </td>
					</tr>   
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_f1_border_top_status">
                            <option value="1"<?php if($thebabyshop_f1_border_top_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_f1_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_f1_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>                
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_f1_border_top_size">
                           <option value="1"<?php if($thebabyshop_f1_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f1_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f1_border_top_size == '3') echo ' selected="selected"';?><?php if($thebabyshop_f1_border_top_size == '') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f1_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f1_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f1_border_top_style">
                           <option value="solid"<?php if($thebabyshop_f1_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f1_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f1_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f1_border_top_color" value="<?php echo $thebabyshop_f1_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f1_border_top_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_f1_contact_icon_style; ?></td>
						<td> 
                        <div>
							<span class="thebabyshop_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_1.png">
							<span class="thebabyshop_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_2.png">
							<span class="thebabyshop_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_3.png">
							<span class="thebabyshop_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_4.png">  
							<span class="thebabyshop_help">5.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_5.png">
							<span class="thebabyshop_help">6.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_6.png">
							<span class="thebabyshop_help">7.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_7.png"><br />
							<span class="thebabyshop_help">8.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_8.png" />
                            <span class="thebabyshop_help">9.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_9.png">
							<span class="thebabyshop_help">10.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_10.png">
							<span class="thebabyshop_help">11.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_11.png">
							<span class="thebabyshop_help">12.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_12.png">  
                            <span class="thebabyshop_help">13.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_13.png">  
						</div><br /><br />                        
                        <select name="thebabyshop_f1_contact_icon_style">                     
                           <option value="1"<?php if($thebabyshop_f1_contact_icon_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f1_contact_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f1_contact_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($thebabyshop_f1_contact_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                           <option value="5"<?php if($thebabyshop_f1_contact_icon_style == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($thebabyshop_f1_contact_icon_style == '6') echo ' selected="selected"';?>>6</option> 
                           <option value="7"<?php if($thebabyshop_f1_contact_icon_style == '7') echo ' selected="selected"';?>>7</option> 
                           <option value="8"<?php if($thebabyshop_f1_contact_icon_style == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($thebabyshop_f1_contact_icon_style == '9') echo ' selected="selected"';?>>9</option> 
                           <option value="10"<?php if($thebabyshop_f1_contact_icon_style == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($thebabyshop_f1_contact_icon_style == '11') echo ' selected="selected"';?><?php if($thebabyshop_f1_contact_icon_style == '') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($thebabyshop_f1_contact_icon_style == '12') echo ' selected="selected"';?>>12</option> 
                           <option value="13"<?php if($thebabyshop_f1_contact_icon_style == '13') echo ' selected="selected"';?>>13</option>                                 
                        </select> 
                        <span class="thebabyshop_help"><?php echo $entry_f1_contact_icon_style_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f1_twitts_icon_style; ?></td>
						<td> 
                        <div>
							<span class="thebabyshop_help">1.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_1.png">
							<span class="thebabyshop_help">2.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_2.png">
							<span class="thebabyshop_help">3.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_3.png">
							<span class="thebabyshop_help">4.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_4.png">  
							<span class="thebabyshop_help">5.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_5.png">
							<span class="thebabyshop_help">6.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_6.png">
							<span class="thebabyshop_help">7.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_7.png"><br />
							<span class="thebabyshop_help">8.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_8.png" />
                            <span class="thebabyshop_help">9.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_9.png">
							<span class="thebabyshop_help">10.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_10.png">
							<span class="thebabyshop_help">11.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_11.png">
							<span class="thebabyshop_help">12.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_12.png">  
                            <span class="thebabyshop_help">13.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_13.png"> 
                            <span class="thebabyshop_help">14.&nbsp;</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_14.png">   
						</div><br /><br />                        
                        <select name="thebabyshop_f1_twitts_icon_style">                     
                           <option value="1"<?php if($thebabyshop_f1_twitts_icon_style == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f1_twitts_icon_style == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f1_twitts_icon_style == '3') echo ' selected="selected"';?>>3</option> 
                           <option value="4"<?php if($thebabyshop_f1_twitts_icon_style == '4') echo ' selected="selected"';?>>4</option> 
                           <option value="5"<?php if($thebabyshop_f1_twitts_icon_style == '5') echo ' selected="selected"';?>>5</option>
                           <option value="6"<?php if($thebabyshop_f1_twitts_icon_style == '6') echo ' selected="selected"';?>>6</option> 
                           <option value="7"<?php if($thebabyshop_f1_twitts_icon_style == '7') echo ' selected="selected"';?>>7</option> 
                           <option value="8"<?php if($thebabyshop_f1_twitts_icon_style == '8') echo ' selected="selected"';?>>8</option>
                           <option value="9"<?php if($thebabyshop_f1_twitts_icon_style == '9') echo ' selected="selected"';?>>9</option> 
                           <option value="10"<?php if($thebabyshop_f1_twitts_icon_style == '10') echo ' selected="selected"';?>>10</option> 
                           <option value="11"<?php if($thebabyshop_f1_twitts_icon_style == '11') echo ' selected="selected"';?><?php if($thebabyshop_f1_twitts_icon_style == '') echo ' selected="selected"';?>>11</option>
                           <option value="12"<?php if($thebabyshop_f1_twitts_icon_style == '12') echo ' selected="selected"';?>>12</option> 
                           <option value="13"<?php if($thebabyshop_f1_twitts_icon_style == '13') echo ' selected="selected"';?>>13</option> 
                           <option value="14"<?php if($thebabyshop_f1_twitts_icon_style == '14') echo ' selected="selected"';?>>14</option>                                 
                        </select> 
                        <span class="thebabyshop_help"><?php echo $entry_f1_twitts_icon_style_help; ?></span>
                        </td>
					</tr>                                             
                    
		 </table>
         
         <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f2_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-13" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f2_background_color; ?></td>
						<td><input type="text" name="thebabyshop_f2_background_color" value="<?php echo $thebabyshop_f2_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f2_titles_color; ?></td>
						<td><input type="text" name="thebabyshop_f2_titles_color" value="<?php echo $thebabyshop_f2_titles_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_titles_color_help; ?></span>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_titles_border_bottom; ?></td>
						<td>
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_f2_titles_border_bottom_size">
                           <option value="1"<?php if($thebabyshop_f2_titles_border_bottom_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f2_titles_border_bottom_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f2_titles_border_bottom_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f2_titles_border_bottom_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f2_titles_border_bottom_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f2_titles_border_bottom_style">
                           <option value="solid"<?php if($thebabyshop_f2_titles_border_bottom_style == 'solid') echo ' selected="selected"';?><?php if($thebabyshop_f2_titles_border_bottom_style == '') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f2_titles_border_bottom_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f2_titles_border_bottom_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f2_titles_border_bottom_color" value="<?php echo $thebabyshop_f2_titles_border_bottom_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_titles_border_bottom_color_help; ?></span>
                        </td>
					</tr>                                                                   
					<tr>
						<td><?php echo $entry_f2_link_color; ?></td>
						<td><input type="text" name="thebabyshop_f2_link_color" value="<?php echo $thebabyshop_f2_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f2_link_hover_color; ?></td>
						<td><input type="text" name="thebabyshop_f2_link_hover_color" value="<?php echo $thebabyshop_f2_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_link_hover_color_help; ?></span>
                        </td>
					</tr>   
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_f2_border_top_status">
                            <option value="1"<?php if($thebabyshop_f2_border_top_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_f2_border_top_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_f2_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_f2_border_top_size">
                           <option value="1"<?php if($thebabyshop_f2_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f2_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f2_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f2_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f2_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f2_border_top_style">
                           <option value="solid"<?php if($thebabyshop_f2_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f2_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f2_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f2_border_top_color" value="<?php echo $thebabyshop_f2_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f2_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                

		 </table>
                 
         <table class="form">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f4_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-14" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f4_background_color; ?></td>
						<td><input type="text" name="thebabyshop_f4_background_color" value="<?php echo $thebabyshop_f4_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f4_text_color; ?></td>
						<td><input type="text" name="thebabyshop_f4_text_color" value="<?php echo $thebabyshop_f4_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f4_link_color; ?></td>
						<td><input type="text" name="thebabyshop_f4_link_color" value="<?php echo $thebabyshop_f4_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f4_link_hover_color; ?></td>
						<td><input type="text" name="thebabyshop_f4_link_hover_color" value="<?php echo $thebabyshop_f4_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_link_hover_color_help; ?></span>
                        </td>
					</tr>    
					<tr>
						<td><?php echo $entry_f4_light_text_color; ?></td>
						<td><input type="text" name="thebabyshop_f4_light_text_color" value="<?php echo $thebabyshop_f4_light_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_light_text_color_help; ?></span>
                        </td>
					</tr> 
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_f4_border_top_status">
                            <option value="1"<?php if($thebabyshop_f4_border_top_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_f4_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_f4_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_f4_border_top_size">
                           <option value="1"<?php if($thebabyshop_f4_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f4_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f4_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f4_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f4_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f4_border_top_style">
                           <option value="solid"<?php if($thebabyshop_f4_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f4_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f4_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f4_border_top_color" value="<?php echo $thebabyshop_f4_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f4_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                      

		 </table>
         
         <table class="form thebabyshop_sep">
        
					<tr>
						<td colspan="2"><div><b><?php echo $entry_bottom_area_f5_color; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-15" title="" href="#">?</a></span></div></td>
					</tr>
					<tr>
						<td><?php echo $entry_f5_background_color; ?></td>
						<td><input type="text" name="thebabyshop_f5_background_color" value="<?php echo $thebabyshop_f5_background_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f5_background_color_help; ?></span>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $entry_f5_text_color; ?></td>
						<td><input type="text" name="thebabyshop_f5_text_color" value="<?php echo $thebabyshop_f5_text_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f5_text_color_help; ?></span>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_f5_link_color; ?></td>
						<td><input type="text" name="thebabyshop_f5_link_color" value="<?php echo $thebabyshop_f5_link_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f5_link_color_help; ?></span>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_f5_link_hover_color; ?></td>
						<td><input type="text" name="thebabyshop_f5_link_hover_color" value="<?php echo $thebabyshop_f5_link_hover_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f5_link_hover_color_help; ?></span>
                        </td>
					</tr>
              		<tr>
						<td><?php echo $text_border_top; ?></td>
						<td>
                        <?php echo $text_show; ?>
                        <select name="thebabyshop_f5_border_top_status">
                            <option value="1"<?php if($thebabyshop_f5_border_top_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_f5_border_top_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_f5_border_top_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>         
                        <br /><br />
                        <?php echo $text_size; ?>
                        <select name="thebabyshop_f5_border_top_size">
                           <option value="1"<?php if($thebabyshop_f5_border_top_size == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_f5_border_top_size == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_f5_border_top_size == '3') echo ' selected="selected"';?>>3</option>
                           <option value="4"<?php if($thebabyshop_f5_border_top_size == '4') echo ' selected="selected"';?>>4</option>
                           <option value="5"<?php if($thebabyshop_f5_border_top_size == '5') echo ' selected="selected"';?>>5</option>                                                       
                        </select>
                        <span class="thebabyshop_help"><?php echo $text_px; ?></span>
                        <br /><br />                            
                        <?php echo $text_style; ?>          
                        <select name="thebabyshop_f5_border_top_style">
                           <option value="solid"<?php if($thebabyshop_f5_border_top_style == 'solid') echo ' selected="selected"';?>><?php echo $text_solid; ?></option>
                           <option value="dotted"<?php if($thebabyshop_f5_border_top_style == 'dotted') echo ' selected="selected"';?>><?php echo $text_dotted; ?></option>
                           <option value="dashed"<?php if($thebabyshop_f5_border_top_style == 'dashed') echo ' selected="selected"';?>><?php echo $text_dashed; ?></option>                          
                        </select>
                        <br /><br />
                        <?php echo $text_color; ?>
                        <input type="text" name="thebabyshop_f5_border_top_color" value="<?php echo $thebabyshop_f5_border_top_color; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_f5_border_top_color_help; ?></span>
                        </td>
					</tr>                                                                                                    

		 </table>                                          
        </div>     
        
        </div>             


        <div id="tab-background-images">
      
            <div id="background_images_settings_tabs" class="vtabs">
             <a href="#tab-background-images-body"><?php echo $entry_pattern_thebabyshop_body; ?></a>
             <a href="#tab-background-images-main-column"><?php echo $entry_pattern_thebabyshop_mc; ?></a>  
             <a href="#tab-background-images-top-area"><?php echo $entry_pattern_thebabyshop_ta; ?></a>             
             <a href="#tab-background-images-main-menu"><?php echo $entry_pattern_thebabyshop_mm; ?></a>
             <a href="#tab-background-images-bottom-area"><?php echo $entry_pattern_thebabyshop_f; ?></a>                                   
           </div> 
        
        <div id="tab-background-images-body" class="vtabs-content">        
        <table class="form thebabyshop_sep">  
                            
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_body; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-16" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>><?php echo $bgcr; ?></option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?> Default: 193.</span>
					    </td>
				    </tr>                       
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_custom" value="<?php echo $thebabyshop_bg_image_custom; ?>" id="thebabyshop_bg_image_custom" />
						<img src="<?php echo $thebabyshop_bg_image_thumb; ?>" id="thebabyshop_bg_image_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_custom', 'thebabyshop_bg_image_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thebabyshop_bg_image_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>                    
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>                           
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_attachment">
                           <option value="scroll"<?php if($thebabyshop_bg_image_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($thebabyshop_bg_image_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table> 
        </div>   
        
        <div id="tab-background-images-main-column" class="vtabs-content">        
        <table class="form thebabyshop_sep">      
                      
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_mc; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-17" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_mc">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_mc'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_mc_custom" value="<?php echo $thebabyshop_bg_image_mc_custom; ?>" id="thebabyshop_bg_image_mc_custom" />
						<img src="<?php echo $thebabyshop_bg_image_mc_thumb; ?>" id="thebabyshop_bg_image_mc_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_mc_custom', 'thebabyshop_bg_image_mc_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_mc_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_mc_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_mc_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_mc_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_mc_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_mc_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_mc_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_mc_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_mc_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_mc_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_mc_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_mc_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_mc_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_mc_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_mc_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_mc_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_mc_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_mc_attachment">
                           <option value="scroll"<?php if($thebabyshop_bg_image_mc_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($thebabyshop_bg_image_mc_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table>    
        </div> 
        
        <div id="tab-background-images-top-area" class="vtabs-content">        
        <table class="form thebabyshop_sep">      
                      
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_ta; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-18" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_ta">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_ta'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_ta_custom" value="<?php echo $thebabyshop_bg_image_ta_custom; ?>" id="thebabyshop_bg_image_ta_custom" />
						<img src="<?php echo $thebabyshop_bg_image_ta_thumb; ?>" id="thebabyshop_bg_image_ta_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_ta_custom', 'thebabyshop_bg_image_ta_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_ta_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_ta_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_ta_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_ta_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_ta_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_ta_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_ta_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_ta_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_ta_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_ta_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_ta_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_ta_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_ta_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_ta_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_ta_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_ta_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_ta_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                       
  					<tr>
						<td><?php echo $entry_bg_image_attachment; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_ta_attachment">
                           <option value="scroll"<?php if($thebabyshop_bg_image_ta_attachment == 'scroll') echo ' selected="selected"';?>><?php echo $text_attachment_s; ?></option>
                           <option value="fixed"<?php if($thebabyshop_bg_image_ta_attachment == 'fixed') echo ' selected="selected"';?>><?php echo $text_attachment_f; ?></option>                      
                        </select>
                        </td>
					</tr>
                    
        </table>    
        </div>         
                
        <div id="tab-background-images-main-menu" class="vtabs-content">        
        <table class="form thebabyshop_sep">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_mm; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-19" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_mm">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_mm'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?><br /><span class="thebabyshop_help"><?php echo $entry_bg_image_mm_custom_help; ?></span></td>
					    <td><input type="hidden" name="thebabyshop_bg_image_mm_custom" value="<?php echo $thebabyshop_bg_image_mm_custom; ?>" id="thebabyshop_bg_image_mm_custom" />
						<img src="<?php echo $thebabyshop_bg_image_mm_thumb; ?>" id="thebabyshop_bg_image_mm_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_mm_custom', 'thebabyshop_bg_image_mm_thumb');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_mm_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_mm_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_mm_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_mm_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_mm_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_mm_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>  
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_mm_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                     
                        </select>
                        </td>
					</tr>                        
				    <tr>
					    <td><?php echo $entry_bg_image_mmt_custom; ?><br /><span class="thebabyshop_help"><?php echo $entry_bg_image_mmt_custom_help; ?></span></td>
					    <td><input type="hidden" name="thebabyshop_bg_image_mmt_custom" value="<?php echo $thebabyshop_bg_image_mmt_custom; ?>" id="thebabyshop_bg_image_mmt_custom" />
						<img src="<?php echo $thebabyshop_bg_image_mmt_thumb; ?>" id="thebabyshop_bg_image_mmt_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_mmt_custom', 'thebabyshop_bg_image_mmt_thumb');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_mmt_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_mmt_custom').attr('value', '');"><?php echo $text_clear; ?></a>                  
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_mmt_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_mmt_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_mmt_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_mmt_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_mmt_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>               
                        </select>
                        </td>
					</tr>  
                                                            
         </table>           
        </div>           
                
        <div id="tab-background-images-bottom-area" class="vtabs-content">        
        <table class="form">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_f1; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-20" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_f1">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_f1'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr>
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_f1_custom" value="<?php echo $thebabyshop_bg_image_f1_custom; ?>" id="thebabyshop_bg_image_f1_custom" />
						<img src="<?php echo $thebabyshop_bg_image_f1_thumb; ?>" id="thebabyshop_bg_image_f1_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_f1_custom', 'thebabyshop_bg_image_f1_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_f1_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_f1_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f1_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_f1_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_f1_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_f1_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_f1_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_f1_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_f1_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_f1_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_f1_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_f1_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f1_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_f1_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_f1_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_f1_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>       
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_f1_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                
                        </select>
                        </td>
					</tr>                       
                    
        </table> 
        
        <table class="form thebabyshop_sep">   
                         
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_f2; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-21" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_f2">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_f2'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr>
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_f2_custom" value="<?php echo $thebabyshop_bg_image_f2_custom; ?>" id="thebabyshop_bg_image_f2_custom" />
						<img src="<?php echo $thebabyshop_bg_image_f2_thumb; ?>" id="thebabyshop_bg_image_f2_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_f2_custom', 'thebabyshop_bg_image_f2_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_f2_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_f2_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f2_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_f2_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_f2_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_f2_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_f2_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_f2_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_f2_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_f2_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_f2_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_f2_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>                           
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f2_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_f2_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_f2_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_f2_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_f2_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                   
                        </select>
                        </td>
					</tr>                         
                    
        </table> 
         
        <table class="form">  
                          
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_f4; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-22" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_f4">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_f4'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_f4_custom" value="<?php echo $thebabyshop_bg_image_f4_custom; ?>" id="thebabyshop_bg_image_f4_custom" />
						<img src="<?php echo $thebabyshop_bg_image_f4_thumb; ?>" id="thebabyshop_bg_image_f4_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_f4_custom', 'thebabyshop_bg_image_f4_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_f4_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_f4_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f4_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_f4_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_f4_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_f4_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_f4_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_f4_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_f4_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_f4_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_f4_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_f4_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f4_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_f4_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_f4_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_f4_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option> 
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_f4_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>                      
                        </select>
                        </td>
					</tr>                        
                    
        </table> 
        
        <table class="form thebabyshop_sep">    
                        
				    <tr>
					    <td><div><b><?php echo $entry_pattern_thebabyshop_f5; ?></b><span class="thebabyshop_help_tip"><a id="thebabyshop-help-23" title="" href="#">?</a></span></div></td>
					    <td>
						<select name="thebabyshop_pattern_thebabyshop_f5">
                        <?php foreach ($bgp as $bgv => $bgcr) { ?>
                        <?php ($bgv == $this->config->get('thebabyshop_pattern_thebabyshop_f5'))?$bp='selected':$bp=''; ?>
                           <option value="<?php echo $bgv; ?>" <?php echo $bp; ?>> <?php echo $bgcr; ?> </option>	
                        <?php } ?> 
						</select>
						<span class="thebabyshop_help"><?php echo $entry_pattern_thebabyshop_help; ?></span>     
					    </td>
				    </tr> 
				    <tr>
					    <td><?php echo $entry_bg_image_custom; ?> </td>
					    <td><input type="hidden" name="thebabyshop_bg_image_f5_custom" value="<?php echo $thebabyshop_bg_image_f5_custom; ?>" id="thebabyshop_bg_image_f5_custom" />
						<img src="<?php echo $thebabyshop_bg_image_f5_thumb; ?>" id="thebabyshop_bg_image_f5_thumb" />
						<br /><a onclick="image_upload('thebabyshop_bg_image_f5_custom', 'thebabyshop_bg_image_f5_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a onclick="$('#thebabyshop_bg_image_f5_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_bg_image_f5_custom').attr('value', '');"><?php echo $text_clear; ?></a>
					    </td>
				    </tr>  
  					<tr>
						<td><?php echo $entry_bg_image_position; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f5_position">
                           <option value="top center"<?php if($thebabyshop_bg_image_f5_position == 'top center') echo ' selected="selected"';?>><?php echo $text_position_tc; ?></option>
                           <option value="top left"<?php if($thebabyshop_bg_image_f5_position == 'top left') echo ' selected="selected"';?>><?php echo $text_position_tl; ?></option>
                           <option value="top right"<?php if($thebabyshop_bg_image_f5_position == 'top right') echo ' selected="selected"';?>><?php echo $text_position_tr; ?></option> 
                           <option value="center"<?php if($thebabyshop_bg_image_f5_position == 'center') echo ' selected="selected"';?>><?php echo $text_position_c; ?></option>
                           <option value="left"<?php if($thebabyshop_bg_image_f5_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>
                           <option value="right"<?php if($thebabyshop_bg_image_f5_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="bottom center"<?php if($thebabyshop_bg_image_f5_position == 'bottom center') echo ' selected="selected"';?>><?php echo $text_position_bc; ?></option>
                           <option value="bottom left"<?php if($thebabyshop_bg_image_f5_position == 'bottom left') echo ' selected="selected"';?>><?php echo $text_position_bl; ?></option>
                           <option value="bottom right"<?php if($thebabyshop_bg_image_f5_position == 'bottom right') echo ' selected="selected"';?>><?php echo $text_position_br; ?></option>
                        </select>
                        </td>
					</tr> 
  					<tr>
						<td><?php echo $entry_bg_image_repeat; ?></td>
						<td>                        
                        <select name="thebabyshop_bg_image_f5_repeat">
                           <option value="repeat"<?php if($thebabyshop_bg_image_f5_repeat == 'repeat') echo ' selected="selected"';?>><?php echo $text_repeat_r; ?></option>
                           <option value="repeat-x"<?php if($thebabyshop_bg_image_f5_repeat == 'repeat-x') echo ' selected="selected"';?>><?php echo $text_repeat_rx; ?></option> 
                           <option value="repeat-y"<?php if($thebabyshop_bg_image_f5_repeat == 'repeat-y') echo ' selected="selected"';?>><?php echo $text_repeat_ry; ?></option>
                           <option value="no-repeat"<?php if($thebabyshop_bg_image_f5_repeat == 'no-repeat') echo ' selected="selected"';?>><?php echo $text_repeat_nr; ?></option>         
                        </select>
                        </td>
					</tr>                        
                    
        </table> 
        </div>      
                             
        <div class="vtabs-content">            
        <table class="form">
        
					<tr>
					    <td>
                        <br />
                        <div>
                        <?php echo $entry_transparent_pattern_thebabyshop; ?>
						</div><br />
                        
                        <div style="float:left;margin-bottom:20px">
                        <?php for ($bgp = 1; $bgp <= 75; $bgp++) { ?>
                            <div class="ptn"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/patterns/admin_thumb/p<?php echo $bgp; ?>.png"><span class="thebabyshop_help ptn_nr"><?php echo $bgp; ?></span></div> 
						<?php } ?>	
						</div>
                        
                        <div style="float:left;margin-bottom:20px">
                        <?php echo $entry_color_pattern_thebabyshop; ?>
						</div>   
                        
                        <div style="float:left;">
                        <?php for ($bgp = 101; $bgp <= 379; $bgp++) { ?>
                            <div class="ptn"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/patterns/admin_thumb/p<?php echo $bgp; ?>.png"><span class="thebabyshop_help ptn_nr"><?php echo $bgp; ?></span></div> 
						<?php } ?>	
						</div> 
                            
					    </td>
					</tr>
                    
        </table>  
        </div>
        
        </div>    
        
        
        
        
        <div id="tab-fonts">
      
        <table class="form">
        
					<tr>
						<td><a href="http://www.google.com/webfonts/" target="_blank" class="link" style="margin-left:0"><?php echo $text_google_font_collection; ?></a></td>
						<td></td>
					</tr>
                    
        </table> 
      
        <table class="form">
        
					<tr>
						<td><?php echo $entry_body_font; ?></td>
						<td>                        
                        <select name="thebabyshop_body_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_body_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        </td>
					</tr>
                    
        </table> 
        
        <table class="form thebabyshop_sep">    
                                                                          
					<tr>
						<td><?php echo $entry_title_font; ?></td>
						<td>                        
                        <select name="thebabyshop_title_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_title_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_title_font_weight">
                           <option value="normal"<?php if($thebabyshop_title_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_title_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp; 
                        <select name="thebabyshop_title_font_uppercase">
                            <option value="1"<?php if($thebabyshop_title_font_uppercase == '1') echo ' selected="selected"';?><?php if($thebabyshop_title_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_title_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
                    
        </table> 
        
        <table class="form">    
                                                                 
					<tr>
						<td><?php echo $entry_price_font; ?></td>
						<td>                        
                        <select name="thebabyshop_price_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_price_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_price_font_weight">
                           <option value="normal"<?php if($thebabyshop_price_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_price_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>                    
                        </td>
					</tr>                 
                    
        </table> 
        
        <table class="form thebabyshop_sep">    
                                            
					<tr>
						<td><?php echo $entry_button_font; ?></td>
						<td>                        
                        <select name="thebabyshop_button_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_button_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_button_font_weight">
                           <option value="normal"<?php if($thebabyshop_button_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_button_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select> 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_button_font_uppercase">
                            <option value="1"<?php if($thebabyshop_button_font_uppercase == '1') echo ' selected="selected"';?><?php if($thebabyshop_button_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_button_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                   
                    
        </table> 
        
        <table class="form">    
                                            
					<tr>
						<td><?php echo $entry_search_font; ?></td>
						<td>                        
                        <select name="thebabyshop_search_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_search_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                       <select name="thebabyshop_search_font_weight">
                           <option value="normal"<?php if($thebabyshop_search_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_search_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="thebabyshop_search_font_size">
                           <option value="12"<?php if($thebabyshop_search_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($thebabyshop_search_font_size == '13') echo ' selected="selected"';?><?php if($thebabyshop_search_font_size == '') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($thebabyshop_search_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($thebabyshop_search_font_size == '15') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($thebabyshop_search_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($thebabyshop_search_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($thebabyshop_search_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($thebabyshop_search_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($thebabyshop_search_font_size == '20') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($thebabyshop_search_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($thebabyshop_search_font_size == '24') echo ' selected="selected"';?>>24px</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_search_font_uppercase">
                            <option value="1"<?php if($thebabyshop_search_font_uppercase == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_search_font_uppercase == '0') echo ' selected="selected"';?><?php if($thebabyshop_search_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                          
                        </td>
					</tr> 
                    
        </table> 
        
        <table class="form thebabyshop_sep">    
                                               
					<tr>
						<td><?php echo $entry_cart_font; ?></td>
						<td>                        
                        <select name="thebabyshop_cart_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_cart_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_cart_font_weight">
                           <option value="normal"<?php if($thebabyshop_cart_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_cart_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="thebabyshop_cart_font_size">
                           <option value="12"<?php if($thebabyshop_cart_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($thebabyshop_cart_font_size == '13') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($thebabyshop_cart_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($thebabyshop_cart_font_size == '15') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($thebabyshop_cart_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($thebabyshop_cart_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($thebabyshop_cart_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($thebabyshop_cart_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($thebabyshop_cart_font_size == '20') echo ' selected="selected"';?><?php if($thebabyshop_cart_font_size == '') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($thebabyshop_cart_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($thebabyshop_cart_font_size == '24') echo ' selected="selected"';?>>24px</option>                           
                        </select> 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;
                        <select name="thebabyshop_cart_font_uppercase">
                            <option value="1"<?php if($thebabyshop_cart_font_uppercase == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_cart_font_uppercase == '0') echo ' selected="selected"';?><?php if($thebabyshop_cart_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>  
                                                                                                                                                          
        </table>           
        
        <table class="form">    
                                               
					<tr>
						<td><?php echo $entry_main_menu_font; ?></td>
						<td>                        
                        <select name="thebabyshop_main_menu_font">
                        <?php foreach ($googlefonts as $vlfont => $crfont) { ?>
                        <?php ($vlfont == $this->config->get('thebabyshop_main_menu_font'))?$cf='selected':$cf=''; ?>
                           <option value="<?php echo $vlfont; ?>" <?php echo $cf; ?>> <?php echo $crfont; ?> </option>	
                        <?php } ?>                            
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_weight; ?>&nbsp;&nbsp;
                       <select name="thebabyshop_mm_font_weight">
                           <option value="normal"<?php if($thebabyshop_mm_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_mm_font_weight == 'bold') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_size; ?>&nbsp;&nbsp; 
                        <select name="thebabyshop_mm_font_size">
                           <option value="12"<?php if($thebabyshop_mm_font_size == '12') echo ' selected="selected"';?>>12px</option>
                           <option value="13"<?php if($thebabyshop_mm_font_size == '13') echo ' selected="selected"';?>>13px</option>      
                           <option value="14"<?php if($thebabyshop_mm_font_size == '14') echo ' selected="selected"';?>>14px</option>      
                           <option value="15"<?php if($thebabyshop_mm_font_size == '15') echo ' selected="selected"';?><?php if($thebabyshop_mm_font_size == '') echo ' selected="selected"';?>>15px</option>      
                           <option value="16"<?php if($thebabyshop_mm_font_size == '16') echo ' selected="selected"';?>>16px</option>
                           <option value="17"<?php if($thebabyshop_mm_font_size == '17') echo ' selected="selected"';?>>17px</option>      
                           <option value="18"<?php if($thebabyshop_mm_font_size == '18') echo ' selected="selected"';?>>18px</option>
                           <option value="19"<?php if($thebabyshop_mm_font_size == '19') echo ' selected="selected"';?>>19px</option>      
                           <option value="20"<?php if($thebabyshop_mm_font_size == '20') echo ' selected="selected"';?>>20px</option>
                           <option value="22"<?php if($thebabyshop_mm_font_size == '22') echo ' selected="selected"';?>>22px</option>      
                           <option value="24"<?php if($thebabyshop_mm_font_size == '24') echo ' selected="selected"';?>>24px</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <?php echo $text_uppercase; ?>&nbsp;&nbsp;

                        <select name="thebabyshop_mm_font_uppercase">
                            <option value="1"<?php if($thebabyshop_mm_font_uppercase == '1') echo ' selected="selected"';?><?php if($thebabyshop_mm_font_uppercase == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_mm_font_uppercase == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>  
                                                                                                                                                          
        </table>   
       
        <table class="form thebabyshop_sep">    
                                            
					<tr>
						<td><?php echo $entry_product_name_font_weight; ?></td>
						<td>                        
                        <select name="thebabyshop_product_name_font_weight">
                           <option value="normal"<?php if($thebabyshop_product_name_font_weight == 'normal') echo ' selected="selected"';?>><?php echo $text_normal; ?></option>
                           <option value="bold"<?php if($thebabyshop_product_name_font_weight == 'bold') echo ' selected="selected"';?><?php if($thebabyshop_product_name_font_weight == '') echo ' selected="selected"';?>><?php echo $text_bold; ?></option>                         
                        </select>
                        </td>
					</tr>                    
                    
        </table>                                     

        </div>               

        
        <div id="tab-footer">
           <div id="footer_settings_tabs" class="vtabs">
             <a href="#tab-footer-contacts"><?php echo $entry_contacts; ?></a>      
             <a href="#tab-footer-twitter-block"><?php echo $entry_twitter_block; ?></a>
             <a href="#tab-footer-custom"><?php echo $entry_custom; ?></a>
             <a href="#tab-footer-information-block"><?php echo $entry_information_block; ?></a>                                                     
             <a href="#tab-footer-payment-images"><?php echo $entry_payment_block; ?></a>
             <a href="#tab-footer-powered"><?php echo $entry_powered; ?></a>             
             <a href="#tab-footer-follow-us"><?php echo $entry_follow_us; ?></a>
             <a href="#tab-footer-info"><?php echo $entry_about; ?></a>                                                
           </div>
        
        <div id="tab-footer-contacts" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_contacts_status; ?></td>
						<td colspan="2">
                        <select name="thebabyshop_contacts_status">
                            <option value="1"<?php if($thebabyshop_contacts_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_contacts_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_contacts_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_title; ?></td>
						<td colspan="2">
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contacts_title<?php echo $language['language_id']; ?>" id="thebabyshop_contacts_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contacts_title' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
					</tr>                      
					<tr>
						<td><?php echo $entry_contacts_mphone; ?></td>
						<td width="150">
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_mphone1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_mphone1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_mphone1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_mphone2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_mphone2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_mphone2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_sphone; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_sphone1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_sphone1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_sphone1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_sphone2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_sphone2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_sphone2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>        
					<tr>
						<td><?php echo $entry_contacts_fax; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_fax1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_fax1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_fax1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_fax2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_fax2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_fax2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_email; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_email1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_email1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_email1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_email2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_email2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_email2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>  
					<tr>
						<td><?php echo $entry_contacts_skype; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_skype1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_skype1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_skype1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_skype2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_skype2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_skype2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>
					<tr>
						<td><?php echo $entry_contacts_location; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_location1<?php echo $language['language_id']; ?>" id="thebabyshop_contact_location1<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_location1' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
                        <td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_contact_location2<?php echo $language['language_id']; ?>" id="thebabyshop_contact_location2<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_contact_location2' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_contacts_hours; ?></td>
						<td colspan="2">
                        <?php foreach ($languages as $language) { ?>
                        <textarea name="thebabyshop_contact_hours<?php echo $language['language_id']; ?>" rows="5" cols="30" /><?php echo ${'thebabyshop_contact_hours' . $language['language_id']}; ?></textarea>
                        <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>                                                                                
   
		 </table> 
         </div>
                        
        <div id="tab-footer-twitter-block" class="vtabs-content">    
        <table class="form">

					<tr>
						<td><?php echo $entry_twitter_block_status; ?></td>
						<td colspan="2">
                        <select name="thebabyshop_twitter_block_status">
                            <option value="1"<?php if($thebabyshop_twitter_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_twitter_block_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_twitter_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
					<tr>
						<td><?php echo $text_title; ?></td>
						<td>
                        <?php foreach ($languages as $language) { ?>
	                    <input type="text" name="thebabyshop_twitter_block_title<?php echo $language['language_id']; ?>" id="thebabyshop_twitter_block_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_twitter_block_title' . $language['language_id']}; ?>" />
	                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                        <?php } ?>
                        </td>
					</tr>                          
					<tr>
						<td><?php echo $entry_twitter_block_user; ?></td>
						<td><input type="text" name="thebabyshop_twitter_block_user" value="<?php echo $thebabyshop_twitter_block_user; ?>" /></td>
					</tr> 
                    <tr>
						<td><?php echo $entry_twitter_block_widget_id; ?></td>
						<td><input type="text" name="thebabyshop_twitter_block_widget_id" value="<?php echo $thebabyshop_twitter_block_widget_id; ?>" />
                        <a href="http://321cart.com/thebabyshop/documentation/assets/images/screen_14.png" target="_blank" class="link"><?php echo $text_twitter_find_widget_id; ?></a></td>
					</tr> 
					<tr>
                        <td><?php echo $entry_twitter_block_tweets; ?></td>
                        <td>
                        <select name="thebabyshop_twitter_block_tweets">
                           <option value="1"<?php if($thebabyshop_twitter_block_tweets == '1') echo ' selected="selected"';?>>1</option>
                           <option value="2"<?php if($thebabyshop_twitter_block_tweets == '2') echo ' selected="selected"';?>>2</option>
                           <option value="3"<?php if($thebabyshop_twitter_block_tweets == '3') echo ' selected="selected"';?><?php if($thebabyshop_twitter_block_tweets == '') echo ' selected="selected"';?>>3</option>
                        </select>
                        </td>
					</tr>                      
					<tr>
                        <td><?php echo $entry_twitter_block_theme; ?></td>
                        <td>
                        <select name="thebabyshop_twitter_block_theme">
                           <option value="dark"<?php if($thebabyshop_twitter_block_theme == 'dark') echo ' selected="selected"';?>>dark</option>
                           <option value="light"<?php if($thebabyshop_twitter_block_theme == 'light') echo ' selected="selected"';?>>light</option>
                        </select>
                        </td>
					</tr>                                     

		 </table>  
         </div>
         
        <div id="tab-footer-custom" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_status; ?></td>
						<td>
                        <select name="thebabyshop_custom_status">
                            <option value="1"<?php if($thebabyshop_custom_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_custom_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_custom_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
                    
         </table>        
                 
                   <div id="footer_thebabyshop_custom" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_custom<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_custom<?php echo $language['language_id']; ?>">
                   <table class="form">         
				     <tr>
						<td><?php echo $entry_custom_title; ?></td>
						<td><input type="text" name="thebabyshop_custom_title<?php echo $language['language_id']; ?>" id="thebabyshop_custom_title<?php echo $language['language_id']; ?>" value="<?php echo ${'thebabyshop_custom_title' . $language['language_id']}; ?>" /></td>
					 </tr>                      
					 <tr>
						<td><?php echo $entry_custom_content; ?></td>
						<td><textarea name="thebabyshop_custom_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_custom_content' . $language['language_id']}) ? ${'thebabyshop_custom_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>

		</div>       
         
        <div id="tab-footer-information-block" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_information_block_status; ?></td>
						<td>
                        <select name="thebabyshop_information_block_status">
                            <option value="1"<?php if($thebabyshop_information_block_status == '1') echo ' selected="selected"';?><?php if($thebabyshop_information_block_status == '') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_information_block_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>                 

		 </table>
         </div>                                                      
         
        <div id="tab-footer-payment-images" class="vtabs-content">          
        <table class="form">
        
					<tr>
						<td><?php echo $entry_payment_block_status; ?></td>
						<td colspan="3">
                        <select name="thebabyshop_payment_block_status">
                            <option value="1"<?php if($thebabyshop_payment_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_payment_block_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_payment_block_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>     
				    <tr>
					    <td><?php echo $entry_payment_block_custom; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_block_custom_status"<?php if($thebabyshop_payment_block_custom_status == '1') echo ' checked="checked"';?> /> 
                        Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        </td>                        
					    <td width="150"><input type="hidden" name="thebabyshop_payment_block_custom" value="<?php echo $thebabyshop_payment_block_custom; ?>" id="thebabyshop_payment_block_custom" />
						<img src="<?php echo $thebabyshop_payment_block_custom_thumb; ?>" id="thebabyshop_payment_block_custom_thumb" />
						<br /><a onclick="image_upload('thebabyshop_payment_block_custom', 'thebabyshop_payment_block_custom_thumb');"><?php echo $text_select; ?></a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thebabyshop_payment_block_custom_thumb').attr('src', '<?php echo $no_image; ?>'); $('#thebabyshop_payment_block_custom').attr('value', '');">
                        <?php echo $text_clear; ?></a>
					    </td>
						<td>
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_block_custom_url" value="<?php echo $thebabyshop_payment_block_custom_url; ?>" />
                        </td>                          
				    </tr>
                          
		 </table>      
        
        <table class="form thebabyshop_sep">
                                             
					<tr>
						<td colspan="4"><div><b><?php echo $entry_thebabyshop_payment_images; ?></b></div></td>
					</tr>                                              
					<tr>
						<td><?php echo $entry_payment_paypal; ?></td>
						<td width="130">
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_paypal"<?php if($thebabyshop_payment_paypal == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_paypal.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_paypal_url" value="<?php echo $thebabyshop_payment_paypal_url; ?>" />
                        </td>                        
					</tr>

					<tr>
						<td><?php echo $entry_payment_visa; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_visa"<?php if($thebabyshop_payment_visa == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_visa.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_visa_url" value="<?php echo $thebabyshop_payment_visa_url; ?>" />
                        </td>                        
					</tr>  
                    
					<tr>
						<td><?php echo $entry_payment_mastercard; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_mastercard"<?php if($thebabyshop_payment_mastercard == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_mastercard.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_mastercard_url" value="<?php echo $thebabyshop_payment_mastercard_url; ?>" />
                        </td>                        
					</tr>
                    
					<tr>
						<td><?php echo $entry_payment_maestro; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_maestro"<?php if($thebabyshop_payment_maestro == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_maestro.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_maestro_url" value="<?php echo $thebabyshop_payment_maestro_url; ?>" />
                        </td>                        
					</tr>
                   
					<tr>
						<td><?php echo $entry_payment_discover; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_discover"<?php if($thebabyshop_payment_discover == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_discover.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_discover_url" value="<?php echo $thebabyshop_payment_discover_url; ?>" />
                        </td>                        
					</tr>                                          
                    
					<tr>
						<td><?php echo $entry_payment_moneybookers; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_moneybookers"<?php if($thebabyshop_payment_moneybookers == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_moneybookers.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_moneybookers_url" value="<?php echo $thebabyshop_payment_moneybookers_url; ?>" />
                        </td>                        
					</tr>   
                    
					<tr>
						<td><?php echo $entry_payment_american_express; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_american_express"<?php if($thebabyshop_payment_american_express == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_american_express.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_american_express_url" value="<?php echo $thebabyshop_payment_american_express_url; ?>" />
                        </td>                        
					</tr>  
					<tr>
						<td><?php echo $entry_payment_cirrus; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_cirrus"<?php if($thebabyshop_payment_cirrus == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_cirrus.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_cirrus_url" value="<?php echo $thebabyshop_payment_cirrus_url; ?>" />
                        </td>                        
					</tr>   
					<tr>
						<td><?php echo $entry_payment_delta; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_delta"<?php if($thebabyshop_payment_delta == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_delta.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_delta_url" value="<?php echo $thebabyshop_payment_delta_url; ?>" />
                        </td>                        
					</tr>  
                    <tr>
						<td><?php echo $entry_payment_google; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_google"<?php if($thebabyshop_payment_google == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_google.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_google_url" value="<?php echo $thebabyshop_payment_google_url; ?>" />
                        </td>                        
					</tr>
                    <tr>
						<td><?php echo $entry_payment_2co; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_2co"<?php if($thebabyshop_payment_2co == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_2co.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_2co_url" value="<?php echo $thebabyshop_payment_2co_url; ?>" />
                        </td>                        
					</tr>
                    <tr>
						<td><?php echo $entry_payment_sage; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_sage"<?php if($thebabyshop_payment_sage == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_sage.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_sage_url" value="<?php echo $thebabyshop_payment_sage_url; ?>" />
                        </td>                        
					</tr>   
                    <tr>
						<td><?php echo $entry_payment_solo; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_solo"<?php if($thebabyshop_payment_solo == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_solo.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_solo_url" value="<?php echo $thebabyshop_payment_solo_url; ?>" />
                        </td>                        
					</tr>
                    <tr>
						<td><?php echo $entry_payment_switch; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_switch"<?php if($thebabyshop_payment_switch == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_switch.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_switch_url" value="<?php echo $thebabyshop_payment_switch_url; ?>" />
                        </td>                        
					</tr>  
                    <tr>
						<td><?php echo $entry_payment_western_union; ?></td>
						<td>
                        <div style="margin-top:6px; float:left"><label class="s_checkbox">
                        <input type="checkbox" value="1" name="thebabyshop_payment_western_union"<?php if($thebabyshop_payment_western_union == '1') echo ' checked="checked"';?> /> Show</label>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div style="margin-top:0px;"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/payment/payment_image_western_union.png"></div>
                        </td>
						<td colspan="2">
                        <?php echo $entry_payment_url; ?>&nbsp;&nbsp;&nbsp;<input type="text" name="thebabyshop_payment_western_union_url" value="<?php echo $thebabyshop_payment_western_union_url; ?>" />
                        </td>                        
					</tr>  
                    
		 </table>
         </div>  
        
        
        <div id="tab-footer-powered" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_powered_status; ?></td>
						<td>
                        <select name="thebabyshop_powered_status">
                            <option value="1"<?php if($thebabyshop_powered_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_powered_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_powered_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>

           	 </table>            
                    
                   <div id="footer_thebabyshop_powered" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_powered<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_powered<?php echo $language['language_id']; ?>">
                   <table class="form">                            
					 <tr>
						<td><?php echo $entry_powered_content; ?></td>
						<td><textarea name="thebabyshop_powered_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_powered_content' . $language['language_id']}) ? ${'thebabyshop_powered_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>                         

         </div>          
         
        <div id="tab-footer-follow-us" class="vtabs-content">                       
        <table class="form">
        
					<tr>
						<td><?php echo $entry_follow_us_status; ?></td>
						<td>
                        <select name="thebabyshop_follow_us_status">
                            <option value="1"<?php if($thebabyshop_follow_us_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_follow_us_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_follow_us_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>

					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/f_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_facebook; ?></div></td>
						<td>
                        <input type="text" name="thebabyshop_facebook" value="<?php echo $thebabyshop_facebook; ?>" />
                        <a href="http://findmyfacebookid.com/" target="_blank" class="link"><?php echo $text_facebook_find_id; ?></a>
                        </td>
					</tr>
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/t_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_twitter; ?></div></td>
						<td><input type="text" name="thebabyshop_twitter" value="<?php echo $thebabyshop_twitter; ?>" /></td>
					</tr>          
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/g_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_googleplus; ?></div></td>
						<td><input type="text" name="thebabyshop_googleplus" value="<?php echo $thebabyshop_googleplus; ?>" /></td>
					</tr>
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/r_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_rss; ?></div></td>
						<td><input type="text" name="thebabyshop_rss" value="<?php echo $thebabyshop_rss; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/p_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_pinterest; ?></div></td>
						<td><input type="text" name="thebabyshop_pinterest" value="<?php echo $thebabyshop_pinterest; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/v_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_vimeo; ?></div></td>
						<td><input type="text" name="thebabyshop_vimeo" value="<?php echo $thebabyshop_vimeo; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/fl_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_flickr; ?></div></td>
						<td><input type="text" name="thebabyshop_flickr" value="<?php echo $thebabyshop_flickr; ?>" /></td>
					</tr>                     
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/l_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_linkedin; ?></div></td>
						<td><input type="text" name="thebabyshop_linkedin" value="<?php echo $thebabyshop_linkedin; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/y_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_youtube; ?></div></td>
						<td><input type="text" name="thebabyshop_youtube" value="<?php echo $thebabyshop_youtube; ?>" /></td>
					</tr> 
					<tr>
						<td><div style="height:36px;margin-top:0px;padding:0px;float:left"><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/thebabyshop/image/follow_us/d_logo.png"></div>
                        <div style="padding-top:10px;padding-left:45px"><?php echo $entry_dribbble; ?></div></td>
						<td><input type="text" name="thebabyshop_dribbble" value="<?php echo $thebabyshop_dribbble; ?>" /></td>
					</tr>                                                                                         

		 </table>
         </div>  
         
        <div id="tab-footer-info" class="vtabs-content">
        <table class="form">

					<tr>
						<td><?php echo $entry_about_status; ?></td>
						<td>
                        <select name="thebabyshop_about_status">
                            <option value="1"<?php if($thebabyshop_about_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_about_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_about_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>
                        
		 </table>                                   
                        
                   <div id="footer_thebabyshop_about" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_about<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_about<?php echo $language['language_id']; ?>">
                   <table class="form">                            
					 <tr>
						<td><?php echo $entry_about_content; ?></td>
						<td><textarea name="thebabyshop_about_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_about_content' . $language['language_id']}) ? ${'thebabyshop_about_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>       

         </div>                    
        
        </div>    
        
        
        
        
         <div id="tab-widgets">
           <div id="widgets_settings_tabs" class="vtabs">
             <a href="#tab-widgets-facebook"><?php echo $entry_facebook_likebox; ?></a>      
             <a href="#tab-widgets-custom-box"><?php echo $entry_custom_box; ?></a>                                           
           </div>
           
        <div id="tab-widgets-facebook" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_facebook_likebox_status; ?></td>
						<td>
                        <select name="thebabyshop_facebook_likebox_status">
                            <option value="1"<?php if($thebabyshop_facebook_likebox_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_facebook_likebox_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_facebook_likebox_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>   
					<tr>
						<td><?php echo $entry_facebook_likebox_id; ?></td>
						<td><input type="text" name="thebabyshop_facebook_likebox_id" value="<?php echo $thebabyshop_facebook_likebox_id; ?>" />
                        <a href="http://findmyfacebookid.com/" target="_blank" class="link"><?php echo $text_facebook_find_id; ?></a>
                        </td>
					</tr> 
					<tr>
						<td><?php echo $text_position; ?></td>
						<td>			
                        <select name="thebabyshop_facebook_likebox_position">
                           <option value="right"<?php if($thebabyshop_facebook_likebox_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="left"<?php if($thebabyshop_facebook_likebox_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                     
                        </select>                        
                        </td>
					</tr>                                    

		 </table>
         </div>
         
        <div id="tab-widgets-custom-box" class="vtabs-content">   
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_box_status; ?></td>
						<td>
                        <select name="thebabyshop_custom_box_status">
                            <option value="1"<?php if($thebabyshop_custom_box_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
                            <option value="0"<?php if($thebabyshop_custom_box_status == '0') echo ' selected="selected"';?><?php if($thebabyshop_custom_box_status == '') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
			            </select>
                        </td>
					</tr>   
                    
		 </table>                    
                    
                   <div id="footer_thebabyshop_custom_box" class="htabs">
                     <?php foreach ($languages as $language) { ?>
                     <a href="#language_thebabyshop_custom_box<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                     <?php } ?>
                   </div>
                   <?php foreach ($languages as $language) { ?>
                   <div id="language_thebabyshop_custom_box<?php echo $language['language_id']; ?>">
                   <table class="form">                            
					 <tr>
						<td><?php echo $text_content; ?></td>
						<td><textarea name="thebabyshop_custom_box_content<?php echo $language['language_id']; ?>" ><?php echo isset(${'thebabyshop_custom_box_content' . $language['language_id']}) ? ${'thebabyshop_custom_box_content' . $language['language_id']} : ''; ?></textarea></td>
					 </tr>                             
                   </table>  
                   </div>
                   <?php } ?>     
                    
                    
        <table class="form">

					<tr>
						<td><?php echo $text_position; ?></td>
						<td>			
                        <select name="thebabyshop_custom_box_position">
                           <option value="right"<?php if($thebabyshop_custom_box_position == 'right') echo ' selected="selected"';?>><?php echo $text_position_r; ?></option>
                           <option value="left"<?php if($thebabyshop_custom_box_position == 'left') echo ' selected="selected"';?>><?php echo $text_position_l; ?></option>                     
                        </select>                        
                        </td>
					</tr>      
                    <tr>
						<td><?php echo $text_background_color; ?></td>
						<td>
                        <input type="text" name="thebabyshop_custom_box_background" value="<?php echo $thebabyshop_custom_box_background; ?>" class="color {required:false,hash:true}" size="7" />
                        <span class="thebabyshop_help"><?php echo $entry_custom_box_background_help; ?></span>
                        </td>
					</tr>                                                       

		 </table>
         </div>             
        
         </div> 
         
         <div id="tab-css">
 
        <table class="form">

					<tr>
						<td><?php echo $entry_custom_css; ?></td>
						<td colspan="2"><textarea name="thebabyshop_custom_css" rows="10" cols="100" /><?php echo $thebabyshop_custom_css; ?></textarea></td>
					</tr>                                    
                    <tr>
						<td><?php echo $entry_custom_js; ?></td>
						<td colspan="2"><textarea name="thebabyshop_custom_js" rows="10" cols="100" /><?php echo $thebabyshop_custom_js; ?></textarea></td>
					</tr>                                    

		 </table>
        
         </div>                 
     
    </form>
	</div>
		
</div>        

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('thebabyshop_menu_custom_block_content_1<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_menu_custom_block_content_2<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_menu_custom_block_content_3<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_product_custom_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_product_custom_tab_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_product_custom_tab_2_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_product_custom_tab_3_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_contact_custom_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_custom_content<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_powered_content<?php echo $language['language_id']; ?>', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_about_content<?php echo $language['language_id']; ?>', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
CKEDITOR.replace('thebabyshop_custom_box_content<?php echo $language['language_id']; ?>', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script>

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>  
<script type="text/javascript">
	$('#settings_tabs a').tabs();  
	$('#store_features_tabs a').tabs();	
	$('#colors_styles_settings_tabs a').tabs();
	$('#background_images_settings_tabs a').tabs();
	$('#fonts_settings_tabs a').tabs();	
	$('#footer_settings_tabs a').tabs();
	$('#widgets_settings_tabs a').tabs();
	$('#menu_thebabyshop_custom a').tabs();
	$('#menu_thebabyshop_custom_2 a').tabs();
	$('#menu_thebabyshop_custom_3 a').tabs();
	$('#product_thebabyshop_custom a').tabs();
	$('#product_thebabyshop_custom_tab a').tabs();
	$('#product_thebabyshop_custom_tab_2 a').tabs();
	$('#product_thebabyshop_custom_tab_3 a').tabs();	
	$('#contact_thebabyshop_custom a').tabs();
	$('#footer_thebabyshop_custom a').tabs();
	$('#footer_thebabyshop_powered a').tabs();
	$('#footer_thebabyshop_about a').tabs();
	$('#footer_thebabyshop_custom_box a').tabs();
</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script>
<script type="text/javascript" src="view/javascript/poshytip/jquery.poshytip.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/poshytip/tip-twitter/tip-twitter.css" />
	<script type="text/javascript">
		//<![CDATA[
		$(function(){

			$('#thebabyshop-help-1').poshytip({
				content: '<img src="view/image/help/content_column_1.png">',
			});
			$('#thebabyshop-help-2').poshytip({
				content: '<img src="view/image/help/left_right_column_1.png">',
			});	
			$('#thebabyshop-help-3').poshytip({
				content: '<img src="view/image/help/left_right_column_heading_1.png">',
			});	
			$('#thebabyshop-help-4').poshytip({
				content: '<img src="view/image/help/left_right_column_box_1.png">',
			});	
			$('#thebabyshop-help-5').poshytip({
				content: '<img src="view/image/help/main_column_1.png">',
			});
			$('#thebabyshop-help-6').poshytip({
				content: '<img src="view/image/help/button_1.png">',
			});		
			$('#thebabyshop-help-7').poshytip({
				content: '<img src="view/image/help/button_1.png">',
			});
			$('#thebabyshop-help-8').poshytip({
				content: '<img src="view/image/help/product_box_1.png">',
			});	
			$('#thebabyshop-help-9').poshytip({
				content: '<img src="view/image/help/product_page_buy_section_1.png">',
			});		
			$('#thebabyshop-help-10').poshytip({
				content: '<img src="view/image/help/product_page_tabs_1.png">',
			});
			$('#thebabyshop-help-11').poshytip({
				content: '<img src="view/image/help/home_page_product_slider_1.png">',
			});	
			$('#thebabyshop-help-12').poshytip({
				content: '<img src="view/image/help/bottom_area_1_1.png">',
			});	
			$('#thebabyshop-help-13').poshytip({
				content: '<img src="view/image/help/bottom_area_2_1.png">',
			});	
			$('#thebabyshop-help-14').poshytip({
				content: '<img src="view/image/help/bottom_area_3_1.png">',
			});	
			$('#thebabyshop-help-15').poshytip({
				content: '<img src="view/image/help/bottom_area_4_1.png">',
			});
			$('#thebabyshop-help-16').poshytip({
				content: '<img src="view/image/help/background_body_1.png">',
			});
			$('#thebabyshop-help-17').poshytip({
				content: '<img src="view/image/help/main_column_1.png">',
			});
			$('#thebabyshop-help-18').poshytip({
				content: '<img src="view/image/help/background_top_area_1.png">',
			});			
			$('#thebabyshop-help-19').poshytip({
				content: '<img src="view/image/help/background_main_menu_1.png">',
			});			
			$('#thebabyshop-help-20').poshytip({
				content: '<img src="view/image/help/bottom_area_1_1.png">',
			});	
			$('#thebabyshop-help-21').poshytip({
				content: '<img src="view/image/help/bottom_area_2_1.png">',
			});	
			$('#thebabyshop-help-22').poshytip({
				content: '<img src="view/image/help/bottom_area_3_1.png">',
			});	
			$('#thebabyshop-help-23').poshytip({
				content: '<img src="view/image/help/bottom_area_4_1.png">',
			});	
			$('#thebabyshop-help-24').poshytip({
				content: '<img src="view/image/help/home_page_category_wall_1.png">',
			});	
			$('#thebabyshop-help-25').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.<br><img src="view/image/help/home_page_brands_wall_1.png">',
			});	
			$('#thebabyshop-help-26').poshytip({
				content: '<img src="view/image/help/home_page_banner_slider_1.png">',
			});	
			$('#thebabyshop-help-27').poshytip({
				content: '<img src="view/image/help/product_page_related_1.png">',
			});	
			$('#thebabyshop-help-28').poshytip({
				content: '<img src="view/image/help/product_page_custom_block_1.png">',
			});		
			$('#thebabyshop-help-29').poshytip({
				content: '<img src="view/image/help/product_page_custom_tab_1.png">',
			});	
			$('#thebabyshop-help-30').poshytip({
				content: '<img src="view/image/help/contact_page_custom_block_1.png">',
			});	
			$('#thebabyshop-help-31').poshytip({
				content: '<img src="view/image/help/category_page_subcategories_1.png">',
			});
			$('#thebabyshop-help-32').poshytip({
				content: 'Using this option, you have the ability to customize the default skin only.<br><a href="http://321cart.com/thebabyshop/documentation/index.html#!/extra_skins" target="_blank" style="color:#66BCDA">How to customize the extra skins?</a>',
			});
			$('#thebabyshop-help-33').poshytip({
				content: 'If you need help, please contact us. <br>We provide support only through our thebabyshop Support System.',
			});
			$('#thebabyshop-help-34').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.',
			});				

		});
		//]]>
	</script>