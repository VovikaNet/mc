<?php $this->display('header', array('title' => ($action == 'add' ? 'Создать' : 'Изменить') .' раздел')) ?>

<?php if($error): ?>
<div class="error">
<?php echo $error ?>
</div>
<?php endif; ?>

<form action="<?php echo a_url('forum/admin/sections', 'a=edit&amp;section_id='. @$_GET['section_id']) ?>" method="post">
<div class="box">
	<h3><?php echo ($action == 'add' ? 'Создать' : 'Изменить') ?> раздел</h3>
	<div class="inside">
		<p>
			<label>Название</label>
			<input name="name" type="text" value="<?php echo $section['name'] ?>">
		</p>
   	</div>
</div>
        <p><input type="submit" name="submit" value="<?php echo ($action == 'add' ? 'Создать' : 'Изменить') ?>"></p>
</form>

<?php $this->display('footer') ?>