# Github Actions
Fonte do conhecimento: https://www.youtube.com/watch?v=UYwezJUhaps&t=837s

Build Docker
```shell
docker-compose up --build
```

Iniciar os testes
```shell
npx jest --init
```

Rodar os testes e ver cobertura
```shell
npm run test
```


# Tips

Sintaxe do github actions, definir uma variável chamada comment-exists que será compartilhada entre as etapas.

O :: é tipo o igual

Executar código dentro de ${{ ... }}

Pega dados da etapa anterior steps.find-old-bot-comment.outputs.comment-id != ''

::set-output name=comment-exists::${{ steps.find-old-bot-comment.outputs.comment-id != '' }}"

-----
```
GITHUB_HEAD_REF="refs/heads/feature/new-feature"
echo "${GITHUB_HEAD_REF##*/}"
new-feature

## aciona um regex, que é o */
```

-----
Pega o resultado de pr_body e passa para o lado (pipe), no lado, ele remove os espaços
          pr_body_cleaned=$(echo "$pr_body" | tr -d '[:space:]')
          pr_template_cleaned=$(echo "$pr_template" | tr -d '[:space:]')
