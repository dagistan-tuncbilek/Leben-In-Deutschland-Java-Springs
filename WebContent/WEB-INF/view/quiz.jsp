<%@ include file="../common/header.jspf"%>

<div class="container">

	<%@ include file="../common/navbarquiz.jspf"%>

	<div class="row">
		<div class="col-sm-12">

			<br><br>
			<h2 class="text-center">PRÜFUNG</h2>
		    <p>In diesem Test beantworten Sie 33 Fragen zu Deutschland. 
		    	30 Fragen beziehen sich auf Deutschland und 3 Fragen beziehen sich auf Staaten.</p>
			<br><br>
		<form  action="solution" METHOD="POST">
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="table-warning">
							<th>${question.testNumber}. ${question.quest}</th>
						<tr>
					</tbody>
				</table>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.testNumber}" value="A" id="answerA${question.testNumber}" >
				  <label class="form-check-label" for="answerA${question.testNumber}" >
				    A: ${question.answerA}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.testNumber}" value="B" id="answerB${question.testNumber}">
				  <label class="form-check-label" for="answerB${question.testNumber}">
				    B: ${question.answerB}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.testNumber}" value="C" id="answerC${question.testNumber}">
				  <label class="form-check-label" for="answerC${question.testNumber}">
				    C: ${question.answerC}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.testNumber}" value="D"  id="answerD${question.testNumber}">
				  <label class="form-check-label" for="answerD${question.testNumber}">
				    D: ${question.answerD}
				  </label>
				</div> <br/>  													
				<c:if test="${question.hasPhoto!=null}">
					<div class="border border-dark text-center">
						<img src="${pageContext.request.contextPath}/resources/${question.number}.png"
							class="img-fluid" alt="Responsive image" width="450" height="270">
					</div>
				</c:if>				
					<br />
			</c:forEach>
			 <button class="btn btn-primary" type="submit" value="Test Abgeschlossen">Test Abgeschlossen</button>
		</form>
			
		</div>
		<br/>
	</div>
	<br/><br/>

</div>

<%@ include file="../common/footer.jspf"%>