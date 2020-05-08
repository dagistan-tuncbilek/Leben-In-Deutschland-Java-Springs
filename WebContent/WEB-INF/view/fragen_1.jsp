<%@ include file="../common/header.jspf"%>

<div class="container">

	<%@ include file="../common/navbar300fragen.jspf"%>

	<div class="row">
		<div class="col-sm-12">
			<nav class="navbar-expand-sm" aria-label="fragen300">
				<br><br>
				<ul class="pagination pagination-sm justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true">Previous</a></li>
					<li class="page-item active" aria-current="page"><a class="page-link" 
						href="fragen_1">1 <span class="sr-only">(current)</span></a></li>
					<li class="page-item"><a class="page-link" href="fragen_2">2 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_3">3</a></li>
					<li class="page-item"><a class="page-link" href="fragen_4">4 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_5">5</a></li>
					<li class="page-item"><a class="page-link" href="fragen_6">6 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_7">7</a></li>
					<li class="page-item"><a class="page-link" href="fragen_8">8 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_9">9</a></li>
					<li class="page-item"><a class="page-link" href="fragen_10">10 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_11">11</a></li>
					<li class="page-item"><a class="page-link" href="fragen_12">12 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_2">Next</a></li>
				</ul>
				<br />
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="table-warning">
							<th>${question.number}. ${question.quest} (${question.thema})</th>
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

	<div class="row">
		<div class="col-sm-12">
			<nav aria-label="...">
				<ul class="pagination pagination-sm justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true">Previous</a></li>
					<li class="page-item active" aria-current="page"><a class="page-link" 
						href="fragen_1">1 <span class="sr-only">(current)</span></a></li>
					<li class="page-item"><a class="page-link" href="fragen_2">2 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_3">3</a></li>
					<li class="page-item"><a class="page-link" href="fragen_4">4 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_5">5</a></li>
					<li class="page-item"><a class="page-link" href="fragen_6">6 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_7">7</a></li>
					<li class="page-item"><a class="page-link" href="fragen_8">8 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_9">9</a></li>
					<li class="page-item"><a class="page-link" href="fragen_10">10 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_11">11</a></li>
					<li class="page-item"><a class="page-link" href="fragen_12">12 </a></li>
					<li class="page-item"><a class="page-link" href="fragen_2">Next</a></li>
				</ul>
			</nav>
			<br /><br />
		</div>
	</div>

</div>

<%@ include file="../common/footer.jspf"%>
