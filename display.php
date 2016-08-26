<html>
  <head>
    <meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./small-style.css" target="_blank">


  </head>
  <body>

   <?php
   $spin = rand(80,131);

   $files = glob("*.*");

  for ($i=1; $i<count($files); $i++)

{

$image = $files[$i];
$supported_file = array(
    'gif',
    'jpg',
    'jpeg',
    'png',
    'svg'
);

$ext = strtolower(pathinfo($image, PATHINFO_EXTENSION));
if (in_array($ext, $supported_file)) {
//    print $image ."<br />";

    echo '<a href="./'.$image .'"><img width='.$spin.' src="'.$image .'" ></a>'." . ";
    echo '
';

} else {
    continue;
 }

}

?>
