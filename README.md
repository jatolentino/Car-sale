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
    	<img src="https://raw.githubusercontent.com/jatolentino/Car-sale/main/media/home1.jpg">
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

### 20. Header and Footer 5.1

- Templates/includes/topbar
```html
..fa-phone"></i>+51-997-008-163</a>
..ssel.com"><i class="fa fa-envelope"></i>user@hotmail.com</a>
..ssel.com"><i class="fa fa-clock-o"></i>Mon - Sat: 8:00am - 4:00pm</a>
````
- Replace 
`<p class="copy">© 2023 <a href="#">carsale Corp.</a> All Rights Reserved.</p>` with `<p class="copy">© {% now 'Y' %} carsale Corp. All Rights Reserved.</p>`

- Also in line 14: 
```html
<li><a href="#" class="facebook-bg"... => <li><a href="https://linkedin.com/" target="_blank" class..
<li><a href="#" class="twitter-bg"... => <li><a href="https://linkedin.com/" target="_blank" class..
<li><a href="#" class="google-bg"... => <li><a href="https://linkedin.com/" target="_blank" class..
<li><a href="#" class="linkdein-bg"... => <li><a href="https://linkedin.com/" target="_blank" class..
```
- And in Templates/pages/home.html, line 938, questions
```html
<a href="contact.html" class= ... => <a href="{% url 'contact' %}" class=..
```


### 21. Dynamic navbar - colored on state 5.2
- This
```html
<a class="nav-link dropdown-toggle" href="{% url 'home' %}"> 
    Home
</a>
```
- Modified to
```html
<a
	{% if '/' == request.path %}	
	class="nav-link active"
	{% else %}
	class="nav-link"
	{% endif %}
	href="{% url 'home' %}">
		Home
</a>
```
- And
```html
<a class="nav-link" href="{% url 'about' %}">
		About
</a>
```
- To
```
<a
	{% if 'about' in request.path %}	
	class="nav-link active"
	{% else %}
	class="nav-link"
	{% endif %}
	href="{% url 'about' %}">
		About
</a>
```
- Also
```html
<a class="nav-link" href="{% url 'services' %}">
		Services
</a>
```
- Changed to 
```html
<a
	{% if 'services' in request.path%}
  class="nav-link active"
  {% else %}
  class="nav-link"
  {% endif %}
  href="{% url 'services' %}">
		Services
</a>
```
- Here same in
```html
	<a class="nav-link" href="{% url 'contact' %}">Contact</a>
</li>
<li>
    <li class="nav-item dropdown m-hide">
<a href="#full-page-search" class="nav-link h-icon">
```
- Modified to
```html
<a
	{% if 'contact' in request.path %}
  class="nav-link active"
  {% else %}
  class= "nav-link"
  {% endif %}
  href="{% url 'contact' %}">
    Contact
</a> 
```
- In templates/pages/home.html, line 16
```html
<a href="services.html" class... => <a href="{% url 'services' %}" class...
```

### 22. Cars app 5.3

- Stop the server, and create a new app
```bash
python manage.py startapp cars
```
- In carsale/setting.py add in Installed_apps, line 33
```python
INSTALLED_APPS = [
    'cars.apps.CarsConfig',
```
- Copy file pages/urls.py to cars and edit cars/urls.py. Also delete all inside urlpatterns and add
```python
urlpatters = [
    path('', views.cars, name='cars'),
]
```
- In carsale/urls.py, inside urlspatterns brackets
```python
urlpatterns = [
		...
	  path('cars/',include('cars.urls')),
		...
]+ static....     ROOT)
```
- In cars/views.py, add
```python
def cars(request):
    return render(request, 'cars/cars.html')
```
- In templates, create the folder cars (templates/cars) and the file cars.html (templates/cars/cars.html)
```html
<h2>Cars</h2>
```
- Now localhost:8000/cars is available but not the buttom Cars. To make cars buttom clickable, add in Templates/include/navbar.html,  line 26, `href="{% url 'cars' %}"`

### 23. Setup Car Tempates 5.4
- Add in templates/cars/cars.html,
```html
{% extends 'base.html' %}


{% block content %}

<!-- Sub banner start, line 124-->
...
<!-- Sub Banner end, line 136-->

<!-- Featured car start, line 138-->       
...
<!-- Featured car end, line 691--> 				

{% endblock %}
```
- Activate home button inside localhost/cars.html, line 10:
```html
<li><a href="index.html">Home</a></li>  => <li><a href="{% url 'home' %}">Home</a></li> 
```

### 24. Setup Car Tempates 5.5
- Make cars button clickable in HOME, templates/includes/navbar.html, line 25
```html
<li class="nav-item">
  <a                               <!-- from cars/urls.py -->
	{% if 'cars' in request.path %}
    class="nav-link active"
    {% else %}
    class="nav-link"
    {% endif %}
    href="{% url 'cars' %}">
    Cars
    </a>
 </li>
```

> Note: Sometimes identation is a problem. To solve those kind of problems, delete the identation and add spaces manually, notepad prodives default tabs, while Atom edutir receives text in form of SPACES

- Fix image logo in cars.html. In carsale/static/js/app.js, line 111, 117, 119
```html
..attr('src', 'static/img... => attr('src', '../static/img..
```
- Reload page and clean cache with CTRL + F5

### 25. Create car model (5.6)  and add info of cars in DB (localhost/admin)
- In cars/admin.py, add
```python
from .models. import Car
	admin.site.register(Car)
```

- In cars/models.py , add from FILE: 6.1 choices_list_car_model.txt

```python
from django.db import models
from datetime import datetime
class Car(models.Model):
    state_choice = (
        ('AL', 'Alabama'),
        ('AK', 'Alaska'),
        ('AZ', 'Arizona'),
				...
				('WY', 'Wyoming'),
	)

    car_title = models.CharField(max_length=255)

    year_choice = []
    for r in range(2000, (datetime.now().year+1)):
        year_choice.append((r,r))
		
    features_choices = (  # from choices_list_car_model.txt
        ('Cruise Control', 'Cruise Control'),
        ....
        ('Bluetooth Handset', 'Bluetooth Handset'),
    )
		door_choices = (
        ('2', '2'),
				...
        ('6', '6'),
    )

    car_title = models.CharField(max_length=255)
    state = models.CharField(choices=state_choice, max_length=100)
    city = models.CharField(max_length = 100)
		...
		...
    no_of_owners = models.CharField(max_length = 100)
    is_featured = models.BooleanField(max_length = 100)
    created_date = models.DateTimeField(default=datetime.now, blank=True)
```

- Stop the server and migrate the changes to take effect
```bash
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 8000
```
- Go to localhost/admin, clickk on Cars and add a car to the DB

### 26.CKEditor & MultiSelectFields 6.1 - editor of description section in DB 
```bash
pip install django-ckeditor
pip install django-multiselectfield
```
Go to carsale/settings.py, and add the CKEditor:
```python
installed_apps = [ 
...
'ckeditor',
]
```
- In cars/moldes.py, add
```python
from ckeditor.fields import RichTextField
from multiselectfield import MultiSelectField

 description = RichTextField()
 features = MultiSelectField(choices=features_choices)
 ....

 def __str_(self):
	 return self.car_title
```
- Make migration
``` python
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 8000
```

### 27.Add Car data, creating a car profile in DB 6.2

- In localhost/admin, Cars -> Add Cars. Fill the info of the cars with the files in car-photos directory, only 4 cars

### 28. Car Admin Customization 6.3 Custop table of cars in DB

- In cars/admin.py, copy from pages/admin.py
```python
from django.contrib import admin
from .models import Car
from django.utils.html import format_html
# Register your models here.

class CarAdmin(admin.ModelAdmin):
    def thumbnail(self, object):
        return format_html('<img src="{}" width="40" style="border-radius: 50px;" />'.format(object.car_photo.url))           //modified in object.car_photo..

    thumbnail.short_description = 'Car Image'
    list_display = ('id', 'thumbnail', 'car_title', 'city', 'color', 'year', 'body_style', 'fuel_type', 'is_featured')
		list_display_links = ('id', 'thumbnail', 'car_title')   // make car title clickable
		list_editable = ('is_featured',)   // make featured editable in table
admin.site.register(Car, CarAdmin)
		search_fields = ('id', 'car_title', 'city', 'model', 'body_style', 'fuel_type')  //serach engine
    list_filter = ('city', 'model', 'body_style', 'fuel_type') // filter engine
```

### 29. Featured Cars, addidng to the page 7.1
- In pages/views.py,  line 6 onwards
```python
from cars.models import Car 
teams = Team.objects.all()
    featured_cars = Car.objects.order_by('-created_date').filter(is_featured=True)
    data = {
        'teams' : teams,
        'featured_cars': featured_cars,
    }
```
- In templates/pages/home.html, line 185 - 242: group slide-item, 2nd group onwards to all those groups until slick-btn
```html
<div class="slick-slide-item">
...
...
</div>

<div class="slick-btn">
```

- Add Loop in templates/pages/home.html, line 129
```html
{% for car in featured_cars %}
	<div class="slick-slide-item">
	...
	...
	</div>
{% endfor %}
```
- Delete these lines in that group
```html
<span class="del"><del>$805.00</del></span>
  <br>
```
- In line 164
```html
...ls.html">Lamborghini Huracán</a>  => ...html">{{ car.car_title }}</a>
```

- In line 136 
```html
...<span>$780.00</span> => ...<span>${{ car.price }}}</span> 
```

- In line 138 
```html
...src="img/car/car-1.jpg" ... => src="{{ car.car_photo.url }}" alt="car" style="min-height: 262px; max-height: 262px;">
```

- And below in the gallary remove one section just for 4 extrea images
```html
href="img/car/car-1.jpg" => href="{{ car.car_photo_1 }}"
href="img/car/car-2.jpg" => href="{{ car.car_photo_2 }}"
href="img/car/car-3.jpg" => href="{{ car.car_photo_3 }}"
href="img/car/car-4.jpg" => href="{{ car.car_photo_4 }}"
```
- In line 168
```html
..pin"></i>123 Kathal St. Tampa City,  => ..pin"></i>{{car.state}}, {{car.city}}
```

- In line 172 - 177
```html
  <li>Petrol</li>  		=> <li>{{car.fuel_type}}</li>
  <li>4,000 km</li>		=> <li>{{car.miles}}</li>
  <li>Manual</li>		=> <li>{{car.transmission}}</li>
  <li>Sport</li>		=> <li>{{car.body_style}}</li>
  <li>white</li>		=> <li>{{car.color}}</li>
  <li>2020</li>			=> <li>{{car.year}}</li>
```

### 30. Latest Cars, addidng to the page 7.2
- Delete groups Line 273 - 337  onwards
```html
<div class="col-lg-4 col-md-6"> 
...
</div>
```

- In pages/view.py, edit
```python
def home(request):
    teams = Team.objects.all()
    featured_cars = Car.objects.order_by('-created_date').filter(is_featured=True)
    all_cars = Car.objects.order_by('created_date')
    data = {
        'teams' : teams,
        'featured_cars': featured_cars,
        'all_cars': all_cars,
    }
    return render(request,'pages/home.html', data)
```
- Add the loop in templates/pages/home.html, line 208 - 274
```html
{% for car in all_cars %}
  <div class="col-lg-4 col-md-6">
  ...
	</div>
{% endfor %} 
```
- And in lines: 256, 260, 266, 269, 218, 221, 224,214
```html
<a href="car-details.html">{{car.car_title}}</a> 
<i class="flaticon-pin"></i>{{car.state}}, {{car.city}} 
<p class="cartype">{{car.body_style}}</p> 
<p class="price">{{car.price}}</p>  
<span><i class="flaticon-way"></i></span>{{car.miles}} km 
<span><i class="flaticon-calendar-1"></i></span>{{car.year}} 
<span><i class="flaticon-manual-transmission"></i></span>{{car.transmission}}
<img class="d-block w-100" src="{{car.car_photo.url}}" alt="car" style="min-height: 262px; max-height: 262px;">
```

### 31. Fix image gallery 7.3 - images display in all_cars, featured_cars

- In `<div class="car-magnify-gallery">`, line 238 (first photo)
```html
<a href="{{car.car_photo.url}}" class="overlap-btn">
	<i class="fa fa-expand"></i>
	<img class="hidden" src="{{car.car_photo.url}}">
</a>
```
- Repeath fo the the other 4 photos:
```html
{% if car.car_photo_1 %}
<a href="{{car.car_photo_1.url}}" class="hidden">
	<img class="hidden" src="{{car.car_photo_1.url}}">
</a>
{% endif %}
```
- Line 144 , in featured_cars
```html
<a href="{{car.car_photo.url}}" class="overlap-btn">  <!-- "{{ car.car_photo }}" -->
	<i class="fa fa-expand"></i>
	<img class="hidden" src="{{ car.car_photo.url }}">
```
- Also for the other 4 photos
```html
{% if car.car_photo_1 %}
<a href="{{car.car_photo_1.url}}" class="hidden">
	<img class="hidden" src="{{ car.car_photo_1.url }}">
</a>
{% endif %}
```


### 32. Human readable numbers  7.4

- In carzone/seeting.py, go to installed_apps, and seth the hummanize prize for cars (numbers notation)
```python
INSTALLED_APPS = [
	...
	'django.contrib.humanize',
]
```
- In templates/home.html, line 136, add `<span>${{ car.price | intcomma }}</span>`
- In line 4
```html
{% block content %}
{% load humanize %}
{% load static %}
```
- Also hummanize km (kilometers), line 184
```html
<li>{{car.miles | intcomma}} km</li>
```
- In the photo of latest cars, 229, 288 km
```html
<span><i class="flaticon-way"></i></span>{{car.miles | intcomma }} km
<p class="price">{{car.price | intcomma}}</p> 
```

### 33. Single page URL 8.1
- Add in cars/migrations/urls.py
```python
path('<int:id>',views.car_detail,name='car_detail')
```
- And add in cars/migrations/views.py
```python
def car_detail(request,id):
    return render(request, 'cars/car_detail.html')
```
- Create the file templates\cars\car_detail.html, and modify line 175 of templates\pages\home.html
```html
<a href="{% url 'car_detail' car.id %}">{{ car.car_title }}</a> 
```

### 34. Display single data page 8.2
- From carhouse template, copy from car-details.html (line 128 - 140) to /templates/cars/car_detail.html
```html
{% extends 'base.html' %}
{% block content %}

<!-- Sub banner start -->
<div class="sub-banner overview-bgi">
...
</div>
<!-- Sub Banner end -->
{%  endblock %}
```
- From carhouse template, copy from car-details.html (line 142-547) to /templates/cars/car_detail.html, inside the block content, beneath the banner code just added
```html
<!-- Car details page start -->
<div class="car-details-page content-area-6">
...
...
</div>
<!-- Properties details page end -->
```

### 35. Display single car data 8.3
- Add cars/migrations/views.py
```python
from django.shortcuts import render, get get_object_or_404
from .models import Car

# Create your views here.
def cars(request):
    return render(request, 'cars/cars.html')

def car_detail(request,id):
    single_car = get_object_or_404(Car, pk=id)
    data= {
        'single_car': single_car
    }
    return render(request, 'cars/car_detail.html', data)
```
- In templates/car/car_detail.html, in line 4, add humanize `{% load humanize %}` and in 9 and 12, 28: `{{single_car.car_title}}`
- Also in line 30
```html
<i class="flaticon-pin"></i>{{single_car.state}}, {{single_car.city}}
```
- And in line 34
```html
<h3><span>{{single_car.price | intcomma}}</span></h3>
```
- For the lines 42, 45, 48, 51, 54
```html
{{single_car.car_photo.url}}
{{single_car.car_photo_1.url}}
...
{{single_car.car_photo_4.url}}
```
- And in lines 44, 4 groups of images
```html
{%if single_car.car._photo_1%}
  <div class="item carousel-item" data-slide-number="1">
  <img src="{{single_car.car_photo_1.url}}"" class="img-fluid" alt="slider-car">
</div>
{% endif %}
```
- For the slide, in line 70
```
<img src="{{single_car.car_photo.url}}" class="img-fluid" alt="small-car">
```
- Line 73, add the 4 groups
```html
{% if single_car.car_photo_1 %}
<li class="list-inline-item">
	<a id="carousel-selector-1" data-slide-to="1" data-target="#carDetailsSlider">
		<img src="{{single_car.car_photo_1.url}}" class="img-fluid" alt="small-car">
	</a>
</li>
{% endif %}
````

### 36. Display Single Car Data - Part 02 (8.4: http://localhost:8000/cars/3)
- In Description, remove it line 121, add instead `{{single_car.description | safe}}` 
- Delete 179-267 , 2 groups of:
```html
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12>
...
</div>
```
- Now delete almost all `<li>` and leave one `<li>` group
```html
<li>
	Adaptive Cruise control --> {{single_car.features}}
</li>
```
- In line 160:
```html
<li>
   <span>Body Style:</span>Convertible -->  <span>Color: </span>{{ single_color.color}}
</li>
```
- Fix vehicle overview buttom color in carzone/static/css/style.css, line 9767 - 9769: already fixed.

### 37. Setup dedicacted cars page 8.5 - make info of Cars(home) and Cars tab

- In templates/pages/home.html, line 134, 179, 275, 278
```html
<a href="car-details.html" class="car-img">  => "{% url 'car_detail' car.id %}"
<a href="car-details.html"> => "{% url 'car_detail' car.id %}"
<a href="car-details.html">Lamborghini Huracán</a>  => "{% url 'car_detail' car.id %}"
<a href="car-details.html">  => "{% url 'car_detail' car.id %}"
```
- Make info of cars tab, for that keep just one group line 82 - 136
- From line 137 - 191 2nd group onwards, delete them and keep:
```html
{% for car in cars %}          <!-- add this for loop -->
<div class="col-lg-6 col-md-6">
...
</div>
{% endfor %}
	<!-- Page navigation start 
<div class="pagination-box p-box-2 text-center">
```
- In cars/view.py, edit
```python
def cars(request):
    cars = Car.objects.order_by('-created_date')
    data = {
        'cars': cars,
    }
    return render(request, 'cars/cars.html',data)
```
- In lines 31 & 34 of templates/cars/cars.html, add hummanize in line 5
```html
{% block content %}

{% load humanize %}

<a href="car-details.html" class="car-img">  => "{{ url 'car_detail' car.id %}}"
<span>$780.00</span>  => <span>${{ car.price | intcomma}}</span> 
Line 42,44,46,47,49,50,52,53,55 and 56, repeat it
<a href="img/car/car-1.jpg" =>  <a href="{{car.car_photo.url}}" 
... src="img/car/car-1.jpg" alt="car"> => ... src="{{ car.car_photo.url }}" alt="car">

{% if car.car_photo_1 %}
<a href="{{car.car_photo_1.url}}" class="hidden" >
	<img class="hidden" src="{{car.car_photo_1.url}}">
</a>
{% endif %}
```
- In Line 65 to 79
```html
...>Lamborghini Huracán</a> => >{{car.car_title}}</a>      
.....</i>123 Kathal St. Tampa City => .....</i>{{car.state}}, {{car.city}}
```
- And in line 36 
```html
<img class="d-block w-100" src="{{ car.car_photo.url }}" alt="car">  =>
...car.car_photo.url }}" alt="car" style="min-height: 262px; max-height: 262px;">
```

### 38. Using paginator 8.6 - 8.7

- Add these lines in cars/view.py
```python
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
def cars(request):
    cars = Car.objects.order_by('-created_date')
    paginator = Paginator(cars,3)       //2 per page or 4 or 3
    page = request.GET.get('page')
    paged_cars = paginator.get_page(page)
    data = {
        'cars': paged_cars,
    }
```
- In templates/cars/cars.html, line 95, wrap pagination
```html
{% if cars.has_other_pages %}
	<ul class="pagination">
	...
	</ul>
{% endif %}
```
- Add line 99 in
```html
{%if cars.has_previous %}
 <li class="page-item">
 <a class="page-link" href="?page={{cars.previous_page_number}}"><i class="fa fa-angle-left"></i></a>
 </li>
{% else %}
```
- Delete 109 and 110 and keep the code above, wrap it with an if/else clause (previous button)
```html
{% if cars.has_previous %}
	<li class="page-item">
		<a class="page-link" href="?page={{cars.previous_page_number}}"><i class="fa fa-angle-left"></i></a>
	</li>
{% else %}
```
- For next button or arrow , line 117
```html
{% if cars.has_next %}
<li class="page-item">
<a class="page-link" href="?page={{cars.next_page_number}}"><i class="fa fa-angle-right"></i></a>
</li>
{% else %}
<li class="page-item disabled">
<a class="page-link"><i class="fa fa-angle-right"
```

### 39. Seach Page Setup 9.1

- In cars/urls.py
```python
urlpatterns = [
    path('', views.cars, name='cars'),
    path('<int:id>',views.car_detail,name='car_detail'),
    path('search', views.search, name='search'),
]
```
- Add In cars/views.py
```python
def search(request):
	cars= Car.objects.order_by('-created_date')
	data={
		'cars': cars,
	}
	return render(request, 'cars/search.html', data)
```
- Create templates\cars\search.html, and add `<h2> Search</h2>`
- Prove if it is working in localhost:8000/cars/search


- Note: jump to the step 40
    - Copy `<!-- Full Page Search -->` from templates/base.html to templates/pages/home.html
    and modify like from line 357
    ```html
    <!-- Full Page Search -->
    <div id="full-page-search">
        <button type="button" class="close">×</button>
        <form action="{% url 'search' %}" class="search-header">
            <input type="search" value="" placeholder="type keyword(s) here. Eg: audi, benz etc" name='keyword'/>
            <button type="submit" class="btn btn-sm button-theme">Search</button>
        </form>
    </div>
    ```

    - Prove in `http://localhost:8000/`,  click on search type Benz, should take you to the search.html page
    - From the template carhouse/search.html, copy the Banner group to templates/cars/serach.html, and lines 147-659
    ```html
    {% extends 'base.html' %}

    {% block content %}
    {% load humanize %}
    <!-- Banner start -->
    ...
    <!-- Banner end -->

    <!-- Search box 3 start -->
    ...
    ...
    <!-- Featured car end -->
    {% endblock %}
    ```

    - Now, delete the groups below `<div class="col-lg-4 col-md-6">`, line 187-526 and add the for loop, line 120-187
    ```html
    {% for car in  cars %}
        <div class="col-lg-4 col-md-6">
        ...
    {% endfor %}
    ```
    - These loops are raplaced by the loop of templates/pages/home.html
    ```html
    {% for car in cars %}              <!-- cars* not all all_cars -->
    <div class="col-lg-4 col-md-6">
        ...
        ...
    {% endfor %}
    ```
