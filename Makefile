render:
	quarto render

py313packages:
	pip install -r requirements.txt


py312packages:
	pip install -r requirements-dl.txt


req:
	pip freeze > requirements.txt

req-dl:
	pip freeze > requirements-dl.txt

publish:
	printf "y\n" | quarto publish gh-pages

clean:
	rm -rf _site .quarto
