[![LinkedIn](https://github.com/vivekyad4v/public-images/raw/master/generic/LinkedIn-vivekyad4v.png)](https://www.linkedin.com/in/vivekyad4v/)  &nbsp;   &nbsp;   [![Build Status](https://travis-ci.org/vivekyad4v/docker-alpine-sendEmail.svg?branch=master)](https://travis-ci.org/vivekyad4v/docker-alpine-sendEmail)

# docker-alpine-sendEmail
sendEmail binary in docker alpine

### sendEmail(SMTP client), define environment variables as below - 

```sh
$ export FROM_EMAIL=from-address@gmail.com           ## From addess & user email for authentication
$ export TO_EMAIL=vivekyad4v@gmail.com
$ export PASSWD_EMAIL=ab12345678
$ export SMTP_EMAIL="smtp.gmail.com:587"
$ export SUBJECT_EMAIL="This should be the email subject"
$ export CONTENT_EMAIL="This is the content/body of email"      ## You can give file as a content
```

### Using Public Image, needs environment variables to be predefined

```sh
docker-compose run --rm vivekyad4v/docker-alpine-sendemail bash -c "sendEmail -u $SUBJECT_EMAIL -m $CONTENT_EMAIL -f $FROM_EMAIL -t $TO_EMAIL -s $SMTP_EMAIL -o tls=yes -xu $FROM_EMAIL -xp $PASSWD_EMAIL"
```

### sendEmail 

```sh
docker-compose run --rm sendemail bash -c "sendEmail -u $SUBJECT_EMAIL -m $CONTENT_EMAIL -f $FROM_EMAIL -t $TO_EMAIL -s $SMTP_EMAIL -o tls=yes -xu $FROM_EMAIL -xp $PASSWD_EMAIL"
```

If this helps, Fork & Star it :)
