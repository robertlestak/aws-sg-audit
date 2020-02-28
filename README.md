# sg-audit

Iterate through all AWS accounts and regions and list out all SGs which are either unattached or are open to `ALL` or `0.0.0.0/0`.

## Configuration

The host on which the application is run must be able to read all configured AWS accounts.

The list of roles to assume must exist in `~/.aws/roles.txt`.

## Docker

```
docker build . -t sg-audit
docker run --rm -it -d \
	--env-file .env \
	-v $PWD/data:/data \
	-v ~/.aws:/root/.aws \
	sg-audit
```
