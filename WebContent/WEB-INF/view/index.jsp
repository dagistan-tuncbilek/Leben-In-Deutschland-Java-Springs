<%@ include file="../common/header.jspf"%>

<div class="container">
	<%@ include file="../common/navbar.jspf"%>

	<div class="row">
		<div class="col-sm-12">
			<br /> <br />
			<p>Willkommen bei der Online-Lernplattform für den Test Leben in
				Deutschland! Hier können Sie kostenlos und unverbindlich testen, ob
				Sie den Test bestehen würden.</p>
			<p>Im Test kommen Fragen für Ihr Bundesland vor. Bitte wählen Sie
				Ihr Bundesland aus:</p>
			<br />

			<form action="quiz" method="get">
				<button class="btn btn-primary btn-lg" role="button" name="subject"
					type="submit" value="300"> Baden-Württemberg </button>
				<button class="btn btn-success btn-lg" role="button" name="subject"
					type="submit" value="310"> Bayern </button>
				<button class="btn btn-warning btn-lg" role="button" name="subject"
					type="submit" value="320"> Berlin </button>
				<button class="btn btn-danger btn-lg" role="button" name="subject"
					type="submit" value="330"> Brandenburg </button>
				<br /> <br />
				<button class="btn btn-danger btn-lg" role="button" name="subject"
					type="submit" value="340"> Bremen </button>
				<button class="btn btn-secondary btn-lg" role="button"
					name="subject" type="submit" value="350"> Hamburg </button>
				<button class="btn btn-primary btn-lg" role="button" name="subject"
					type="submit" value="360"> Hessen </button>
				<button class="btn btn-warning btn-lg" role="button" name="subject"
					type="submit" value="370"> Mecklenburg-Vorpommern </button>
				<br /> <br />
				<button class="btn btn-primary btn-lg" role="button" name="subject"
					type="submit" value="380"> Niedersachsen </button>
				<button class="btn btn-danger btn-lg" role="button" name="subject"
					type="submit" value="390"> Nordrhein-Westfalen </button>
				<button class="btn btn-secondary btn-lg" role="button"
					name="subject" type="submit" value="400"> Rheinland-Pfalz </button>
				<button class="btn btn-success btn-lg" role="button" name="subject"
					type="submit" value="410"> Saarland </button>
				<br /> <br />
				<button class="btn btn-success btn-lg" role="button" name="subject"
					type="submit" value="420"> Sachsen </button>
				<button class="btn btn-warning btn-lg" role="button" name="subject"
					type="submit" value="430"> Sachsen-Anhalt </button>
				<button class="btn btn-danger btn-lg" role="button" name="subject"
					type="submit" value="440"> Schleswig-Holstein </button>
				<button class="btn btn-primary btn-lg" role="button" name="subject"
					type="submit" value="450"> Thüringen </button>
			</form>
			<br /> <br /> <br />
		</div>

	</div>

	<div class="row">
		<div class="col-sm-12"></div>
	</div>
</div>
<%@ include file="../common/footer.jspf"%>
