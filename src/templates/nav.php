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
  if ($result) {
    $row = $result->fetch_assoc();
    $aCrumbs[$row['parentID']] = $row;
    while ($row['parentID'] > 0) {
      $result = $mysqli->query("SELECT * FROM breadcrumbs WHERE id=" . $row['parentID']);
      if ($result) {
        $row = $result->fetch_assoc();
        $aCrumbs[$row['parentID']] = $row;
      }
    }
  }
  $aCrumbs = array_reverse($aCrumbs);
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
        <?php
          foreach ($aCrumbs as $key => $crumbs) {
            echo '<li><a href="' . $crumbs['href'] . '">' . $crumbs['text'] . '</a></li>';
            if ($key < count($aCrumbs) - 1) { echo ">"; }
          }
        ?>
        </ul>
      </div>
    </nav>