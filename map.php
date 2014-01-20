<link href="//fonts.googleapis.com/css?family=Lusitana" rel="stylesheet" type="text/css">
<link href="./map/international-delivery.css" rel="stylesheet" type="text/css" media="all">
<script src="./map/jquery.min.js"></script>
<script src="./map/jquery.CreativePlugins.js" type="text/javascript"></script>
<script src="./map/international-delivery.js" type="text/javascript"></script>

<div id="creativeContent">
    <div id="intsructions">
        <h3>INTERNATIONAL DELIVERY</h3>
        <p>FREE SHIPPING</p>
        <p>Roll over your region to find a guide to shipping times.</p>
    </div>
    <img src="./map/map.gif">
    <div id="rollovers">
        <img class="rollover" id="us" alt="us" src="./map/us_rollover.png" style="display: none;">  
        <img class="rollover" id="canada" alt="canada" src="./map/canada_rollover.png" style="display: none;">          
        <img class="rollover" id="southamerica" alt="southamerica" src="./map/southamerica_rollover.png" style="display: none;">
        <img class="rollover" id="easteurope" alt="easteurope" src="./map/northeasteurope_rollover.png" style="display: none;">
        <img class="rollover" id="westeurope" alt="westeurope" src="./map/westeurope_rollover.png" style="display: none;">
        <img class="rollover" id="africa" alt="africa" src="./map/africa_rollover.png" style="display: none;">
        <img class="rollover" id="asia" alt="asia" src="./map/russia-asia_rollover.png" style="display: none;">
        <img class="rollover" id="aussie" alt="aussie" src="./map/aussie_rollover.png" style="display: none;">         
    </div>
    <div id="popup-areas">
        <div class="popup-area" id="us_po" style="display: none;">
            <img class="popup-top-left" src="./map/popup-top-left.png" alt="pointer">
            <h3>U.S.</h3>
            <p>Standard Shipping: within 6 - 17 working days, <strong>FREE</strong></p>               
        </div>
        <div class="popup-area" id="canada_po" style="display: none;">
            <img class="popup-top-left" src="./map/popup-top-left.png" alt="pointer">             
            <h3>Canada</h3>
            <p>Standard Shipping: within 7 - 12 working days, <strong>FREE</strong></p>
        </div>

        <div class="popup-area" id="southamerica_po" style="display: none;">
            <img class="popup-bottom-left" src="./map/popup-bottom-left.png" alt="pointer">
            <h3>America, South &amp; Central</h3>
            <p>Standard Shipping: within 8 - 17 working days, <strong>FREE</strong></p>
        </div>

        <div class="popup-area right" id="easteurope_po" style="display: none;">
            <img class="popup-top-right" src="./map/popup-top-right.png" alt="pointer">
            <h3>Europe, North &amp; East</h3>
            <p>Standard Shipping: Within 6 – 11 working days, <strong>FREE</strong></p>                
        </div>

        <div class="popup-area" id="westeurope_po" style="display: none;">
            <img class="popup-bottom-left" src="./map/popup-bottom-left.png" alt="pointer">
            <h3>Europe, South &amp; West</h3>
            <p>Standard Shipping: Within 8 – 15 working days, <strong>FREE</strong></p>                
        </div>

        <div class="popup-area" id="africa_po" style="display: none;">
            <img class="popup-bottom-right" src="./map/popup-bottom-right.png" alt="pointer">
            <h3>Africa</h3>
            <p>Standard Shipping: Within 9 – 17 working days, <strong>free</strong></p>               
        </div>
        <div class="popup-area right" id="asia_po" style="display: none;">
            <img class="popup-top-right" src="./map/popup-top-right.png" alt="pointer">
            <h3>Russia &amp; Asia</h3>
            <p>Standard Shipping: within 4 - 16 working days, <strong>free</strong></p>               
        </div>

        <div class="popup-area right" id="aussie_po" style="display: none;">
            <img class="popup-top-right" src="./map/popup-top-right.png" alt="pointer">
            <h3>Australia &amp; New Zealand</h3>
            <p>Standard Shipping: within 6 - 15 working days, <strong>free</strong></p>
        </div>
    </div>
    <img id="description" src="./map/usemap.gif" usemap="#intldelivery" alt="InternationalDelivery"></div>
<map name="intldelivery" id="intldelivery">
    <area shape="poly" alt="asia_area" class="asia" coords="311,101,297,87,313,81,367,75,408,75,460,78,610,115,609,142,597,140,541,186,521,214,502,240,562,273,554,283,543,287,512,278,486,288,460,273,449,266,430,258,416,258,410,234,404,227,400,221,394,221,387,219,376,214,366,206,367,203,372,200,367,186,368,184,369,178,366,175,365,169,357,166,352,162,346,159,349,151,347,134,350,123,351,100" href="#">
    <area shape="poly" alt="aussie_area" class="aussie" coords="539,285,511,278,489,289,477,294,470,300,467,305,485,328,513,343,535,349,559,353,582,349,593,342,598,322,588,297" href="#">
    <area shape="poly" alt="westeurope_area" class="westeurope" coords="261,167,268,154,276,154,286,167,293,161,302,161,310,161,316,167,316,177,321,177,321,179,329,179,331,187,331,191,343,191,343,204,310,200,303,195,296,191,289,195,283,197,275,200,267,190,275,176" href="#">
    <area shape="poly" alt="easteurope_area" class="easteurope" coords="162,95,168,89,175,82,179,68,265,68,269,82,258,91,258,101,253,114,276,138,323,114,338,112,347,118,347,131,346,142,347,153,343,160,351,159,353,166,364,168,366,178,367,186,367,190,360,191,355,182,348,180,343,180,340,180,337,178,331,190,329,186,329,180,321,180,321,177,317,177,317,168,310,162,302,162,275,152,209,164,162,98" href="#">
    <area shape="poly" alt="africa_area" class="africa" coords="275,195,303,195,312,202,329,204,371,205,392,222,392,226,367,262,373,282,377,287,370,306,334,324,310,324,292,261,263,255,251,228,251,221,262,209" href="#">
    <area shape="poly" alt="southamerica_area" class="southamerica" coords="96,218,96,212,107,210,122,210,127,212,129,217,129,226,137,227,146,222,158,224,167,222,180,230,188,244,211,256,230,268,237,278,235,284,230,287,230,301,221,307,185,350,184,375,158,375,138,253,108,232" href="#">
    <area shape="poly" alt="canada_area" class="canada" coords="55,119,70,107,83,92,95,84,129,76,151,74,174,72,187,73,178,88,162,99,163,111,185,126,193,143,197,161,200,175,196,182,177,188,153,179,81,183,68,173,57,164,50,154,48,120" href="#">
    <area shape="poly" alt="us_area" class="us" coords="79,182,111,180,143,179,158,178,184,186,171,194,167,205,164,210,163,218,158,223,143,222,131,221,119,215,108,215,96,214,83,201,80,183,51,151,52,116,16,113,8,124,4,152,4,168" href="#">
</map>
<div id="gift">
    <img src="catalog/view/theme/thebabyshop/image/giftwrap.png">
    <h3>FREE GIFT WRAPPING</h3>
    <span>With our compliments, add an elegant The Baby Shop gift box and personalized message to your order at no additional charge.</span>
</div>