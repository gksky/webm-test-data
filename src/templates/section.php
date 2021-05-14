        <section>
          <div class="picture">
            <img class="thumb" src="src/images/<?php echo $stock["image"] ?>">
          </div>
          <div class="item">
            <h2 class="title"><?php echo $stock["title"] ?></h2>
            <p class="describe">
              <?php echo $stock["type"] ?> 
              <?php echo $stock["make"] ?>
              <?php echo $stock["model"] ?> 
              <?php echo $stock["power"] ?> 
              <?php echo $stock["power_measure"] ?>
            </p>
            <div class="maininfo">
              <ul>
                <li><?php echo $stock["year"] ?></li>
                <li><?php echo number_format($stock["mileage"], 0, ',', ' ') ?> <?php echo $stock["mileage_measure"] ?></li>
                <li><?php echo $stock["axle_configuration"] ?></li>
              </ul>
            </div>
          </div>
          <div class="price">
          <?php echo $stock["price_currency"] ?> <?php echo number_format($stock["price"], 0, ',', ' '); ?>
          </div>
        </section>