# sg-audit

Iterate through all AWS accounts and regions and list out all SGs which are either unattached or are open to `ALL` or `0.0.0.0/0`.

## Configuration

The host on which the application is run must be able to read all configured AWS accounts.

All profiles to query should be set in `~/.aws/config`.

## Docker

```
docker build . -t sg-audit
docker run --rm -it \
	--env-file .env \
	-v $PWD/data:/data \
	-v ~/.aws:/root/.aws \
	sg-audit
```

