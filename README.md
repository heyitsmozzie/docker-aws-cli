## Light weight & easy to use AWS-CLI container

### Pull it

`docker pull heyitsmozzie/docker-aws-cli:latest`

### Run it using environment variables

```
docker run \
 -e AWS_ACCESS_KEY_ID=$YOUR_ACCESS_KEY \
 -e AWS_SECRET_ACCESS_KEY=$YOUR_SECRET_KEY \
 heyitsmozzie/docker-aws-cli:latest [options] <command> <subcommand> [<subcommand> ...] [parameters]
```

### Run it using your local credentials

```
docker run \
    -v $HOME/.aws:/root/.aws \
    heyitsmozzie/docker-aws-cli:latest [options] <command> <subcommand> [<subcommand> ...] [parameters]
```

### Run it adding an alias to your local environment

#### Edit your Linux / OSX aliases..
`cd $HOME`

`vim .aliases`
#### .. And add those few lines
```
alias aws=docker run \
    -v $HOME/.aws:/root/.aws \
    heyitsmozzie/docker-aws-cli:latest
```
#### Now use it like the classical aws-cli, Have fun !
