<?php
  $result = $mysqli->query("SELECT * FROM page_text WHERE pageID=1");
  $aArticle = [];
  if ($result) {
    while ($row = $result->fetch_assoc()) {
      array_push($aArticle, $row);
    }
  }
?>

        <article>
          <?php
            foreach ($aArticle as $article) {
              echo "<" . $article['tag'] . ">" . $article['content'] . "</" . $article['tag'] . ">";
            }
          ?>
        </article>