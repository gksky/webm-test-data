<?php
  require('assets/database.php');

  $mysqli = new mysqli($host, $user, $pass, $db);

  require('src/templates/header.php');
  require('src/templates/nav.php');
?>
    <main>
      <?php
        require('src/templates/aside.php');
      ?>
      <div class="list">
        <h1><?php echo $aMeta['h1'] ?></h1>
        <?php

          $result = $mysqli->query("SELECT * FROM stock");
          $aStock = [];
          if ($result) {
            while ($row = $result->fetch_assoc()) {
              array_push($aStock, $row);
            }
          }

          require('src/templates/pagination.php');
          foreach ($aStock as $stock) {
            include('src/templates/section.php');
          }
          
          require('src/templates/pagination.php');
          require('src/templates/article.php');
        ?>
      </div>
    </main>
<?php
  require('src/templates/footer.php');

  $mysqli->close();
?>