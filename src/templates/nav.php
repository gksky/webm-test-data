<?php
  $result = $mysqli->query("SELECT * FROM nav");
  $aNav = [];
  if ($result) {
    while ($row = $result->fetch_assoc()) {
      array_push($aNav, $row);
    }
  }

  $result = $mysqli->query("SELECT * FROM breadcrumbs WHERE text='DAF'");
  $aCrumbs = [];
  $i = 0;
  if ($result) {
    while ($row = $result->fetch_assoc()) {
      $aCrumbs[$i] = $row;
      $i++;
    }
  }
?>

    <nav>
      <ul class="menu">
        <?php
          foreach ($aNav as $nav) {
            echo '<li><a href="' . $nav['href'] . '">' . $nav['text'] . '</a></li>';
          }
        ?>
      </ul>
      <div class="crumbs">
        <ul>
          <li>
            Breadcrumbs1
          </li>
          <li>
            Breadcrumbs2
          </li>
          <li>
            Breadcrumbs3
          </li>
        </ul>
      </div>
    </nav>