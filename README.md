Docker Nginx Reverse Proxy
--------------

A quick setup for using Nginx to reverse proxy another container.

## Quick Start
- conf/app is setup by default to look for linked container name 'app' on port '3000'
- If changes made to conf/app run build - `docker build -t nginx-reverse-proxy .`
- Link container - `docker run -d -p 80:80 --link app --name web nginx-reverse-proxy`

## Notes
- Build contains apache2-utils for htpasswd if needed
