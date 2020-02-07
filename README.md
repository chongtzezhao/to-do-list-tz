# To-do-list

## HOW TO ADD A FLASK REPO TO HEROKU

#### feel free to dive into these articles, but the instructions below should be enough to get the heroku app up and running

https://www.youtube.com/watch?v=skc-ZEU9kO8

https://stackoverflow.com/questions/18406721/heroku-does-not-appear-to-be-a-git-repository

https://coderwall.com/p/pstm1w/deploying-a-flask-app-at-heroku

https://medium.com/the-andela-way/deploying-a-python-flask-app-to-heroku-41250bda27d0

## Requirements:
* Heroku account (duh)
* Heroku cli Avaliable at https://devcenter.heroku.com/articles/heroku-cli#download-and-install
* python & pip
* git bash

Make sure you have set up all of the above.

Then, follow these steps:

Clone the git repository and go one directory deeper

```
$ git clone <url_to_git_repo>
cd <git_repo>
```

Initialize the repository

`$ git init`

Install all the dependecies

`$ pip install -r requirements.txt`

To change the location, use

`$ git remote set-url heroku https://git.heroku.com/<appname>.git`



## Heroku Setup
`$ pip install gunicorn`

Create and open a new file called "Procfile".

`$ cat > Procfile`

You will be prompted to enter text, enter "web: python app.py"

Your terminal should look like this:

```
$ cat > Procfile
web: python app.py
```

Now press CTRL-C to exit.

Log in to heroku

`$ heroku login`

Create a heroku appear-to-be-a-git-repository.

`$ heroku create [app_name]` (git remote will be pointing at the app now)

Commit any changes you have made to the repository and deploy it to Heroku using Git.

```
$ git add . 
$ git commit -m "start"
$ git push heroku master
```

For existing repositories and apps, simply add the heroku remote

`$ heroku git:remote -a appname`

## Google Login
Storing client IDs and Secrets in environmental variables are safer as opposed to storing them as variables

`$ heroku config:set <variable_name>=<<variable_data>`

In the case of Google Login,
```
$ heroku config:set GOOGLE_CLIENT_ID=<"CLIENT_ID">
$ heroku config:set GOOGLE_CLIENT_SECRET=<"CLIENT_SECRET">
```




