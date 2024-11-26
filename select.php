<?php
        require_once('connect.php');
        $sql = "SELECT * FROM  tbl_type_plat";
  $query = $db->prepare($sql);
$query->execute();

$results = $query->fetchAll(PDO::FETCH_ASSOC);

if ($query->rowCount() > 0) { ?>
  <select name="typeplat">
    <?php foreach ($results as $row) { ?>
      <option value="<?php echo $row['id_type_plat']; ?>"><?php echo $row['nom_type_plat']; ?></option>
    <?php } ?>
  </select>
<?php } ?>