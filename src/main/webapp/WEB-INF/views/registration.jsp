<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">

<style>
#imgContainer {
	position: relative;
}

#addBtn {
	position: absolute;
	top: 75%;
	left: 58%;
}
</style>

</head>
<body>

	<my:navBar current="registration"></my:navBar>

	<!-- 상단 공백 -->
	<div style="margin-bottom: 15px"></div>

	<!-- form -->
	<form class="ui form" method="post" enctype="multipart/form-data">

		<!-- 상단 컨테이너 (프로필사진, addBtn) -->
		<div class="ui aligned container" id="imgContainer">
			<img class="ui centered medium bordered circular image" src="images/발바닥.png"> <label for="fileInput" class="big circular ui icon button" id="addBtn"><i class="large plus icon"></i></label>
			<input style="display: none" class="form-control" type="file" id="fileInput" name="photo" accept="image/*" />
		</div>

		<!-- 하단 컨테이너 -->
		<div class="ui grid container">

			<!-- 왼쪽 컨테이너 항목들 -->
			<div class="eight wide column">
				<div class="ui left aligned container" id="leftContainer">

					<div class="field">
						<input type="text" name="id" style="display: none">
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">이름</div>
							<input type="text" name="petName">
						</div>
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">품종</div>
							<input type="text" name="type">
						</div>
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">몸무게</div>
							<div class="ui fluid selection dropdown" id="select1">
								<input type="hidden" name="weight">
								<div class="default text">몸무게를 선택 해 주세요.</div>
								<i class="dropdown icon"></i>
								<div class="menu">
									<div class="item" data-value="small">소형견 ( 7kg 미만 )</div>
									<div class="item" data-value="medium">중형견 ( 7 ~ 14.9kg)</div>
									<div class="item" data-value="large">대형견 ( 15kg 이상 )</div>
								</div>
							</div>
						</div>
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">생년월일</div>
							<input type="date" name="birth">
						</div>
					</div>
				</div>
			</div>

			<!-- 오른쪽 컨테이너 항목들 -->
			<div class="eight wide column">
				<div class="ui right aligned container" id="rightContainer">
					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">함께한날</div>
						<input type="date" name="together">
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">성별</div>
							<div class="ui fluid selection dropdown" id="select2">
								<input type="hidden" name="gender">
								<div class="default text">성별을 선택 해 주세요.</div>
								<i class="dropdown icon"></i>
								<div class="menu">
									<div class="item" data-value="male">남아</div>
									<div class="item" data-value="female">여아</div>
								</div>
							</div>
						</div>
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">중성화 유무</div>
							<div class="ui fluid selection dropdown" id="select3">
								<input type="hidden" name="neutered">
								<div class="default text">중성화 유무를 선택 해 주세요.</div>
								<i class="dropdown icon"></i>
								<div class="menu">
									<div class="item" data-value="yes">했어요</div>
									<div class="item" data-value="no">안했어요</div>
								</div>
							</div>
						</div>
					</div>

					<div class="field">
						<div class="ui fluid labeled big input mt-5">
							<div class="ui label">반려동물 등록 번호</div>
							<input type="text" name="registrationNum">
						</div>
					</div>

					<div class="mt-4">
						<button class="ui large button" type="submit">등록하기</button>
					</div>
				</div>
			</div>
		</div>

	</form>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>

	<script>
		$('#select1').dropdown();
		$('#select2').dropdown();
		$('#select3').dropdown();
	</script>
</body>
</html>