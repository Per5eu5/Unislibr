<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 3.0 License

Name       : Accumen
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120712

Modified by VitalySwipe and Nikolaev Pavel
-->

<?php
Session::init(); ?>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />

		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Kreon" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="/css/style.css" />
		<script src="/js/jquery-1.6.2.js" type="text/javascript"></script>
		<script type="text/javascript">
		// return a random integer between 0 and number
		function random(number) {
			return Math.floor( Math.random()*(number+1) );
		};
		
		// show random quote
		$(document).ready(function() { 

			var quotes = $('.quote');
			quotes.hide();
			
			var qlen = quotes.length; //document.write( random(qlen-1) );
			$( '.quote:eq(' + random(qlen-1) + ')' ).show(); //tag:eq(1)
		});
		</script>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="logo">
					<span><a href="/">Библиотека</a>
				</div>
			</div>

			<div class="side-box">
						<h3>Случайная цитата</h3>
						<p align="justify" class="quote">
							«Знаешь чем шахматы отличаются от настоящей войны? В шахматах всегда одни и те же правила
							и количество пешек с обоих сторон одинаково, в жизни все не так.»
							<br>Радовид III Свирепый,король Редании
						</p>
						<p align="justify" class="quote">
							«Лучше без точно сформулированной цели двигаться вперед, чем без цели стоять на месте,
							и уж наверняка гораздо лучше, чем без цели пятиться.»
							<br>Эмиель Регис Рогеллек Терзиефф-Годфрой, вампир
						</p>
						<p align="justify" class="quote">
							«Короли подразделяют людей на две категории. Одним приказывают, других покупают.
							Ибо короли придерживаются старой и банальной истины: купить можно любого. Любого. Вопрос только в цене»
							<br>Калантэ, королева Цинтры
						</p>
						<p align="justify" class="quote">
							«Жизнь отличается от банковского дела тем, что ей знакомы долги, которые можно заплатить,
							только задолжав другим»
							<br>Эмиель Регис Рогеллек Терзиефф-Годфрой, вампир
						</p>
						<p align="justify" class="quote">
							«С нами лучше не балуй, лишь бы цел остался...»
							<br>Золтан Хивай
						</p>


						<h3>Основное меню</h3>
						<?php menu(); ?>
					</div>

			<div id="content">
					<?php include 'application/views/'.$content_view; ?>
			</div>

			<div id="footer">
				<div id="page-bottom">
					<h3>Наши контакты</h3>
					<ul class="list">
						<li class="last">email:<a href = "mailto:lib@kraslib.ru"> lib@kraslib.ru</a></li>
						<li>Адрес: Карла Маркса, 114</li>
						<li>Телефон: +7 (391) 211-12-56</li>
					</ul>
				</div>
				<a href="/">Nikolaev Pavel</a> &copy; 2015</a>
			</div>
		</div>
	</body>
</html>