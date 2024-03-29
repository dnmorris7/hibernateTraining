<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Rotating Words with CSS Animations</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Rotating Words with CSS Animations" />
        <meta name="keywords" content="css3, animations, rotating words, sentence, typography" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
		<link href='http://fonts.googleapis.com/css?family=Bree+Serif|Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.72111.js"></script>
		<style>
			.no-cssanimations .rw-wrapper .rw-sentence span:first-child{
				opacity: 1;
			}
		</style>
		<!--[if lt IE 9]> 
			<style>
				.rw-wrapper{ display: none; } 
				.rw-sentence-IE{ display: block;  }
			</style>
		<![endif]-->
    </head>
    <body>
        <div class="container">
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/CSS3ContentTabs/">
                    <strong>&laquo; Previous Demo: </strong>Animated Content Tabs with CSS3
                </a>
                <span class="right">
                    <a href="http://tympanus.net/codrops/2012/04/17/rotating-words-with-css-animations">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			<header>
				<h1>Rotating Words <span>with CSS Animations</span></h1>
				<nav class="codrops-demos">
					<a class="current-demo" href="home">Demo 1</a>
					<a href="index2">Demo 2</a>
					<a href="index3">Demo 3</a>
					<a href="index4.html">Demo 4</a>
					<a href="index5.html">Demo 5</a>
				</nav>
			</header>
			<section class="rw-wrapper">
				<h2 class="rw-sentence">
					<span>Real poetry is like</span>
					<br />
					<span>creating beautiful butterflies</span>
					<br />
					<span>with a silent touch of</span>
					<div class="rw-words rw-words-1">
						<span>spice</span>
						<span>colors</span>
						<span>happiness</span>
						<span>wonder</span>
						<span>sugar</span>
						<span>happiness</span>
					</div>
				</h2>
			</section>
			<h2 class="rw-sentence-IE">Real poetry is like creating beautiful butterflies with a silent touch of spice</h2>
        </div>
    </body>
</html>