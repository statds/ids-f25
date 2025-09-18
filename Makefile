render:
	quarto render

packages:
	pip install -r requirements.txt

req:
	pip freeze > requirements.txt

publish:
	printf "y\n" | quarto publish gh-pages

clean:
	rm -rf _site .quarto
