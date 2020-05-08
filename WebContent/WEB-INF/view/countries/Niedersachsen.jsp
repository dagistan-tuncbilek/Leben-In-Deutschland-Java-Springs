<%@ include file="../../common/header.jspf"%>

<div class="container">

	<%@ include file="../../common/navbarlander.jspf"%>

	<div class="row">
		<div class="col-sm-12">
			<br><br>
			<h2 class="text-center"> Niedersachsen </h2> <br><br>
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="table-warning">
							<th>${question.number}. ${question.quest}</th>
						<tr>
					</tbody>
				</table>

				<table class="table table-hover table-bordered">
					<tbody>
						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='A'}">
									<td style="width: 50%" class="table-success">A:
										${question.answerA}</td>
								</c:when>
								<c:otherwise>
									<td style="width: 50%">A: ${question.answerA}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='B'}">
									<td class="table-success">B: ${question.answerB}</td>
								</c:when>
								<c:otherwise>
									<td>B: ${question.answerB}</td>
								</c:otherwise>
							</c:choose>
						</tr>

						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='C'}">
									<td class="table-success">C: ${question.answerC}</td>
								</c:when>
								<c:otherwise>
									<td>C: ${question.answerC}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='D'}">
									<td class="table-success">D: ${question.answerD}</td>
								</c:when>
								<c:otherwise>
									<td>D: ${question.answerD}</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</tbody>
				</table>

				<c:if test="${question.hasPhoto!=null}">
					<div class="border border-dark text-center">
						<img src="${pageContext.request.contextPath}/resources/${question.number}.png"
							class="img-fluid" alt="Responsive image" width="450" height="270">
					</div> 
				</c:if>	
				<br>
			</c:forEach>
		</div>
	</div>

</div>

<%@ include file="../../common/footer.jspf"%>