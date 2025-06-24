## Исходный код резюме

Исходный код резюме находится в директории [CV](CV).

## Сборка через CI

Сборка через CI описана в workflow [main.yml](.github/workflows/main.yml).

Артефакт сборки: файл [cv.pdf](cv.pdf) в корне репозитория.

## Сборка через Docker

Сборка через Docker описана в [Dockerfile](Dockerfile), протестирована на MacOS и Ubuntu.

Как запустить:

```
rm cv.pdf
docker build --tag cv-builder .
docker run --rm -v "$(pwd):/tmp/cv" cv-builder
```

Артефакт сборки появится в файле `cv.pdf`.
