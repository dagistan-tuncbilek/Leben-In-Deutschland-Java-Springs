<%@ include file="../common/header.jspf"%>

<div class="container">

	<%@ include file="../common/navbarquiz.jspf"%>

	<div class="row">
		<div class="col-sm-12">
			<br><br>
			<h2 class="text-center">TESTERGEBNIS</h2><br>
  			<ul class="list-group list-group-horizontal justify-content-center">
			  <li class="list-group-item list-group-item-success font-weight-bold">Richtige Antwort : ${trueAnswer}</li>
			  <li class="list-group-item list-group-item-warning font-weight-bold">Falsche Antwort : ${falseAnswer}</li>
			  <li class="list-group-item font-weight-bold">Leere Antwort : ${emptyAnswer}</li>
			</ul>
			<br>
			  <a class="btn btn-primary" href="selectland" role="button">Neu Prüfung</a><br><br>
			  
			  
			  <c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="">
							<th>${question.testNumber}. ${question.quest}</th>
						<tr>
					</tbody>
				</table>

				<table class="table table-hover table-bordered">
					<tbody>
						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='A'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bold"> A: ${question.answerA}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bold">A: ${question.answerA}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='A'}">
											<td style="width:50%" class="text-danger font-weight-bold">A: ${question.answerA}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">A: ${question.answerA}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='B'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bold">B: ${question.answerB}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bold">B: ${question.answerB}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='B'}">
											<td style="width:50%" class="text-danger font-weight-bold">B: ${question.answerB}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">B: ${question.answerB}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>
						</tr>

						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='C'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bold">C: ${question.answerC}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bold">C: ${question.answerC}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='C'}">
											<td style="width:50%" class="text-danger font-weight-bold">C: ${question.answerC}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">C: ${question.answerC}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='D'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bold">D: ${question.answerD}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bold">D: ${question.answerD}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='D'}">
											<td style="width:50%" class="text-danger font-weight-bold">D: ${question.answerD}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">D: ${question.answerD}</td>
										</c:otherwise>
									</c:choose>							
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
				
				<br />
			</c:forEach>
			
			  <a class="btn btn-primary" href="selectland" role="button">Neu Prüfung</a><br><br><br>
			  
		</div>
		<br/><br/><br/>
	</div>

</div>

<%@ include file="../common/footer.jspf"%>