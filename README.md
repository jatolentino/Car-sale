<h1 align="center">
	<img src="https://raw.githubusercontent.com/jatolentino/Car-sale/main/static/img/logos/icon1.svg" width="200" alt="car-sale-logo">
</h1>

<p align="center">
    A Car Sale point
</p>

<div align="center">


![Static Badge](https://img.shields.io/badge/downloads-221-red?logo=GitHub)
![GitHub repo size](https://img.shields.io/github/repo-size/jatolentino/Car-sale)
![GitHub language count](https://img.shields.io/github/languages/count/jatolentino/Car-sale?color=success&logo=CodersRank&logoColor=%23FFFFFF)
[![version](https://img.shields.io/badge/version-1.9-red.svg)](//npmjs.com/package/Car-sale)
![GitHub watchers](https://img.shields.io/github/watchers/jatolentino/Car-sale)
[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
![rating](https://img.shields.io/badge/rating-★★★★★-yellow)
![coverage](https://img.shields.io/badge/coverage-96%25-yellowgreen)
![uptime](https://img.shields.io/badge/uptime-100%25-green)
![Static Badge](https://img.shields.io/badge/forks-49-red?logo=fork)

</div>


## Features 
Project features
<details>
	<ul>
		<li>User login by Email/Facebook/Google</li>
		<li>User registration</li>
		<li>User password reset by email</li>
		<li>PostgreSQL database of cars</li>
		<li>Admin panel login and dashboard</li>
		<li>Search functionality</li>
		<li>User's Car Inquiry</li>
		<li>Email notifications of new inquiry to admin panel and via email</li>
	</ul>
</details>

<p align="center">
    	<img src="https://raw.githubusercontent.com/jatolentino/Car-sale/main/media/home.jpg">
</p>

	
## Quick Installation
Previous considerations: 
 - Python 3.11 installed
 - Pip installed (comes with Python 3, no worries)
 - Virtualenv installed (comes with Python 3, no worries)
 - Python added to your local variables <br>
	If you have python 3.11 or other versions, it's necessary to configure a new environment because the default environment with which this project runs works under Python 3.9. <br>
	To configure a new environment with your Python version, do this:
	- Delete the `env` folder on the root of this project
	- Create a new env: `python -m venv env`
	> Note: It's known that the package psycopg2-binary==2.9.5 is compatible with python 3.11 version and psycopg2-binary==2.9.3 (used in this project) is compatible with python 3.9
	> If you have python 3.11, be careful to make this change in the requirements.txt (meaning change to psycopg2-binary==2.9.5 as we use Python 3.9 that works with psycopg2 2.9.3)

Start here:
- Clone the repository to your local folder
- Open the folder repo with VS code or git bash
- In VS terminal or git bash, input the following commands
	```bash
	env/Scripts/activate #for vscode  # for git bash: source env/Scripts/activate
	pip install -r requirements.txt # don't forget to change here to psycopg2-binary==2.9.5 if you use python 3.11
	```
- Set `carsale/settings.py` environment parameters with the `carsale/.env` file to configure your database with PostgreSQL 
	```bash
	DEBUG=True
	SECRET_KEY='anything'
	DB_USER=your_postgresql_user
	DB_PASSWORD=your_postgresql_user_password
	DB_NAME=your_datbase_name
	EMAIL_HOST_USER=your_gmail
	EMAIL_HOST_PASSWORD=your_gmail_generated_password
	```
- Create your database in PgAdmin
	- Once installed PostgreSQL, create `your_postgresql_user` and `your_postgresql_user_password`
	- Create an empty database and name it as `your_datbase_name` 
	- To load the default database use the file `database.sql` given in the root of this project
	- In order to load the database aforementioned, go to your PostgreSQL database and right click on it, and choose the restore option, then pick the `database.sql` file, and voilá you will have the default admin and users to login (the usernames are admin and user, and password is password :D)
- Continue the setup in the terminal, we are about to set this whole thing up
	```bash
	python manage.py collectstatic
	python manage.py makemigrations
	python manage.py migrate
	python manage.py runserver 8000 #or any free port you got
	```

## How to use

- Navigate to the home page `http://192.168.0.127:8000/` and login with the superuser you created, add leads and agents as you want in `http://192.168.0.127:8000/admin` or create your agent acc in the home page.

<br>

<a id="Begin-Docs"></a>
## Guide to implement this project
The pictures portray the results reached on every step and the versions keep track of the project's progress
