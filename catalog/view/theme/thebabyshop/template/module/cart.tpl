<div id="cart">
  <div class="heading">
    <a><span id="cart-total"><?php echo $text_items; ?></span></a>
  </div>
  <div class="content">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name">
            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
            </div>
            <div>x&nbsp;<?php echo $product['quantity']; ?></div>
          </td>
          <td class="total"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout"><a href="<?php echo $cart; ?>" class="button"><?php echo $text_cart; ?></a>&nbsp;</div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>
