# aws-es-signed-proxy

AWS ES IAM Signed User Proxy

## Usage

ES Proxy Docker entrypoint has the following modes:

- `es-proxy`
  - Proxy to the AWS ES instance
  - REQUIRED: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY_ID` & `AWS_ES_ENDPOINT`

**PORT 9200** is exposed in the Dockerfile.

## Example Config

```
es-proxy:
  environment:
    AWS_ACCESS_KEY_ID: <AWS_ACCESS_KEY>
    AWS_SECRET_ACCESS_KEY_ID: <AWS_SECRET_ACCESS_KEY>
    AWS_ES_ENDPOINT: <es.aws.stuff.com>
  tty: true
  command:
  - es-proxy
  image: clok/aws-es-signed-proxy:latest
  stdin_open: true
```

## File Structure

```
$ tree
.
├── Dockerfile
├── LICENSE
├── README.md
├── docker
│   ├── docker-entrypoint.sh
│   ├── etc
│   │   └── supervisor
│   │       └── conf.d
│   │           └── es-proxy.conf
│   └── usr
│       └── bin
│           ├── es-proxy.sh
│           └── run-es-proxy.sh
├── package.json
└── proxy.js
```
