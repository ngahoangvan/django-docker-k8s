# DJANGO-MYSQL WITH DOCKER-COMPOSE AND K8S

## Pre-requirement
- Docker, Docker-compose
- k8s environment (using minikube or follow [this tutorial](https://github.com/vanngaCNTT/my-note/blob/master/k8s-setting.md))

## Build Django image

```bash
git clone https://github.com/vanngaCNTT/django-docker-k8s
cd django-docker-k8s
# build django image
docker build -t django_web .
# check image
docker images
```

## Run Django Service and Mysql Service

```bash
docker-compose up
# check docker container
docker ps
```

- Open brower and accept localhost:3000 to see homepage Django Project

## Run with K8s environment

### With minikube

```bash
# switch for minikube docker environment
eval $(minikube docker-env)

# build django image
docker build -t django_web .

# apply YAML file
kubectl apply -f k8s

# check status of Deployment, Pod, Service, VolumeClaim
kubectl get deployment,pod,svc,pvc
```

### K8s environment
- Follow command will run in master node

```bash
kubectl apply -f k8s
```

