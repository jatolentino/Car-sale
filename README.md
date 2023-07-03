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

### 1. Creating directory of the project
Name: car-sale-site, open it with git bash or or VSCode

### 2. In the terminal from the root directory car-sale-site
```bash
virtualenv --version
python -m venv env
source env/Scripts/activate
pip freeze
pip install django==3.0.7
python -m pip install --upgrade pip
django-admin.py startproject carsale .  
#django-admin startproject carsale .
#deactivate 
python manage.py runserver 8000 #or any free port
```

### 3. In the GUI
Stop the server a while (`ctrl + c`)
In the GUI bash:
```bash
python manage.py startapp pages
```
Pages app is created

### 4. In the carsale project
Go to carsale/settings.py and add the app just created with
```python
INSTALLED_APP=[
'pages.apps.PagesConfig',      #name: .PagesConfig is the same in class: pages/apps.py
```

### 5. Right click in pages -> New files: urls.py
In carsale/urls.py
```python
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('pages.urls')),
]
```

### 6. Copy Code from carsale/urls.py to pages/urls.py
Comment out admin line in  pages/urls.py: 
```python
#from django.contrib import admin
from django.urls import path
from . import views
urlpatterns=[
	#path('admin/', admin.site.urls),
	path('',view,home, name='home'),             #ERROR HERE views.home
	]
```	

### 7. In pages/views.py
Import the render and create your views here.
```python
from django.shortcuts import render

def home(request):
    return render(request,'pages/home.html')
```

- Create a new foler named templates in the root
- Create new folder inside templates called pages
- create new file inside templates/pages: home.html
- Add: `<h2>Hello World</h2>`
-In carsale/settings.py add in the zone of TEMPLATES, line 58
```python
 'DIRS':['templates'],
```


### 8. Test the template
```bash
source env/Scripts/activate
python manage.py runserver 8000
```

Replace content of home by the template and SAVE IT:
`index.html -> templates/pages/home.html`

### 9. Static folder:
- Create carsale/static
- Copy Folders (css,fonts and js imag) from Template to carsale/static

### 10. Add in carsale/settings.py, last line
```python
STATIC_ROOT = os.path.join(BASE_DIR, 'static')   # from databases variable name location
STATICFILES_DIRS = [
    os.path.join(BASE_DIR,'carsale/static'),
]
```
### 11. Push static
- With the server paused, add the command TO PUSH STATIC into a folder in the project where all the files are uploaded: 
```python
python manage.py collectstatic
```
- In templates/pages/home.html
```html
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'css/bootstrap.min.css' %}">
```
- Start the server again and do the following changes
`href="css/bootstrap.min.css"`  ->  `href="{% static 'css/bootstrap.min.css' %}"`
for Lines 11-24, 27, 28, 38, 125, 134, 143, 1236-1254 

- In carsale/static/js/app.js, search for logo (ctrl +f) change there (lines: 111,117,119,123) to
`'static/img/logos/black-logo.png'`

### 12. Create Templates - 3.2

- Create file: templates/base.html
- Cut lines of home.html from the beginning to line 118  and pase it to base.html. After, add it to base.
```html
{% block content %}

{% endblock %}
```

- Cut lines of home.html to base.html, lines from `<script src="{% static 'js/jquery-2.2.0.min.js' %}" .. </body>` and past it to  base.html 

- Add those lines also in in head of templates/home.html
```html
{% extends 'base.html' %}

{% block content %}

{% load static %}
ALL CODE HERE
{% endblock %}
```

### 13. Breaking HTML template - 3.3

- Create folder templates/includes
- Create file templates/includes/navbar.html
- Create file tempaltes/includes/topbar.html
- Create file tempaltes/includes/footer.html

- Cut lines of base.html
```html
<!-- Top header start -->
:                          => topbar.html
:
<!-- Top header end -->
```

- Cut lines of base.html
```html
<!-- Main header start -->
:                          => navbar.html
:
<!-- Main header end -->
```


- Cut lines of home.html
```
<!-- footer start -->
:                          => footer.html
:
<!-- footer end -->
```

- In base.html, add the following lines before: `{% block content %}    {% endblock %}` and after it
```html
{% include 'includes/topbar.html' %}

{% include 'includes/navbar.html' %}
{% block content %}


{% endblock %}
{% include 'pages/footer.html' %}
```

### 14. Navigation bar - 3.4

- Add in path in pages/urls.py
```python
path('about', views.about, name='about'),
```
- Add in /pages/view.py
```python
def about(request):
    return render(request,'pages/about.html')
def services(request):
    return render(request,'pages/services.html')
def contactrequest):
    return render(request,'pages/contact.html')
```

- Add to file templates/pages/about.html, /services.html and /contact.html
    - In about.html:	`<h2>About</h2>`
    - In services.html:	`<h2>Services</h2>`
    - In contact.html:	`<h2>Contact</h2>`

- Test: localhost/about

    - Enable button: about, services, and contact
    - Change this line in templates/includes/navbar.html

    ```html
    href="/carhouse/about.html"  -> href="{% url 'about' %}"
    href="{% url 'services' %}"
    href="{% url 'contact' %}"
    ```

15. Pages Template Implementation 3.5

- Insert from carhouse folder/about.html to templates/pages/about.html
```html
{% extends 'base.html' %}   // add this line
{% block content %}					// add this line
<!-- Sub banner start -->

<!-- Sub Banner end -->
{% endblock %}                // add this line
```

- Make available button of home inside about.html, go back to home
```html
<li><a href="{% url 'home' %}">Home</a></li>         //line modified
```

- Add more in templates/pages/about.html from folder/about.html
```html
<!-- Service center strat -->  	// line 139
<!-- Our team end -->  					// line 298
```

- Update Static images in /templates/pages/about.html
```html
{% load static %} 	 \\add in line 4 after block content

{% static 'img/car/car-1.jpg' %} //29, 42
{% static 'img/car/car-1.jpg' %} //32, 47
{% static 'img/car/car-1.jpg' %} //35, 52
```

- Insert from carhouse folder/services.html to templates/pages/services.html
```html
{% extends 'base.html' %}
{% block content %}
<!-- Sub banner start -->
:
:     <li><a href="{% url 'home' %}">Home</a></li>
:
<!-- Sub Banner end -->

<!-- Services start -->
:
:
<!-- Services end -->
{% endblock %}
```

- Insert from carhouse folder/contact.html to templates/pages/contact.html
```html
{% extends 'base.html' %}
{% block content %}
<!-- Sub banner start -->
:
:     <li><a href="{% url 'home' %}">Home</a></li>
:
<!-- Sub Banner end -->

<!-- Contact 2 start -->
:
:
<!-- Contact 2 end -->
{% endblock %}
```
- Make available search option in templates/pages/about.html
Copy `<!-- Full Page Search -->` CODE of home.html in templates/base.html
```html
{% block content %}
{% endblock %} // AFTER THESE LINES
<!-- Full Page Search -->
:
</div>
```

### 15. PostgreSQL - database 4.1

- Install PostgresSQL: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
- Modify the default browser: In the Windowd system tray, rick click in Postgres icon and configure:
    - "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app=%URL%		  -> for chrome
    - "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --app=%URL%  -> for brave

- Create Database:
    - Rick click in Databases > Create > Database
    - Database: your_database_name
    - Owner: your_owner
    - Save it

- In carsale/setting.py
```python
DATABASES = {
    'default': { 
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'your_database_name',#os.path.join(BASE_DIR, 'db.sqlite3'),	edited
        'USER': 'your_owner',	      # edited	
        'PASSWORD': 'your_password',  # edited
        'HOST': 'localhost',		  # edited	
    }
}
```

### 16. Create Django super user 4.2

- In your project environment, install the package: psycopg2
```bash
pip install psycopg2
python manage.py makemigrations
python manage.py migrate 
winpty python manage.py createsuperuser
	user: your_super_user
	email: your_email
	pass: your_password
```
- Run the server:
python manage.py runserver 8000 
- Go to: localhost:8000/admin with the credentials just created for the super user

### 17. Create the team model 4.3

- In pages/models.py
```python
from django.db import models
class Team(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    designation = models.CharField(max_length=255)
    photo = models.ImageField(upload_to='photos/%Y/%m/%d')
    facebook_link = models.URLField(max_length=100)
    twitter_link = models.URLField(max_length=100)
    google_plus_link = models.URLField(max_length=100)
    created_date = models.DateTimeField(auto_now_add=True)
		
		def __str__(self):
			return self.first_name          #to make the name of user display in DB
```
- Stop server and install the pillow package
```bash
pip install pillow
python manage.py makemigrations     # create pages/migrations/0001_initial.py
python manage.py migrate     		# create database structure
python manage.py runserver 8000
```
> Whenever a change is done in pages/models.py (DB), migrations commands is needed

- In pages/admin.py add and reload page localhost:8000/admin
```python
from .models import Team
# Register your models here.
admin.site.register(Team)
```
>A Teams(Plural of Team DB created) tag has been created in PAGES under `localhost:8000/admin`

- In localhost:8000/admin
- Add a user:
Click in Teams > Add Team (button on the left corner, complete data and upload pic)

### 18. Media file config 4.4

Add at the end /carsale/settings.py
```python
# MEDIA settings
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
MEDIA_URL = '/media/'
```

- Add in carsale/urls.py
```python 
from django.conf.urls.static import static   # added
from djanfo.conf import settings			 # added

path('',include('pages.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) # added
```
### 18. Display Team Data 4.5
- Add the teams in `http://localhost:8000/admin/pages/team/`
- Fill their names, last names, upload photo and social media link in pages/views.py, add the following:
```python
from .models import Team   #Added this line on top
def home(request):
    teams = Team.objects.all()
    data = {
        'teams' : teams,
    }
		return render(request,'pages/home.html', data)
		
def about(request):
    teams = Team.objects.all()
    data = {
        'teams' : teams,
    }
		return render(request,'pages/about.html', data)
```

- Make pic and info of teams avaialable in home.html and about.html

- In templates/pages/home.html

    - Line: 891 `<!-- Our team start -->`
    - Delete the 4 views from 919 to 990, just one `<div class="slick-slide-item">` may remain of the 5
    - Encapsulate the remaining view with a for loop
    ```html
    {% for team in teams %}
    <div class="slick-slide-item">
    :
    <h4><a href="...">Brandon Miller</a></h4> => ">{{team.first_name}} {{team.last_name}}</a></h4>
    <h5>{{team.designation}}</h5>
    :
    </div>
    {% endfor %}
    ```

    - Line 906: `img src="img/avatar/avatar-12.jpg" => img src="team.photo.url"`
    - Line 909 - 911
    ```html
    a href="#" class="facebook-bg"><i class="fa => 909 CHANGED TO AND SO ON:
    a href="{{team.facebook_link}}" target="_blank" class="facebook-bg"><i class="fa..
    a href="{{team.twitter_link}}" target="_blank" class="facebook-bg"><i class="tw..
    a href="{{team.google_plus_link}}" target="_blank" class="facebook-bg"><i class="go..
    ```

- In templates/pages/about.html

    - Line: 73 <!-- Our team start -->
    - Delete the 4 views from 102 to 173, just one `<div class="slick-slide-item">` may remain of the 5
    - Encapsulate the remaining view with a for loop
    ```html
    {% for team in teams %}
    <div class="slick-slide-item">
    :
    <img src="img/avatar/avatar-12.jpg" => <img src="{{team.photo.url}}"
    <h5>{{team.designation}}</h5>
    :
    </div>
    {% endfor %}
    ```

    - Line 98:   `..detail.html">Brandon Miller` => `..detail.html">{{team.first_name}} {{team.last_name}} <h5>{{team.designation}}</h5>`
    - Line 92 - 94:

    ```html
    a href="#" class="facebook-bg"><i class="fa => 909 CHANGED TO AND SO ON:
    a href="{{team.facebook_link}}" target="_blank" class="facebook-bg"><i class="fa..
    a href="{{team.twitter_link}}" target="_blank" class="facebook-bg"><i class="tw..
    a href="{{team.google_plus_link}}" target="_blank" class="facebook-bg"><i class="go..
    ```


- Fixing home button of navbar and logo

    - In templates/indlues/navbar.html, 
    - Line 25, modified by => `<a class="nav-link dropdown-toggle" href="{% url 'home' %}">`
    - Line 6, modified by `<a class="navbar-brand company-logo" href="{% url 'home' %}">`

### 19. Team Admin Customization 4.6 ,  add table, photo clickable, thumbnail,  to database

In pages/admin.py modify
```python
from django.contrib import admin
from .models import Team
from django.utils.html import format_html
# Register your models here.

class TeamAdmin(admin.ModelAdmin):
    def thumbnail(self, object):
        return format_html('<img src="{}" width="40" style="border-radius: 50px;" />'.format(object.photo.url))     # to add photo

    thumbnail.short_description = 'Photo'

    list_display = ('id', 'thumbnail', 'first_name', 'designation', 'created_date')
    list_display_links = ('id','thumbnail','first_name',)          # to make it clickable
    search_fields = ('first_name','last_name','designation')
		list_filter = ('designation')
admin.site.register(Team, TeamAdmin)
```
