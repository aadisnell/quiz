<?php  if (count($errors) > 0) : ?>
	<div class="error">
	<style>
        .error {
	width: 92%; 
	margin: 0px auto; 
	padding: 10px; 
	border: 1px solid #a94442; 
	color: white; 
	background: #green; 
	border-radius: 5px; 
	text-align: left;
}
        </style>
		<?php foreach ($errors as $error) : ?>
			<p><?php echo $error ?></p>
		<?php endforeach ?>
	</div>
<?php  endif ?>
