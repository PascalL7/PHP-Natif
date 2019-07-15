<?php $title = 'My Store'; ?>

<?php ob_start(); ?>
<h1>My store !</h1>
<h2>Last items</h2>


<?php
while ($data = $query->fetch())
{
    ?>
    <div class="news">
        <h3>
            <?php echo htmlspecialchars($data['name']) ?>
            <em><?php $data['description'] ?></em>
        </h3>
    </div>
    <?php
}
$query->closeCursor();
?>
<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>
