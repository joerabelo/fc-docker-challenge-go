# Full Cycle 3.0 - Docker - Desafio Go

## O Desafio
Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

```docker run <seu-user>/fullcycle```

Temos que ter o seguinte resultado: **_Full Cycle Rocks!!_**

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Divirta-se


## Dockerfile
```dockerfile
FROM golang:alpine AS builder
WORKDIR /src
COPY . .
RUN go build -v -ldflags '-s -w' main.go

FROM scratch
COPY --from=builder /src /
CMD ["/main"]
```

## Build
```bash
docker build -t joerabelo/fullcycle .
```
![](assets/docker-build.png)

## Run (output)
```bash
docker run joerabelo/fullcycle
```
![](assets/docker-run.png)

## Image size
```bash
docker images
```
![](assets/docker-images.png)

## Push
```bash
docker login
```
```bash
docker push joerabelo/fullcycle
```

## Docker Hub
https://hub.docker.com/repository/docker/joerabelo/fullcycle

