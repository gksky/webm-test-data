<?php
  $result = $mysqli->query("SELECT * FROM page_meta WHERE id=1");
  $aMeta = [];
  if ($result) {
    while ($row = $result->fetch_assoc()) {
      $aMeta = $row;
    }
  }
?>

<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $aMeta['title'] ?></title>
  <meta name="Keywords" content="<?php echo $aMeta['meta_keywords'] ?>"> 
  <meta name="description" content="<?php echo $aMeta['meta_description'] ?>"> 
  <link rel="stylesheet" type="text/css" href="src/css/style.css">
</head>
<body>
  <div class="container">
    <header>
      <div class="logo">
        Header / Logo
      </div>
    </header>