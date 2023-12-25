
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/grid.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/emmet-test.css" />
<style>
* {
	box-sizing: border-box
}

body {
	margin: 0; /* display: flex;
flex-direction: column; */
}

.container {
	text-align: center;
	margin: 0;
	padding: 0 15px;
}

.course-item {
	background-color: orange;
	height: 260px;
	margin-top: 10px
}

h1 {
	color: #ffff;
	line-height: 260px;
	text-align: center;
}

h2 {
	text-align: center;
}
</style>
</head>
<body>

	<!-- Navbar layout -->
	<div class="nav-bar">
		<ul class="nav-list">
			<li class="nav-item"><i class="fas fa-home"
				style="font-size: larger; color: #fff;"></i> Home</li>
			<li class="nav-item"><i class="fas fa-star"
				style="font-size: larger; color: #fff;"></i> Fearure</li>
			<li class="nav-item"><i class="fas fa-info-circle"
				style="font-size: larger; color: #fff;"></i> Info</l>
		</ul>

		<ul class="nav-list">
			<li class="nav-item"><i class="fas fa-user"
				style="font-size: larger; color: #fff;"></i> Username</li>
			<li class="nav-item"><i class="fas fa-key"
				style="font-size: larger; color: #fff;"></i> Sign In</li>
			<li class="nav-item"><i class="fas fa-user-plus"
				style="font-size: larger; color: #fff;"></i> Sign Up</li>

		</ul>

		<label for="check-nav-bar-mobiles-input" class="nav-bar-bars">
			<i class="fas fa-bars" style="font-size: larger; color: #fff"></i>
		</label>
	</div>


	<input type="checkbox" hidden="" class="check-nav-bar-mobiles-input"
		id="check-nav-bar-mobiles-input" />

	<label for="check-nav-bar-mobiles-input" class="nav-overlay"></label>

	<div class="nav-bar-mobiles">

		<label for="check-nav-bar-mobiles-input" class="close-nav-bar-mobiles"><i
			class="fas fa-times"></i></label>


		<ul class="nav-list-mobiles1">
			<li class="nav-item-mobiles"><i class="fas fa-home"
				style="font-size: larger; color: #000;"></i> Home</li>
			<li class="nav-item"><i class="fas fa-star"
				style="font-size: larger; color: #000;"></i> Fearure</li>
			<li class="nav-item"><i class="fas fa-info-circle"
				style="font-size: larger; color: #000;"></i> Info</li>

		</ul>

		<ul class="nav-list-mobiles">
			<li class="nav-item-mobiles"><i class="fas fa-user"
				style="font-size: larger; color: #000;"></i> Username</li>
			<li class="nav-item-mobiles"><i class="fas fa-key"
				style="font-size: larger; color: #000;"></i> Sign In</li>
			<li class="nav-item-mobiles"><i class="fas fa-user-plus"
				style="font-size: larger; color: #000;"></i> Sign Up</li>

		</ul>
	</div>


	<!-- Form layout -->
	<div class="form-container">
		<form action="" class="form">
			<div class="form_row">
				<label for="name_input" class="form_label">Name</label> <input
					type="text" class="form_input" id="name_input" />
			</div>
			<div class="form_row">
				<label for="pass_input" class="form_label">Password</label> <input
					type="text" class="form_input" id="pass_input" />
			</div>
		</form>
	</div>

	<!-- Column layout -->
	<div class="column-layout">
		<div class="column-item sidebar-one">
			<h2>Sidebar one</h2>
			<p>競争が激しく、スキルの更新が求められる一方で、高い需要も存在します。セキュリティの重要性が増しており、サイバーセキュリティの専門家がますます必要とされています。また、デジタルトランスフォーメーションが進む中、企業はデータ駆動の意思決定や効率向上に焦点を当て、新たなビジネスモデルを模索しています。</p>
		</div>
		<div class="column-item main-column">
			<h2>Main Column</h2>
			<p>IT（情報技術）の業界は急速に進化し、絶え間ない変化が特徴です。ソフトウェア開発、ハードウェア製造、ネットワーク管理、データ分析など、多岐にわたる領域が含まれます。クラウドコンピューティングや人工知能の台頭により、新たな技術が次々と生まれ、企業や個人の生活に影響を与えています。</p>
			<p>競争が激しく、スキルの更新が求められる一方で、高い需要も存在します。セキュリティの重要性が増しており、サイバーセキュリティの専門家がますます必要とされています。また、デジタルトランスフォーメーションが進む中、企業はデータ駆動の意思決定や効率向上に焦点を当て、新たなビジネスモデルを模索しています。</p>
			<p>フリーランスやリモートワークの増加も見られ、柔軟な働き方が広がっています。ただし、テクノロジーの進化に追いつくためには学習意欲や自己啓発が不可欠です。総じて言えるのは、ITの業界は未来志向で、常に変化し続ける環境であるということです。</p>
		</div>
		<div class="column-item sidebar-two">
			<h2>Sidebar two</h2>
			<p>フリーランスやリモートワークの増加も見られ、柔軟な働き方が広がっています。ただし、テクノロジーの進化に追いつくためには学習意欲や自己啓発が不可欠です。総じて言えるのは、ITの業界は未来志向で、常に変化し続ける環境であるということです。</p>
		</div>
	</div>

	<!-- Feature layout -->
	<div class="feature-layout">
		<div class="feature-item">
			<h2>Item 1</h2>
			<h3>人工知能と機械学習の発展:</h3>
			<p>人工知能（AI）と機械学習は今後ますます進化し、自律的なシステムやプロセスの開発に貢献します。ディープラーニングやニューラルネットワークの技術が発展し、様々な業界での応用が広がるでしょう。</p>
		</div>
		<div class="feature-item">
			<h2>Item 2</h2>
			<h3>クラウドテクノロジーの普及:</h3>
			<p>クラウドコンピューティングはますます一般的になり、企業や個人がデータやアプリケーションをより柔軟に利用できるようになります。これにより、スケーラビリティが向上し、リモートワークが一層推進される可能性があります。</p>
		</div>
		<div class="feature-item">
			<h2>Item 3</h2>
			<h3>サイバーセキュリティの重要性:</h3>
			<p>デジタル化が進む中で、サイバーセキュリティの脅威も増加するでしょう。セキュリティ専門家やエシカルハッカーの需要が高まり、セキュリティ対策がより高度かつ包括的になるでしょう。</p>
		</div>
	</div>


	<!-- Wrap Layout -->
	<div class="wrap-layout">
		<div class="wrap-layout-item">1</div>
		<div class="wrap-layout-item">2</div>
		<div class="wrap-layout-item">3</div>
		<div class="wrap-layout-item">4</div>
		<div class="wrap-layout-item">5</div>
	</div>

	<!-- Center layout -->
	<div class="center-layout">
		<h3 class="center-layout-item">Center layout</h3>
	</div>


	<!-- Chart layout -->
	<div class="chart-layout">
		<div class="chart-layout-item" style="--percent: 10%">10%</div>
		<div class="chart-layout-item" style="--percent: 20%">20%</div>
		<div class="chart-layout-item" style="--percent: 40%">40%</div>
		<div class="chart-layout-item" style="--percent: 90%">90%</div>
		<div class="chart-layout-item" style="--percent: 80%">80%</div>
		<div class="chart-layout-item" style="--percent: 40%">40%</div>
		<div class="chart-layout-item" style="--percent: 10%">10%</div>
		<div class="chart-layout-item" style="--percent: 20%">20%</div>
		<div class="chart-layout-item" style="--percent: 69%">69%</div>
		<div class="chart-layout-item" style="--percent: 96%">96%</div>
		<div class="chart-layout-item" style="--percent: 60%">60%</div>
		<div class="chart-layout-item" style="--percent: 88%">88%</div>
	</div>


	<!-- The End -->
	<div class="the-end">
		<div class="the-end-first">
			<p>IT（情報技術）の業界は急速に進化し、絶え間ない変化が特徴です。ソフトウェア開発、ハードウェア製造、ネットワーク管理、データ分析など、多岐にわたる領域が含まれます。クラウドコンピューティングや人工知能の台頭により、新たな技術が次々と生まれ、企業や個人の生活に影響を与えています。</p>
			<p>競争が激しく、スキルの更新が求められる一方で、高い需要も存在します。セキュリティの重要性が増しており、サイバーセキュリティの専門家がますます必要とされています。また、デジタルトランスフォーメーションが進む中、企業はデータ駆動の意思決定や効率向上に焦点を当て、新たなビジネスモデルを模索しています。</p>
			<p>フリーランスやリモートワークの増加も見られ、柔軟な働き方が広がっています。ただし、テクノロジーの進化に追いつくためには学習意欲や自己啓発が不可欠です。総じて言えるのは、ITの業界は未来志向で、常に変化し続ける環境であるということです。</p>

		</div>
		<div class="the-end-second">
			<div class="the-end-second-one">
				<p>量子コンピューティングの研究が進み、従来のコンピューティングでは不可能だった複雑な問題に対処できるようになるかもしれません。これにより、暗号解読や薬物設計などの分野で大きな進展が期待されます。</p>
			</div>
			<div class="the-end-second-two">
				<p>ITは医療分野においても大きな変革をもたらします。電子カルテや健康モニタリングデバイス、人工知能を活用した診断支援システムなどが進化し、医療の効率性と精度が向上します。</p>
				<p>ITは環境への負荷を低減するためのソリューションを提供し、エネルギー効率の向上や再生可能エネルギーの最適利用など、エコテクノロジーの進展をサポートします。</p>
			</div>
		</div>
	</div>










	<div class="main">

		<div class="side-bars hide-on-tablet hide-on-mobile ">
			<div>Side Bars</div>
			<div>
				<ul>
					<li class="item"><span>Item1</span></li>
					<li class="item"><span>Item2</span></li>
					<li class="item"><span>Item3</span></li>
					<li class="item"><span>Item4</span></li>
					<li class="item"><span>Item5</span></li>
					<li class="item"><span>Item6</span></li>
					<li class="item"><span>Item7</span></li>
					<li class="item"><span>Item8</span></li>
					<li class="item"><span>Item9</span></li>
					<li class="item"><span>Item10</span></li>
					<li class="item"><span>Item11</span></li>
					<li class="item"><span>Item12</span></li>
					<li class="item"><span>Item13</span></li>
					<li class="item"><span>Item14</span></li>
					<li class="item"><span>Item15</span></li>
				</ul>
			</div>

		</div>

		<div class="content">
			<div class="grid container">
				<div class="row">
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 1</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 2</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 3</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 4</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 5</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 6</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 7</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 8</h1>
						</div>
					</div>
					<div class="col l-4 m-6  c-12">
						<div class="course-item">
							<h1>Course 9</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 10</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 11</h1>
						</div>
					</div>
					<div class="col l-4 m-6 c-12">
						<div class="course-item">
							<h1>Course 12</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script> -->
</html>