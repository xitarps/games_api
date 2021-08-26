# Games api

Essa é uma api de testes com tematica de jogos

## Rotas:

### Read:

[![Generic badge](https://img.shields.io/badge/Request-GET-gree.svg)](https://shields.io/)

```
https://x-games-api.herokuapp.com/api/v1/games
```

[![Ask Me Anything !](https://img.shields.io/badge/Response-ok-1abc9c.svg)](https://GitHub.com/Naereen/ama)



```json
{
    "data": {
        "games": [
            {
                "id": 4,
                "name": "portal",
                "genre": "puzzle",
                "created_at": "2021-08-26T00:49:21.296Z",
                "updated_at": "2021-08-26T00:49:21.296Z"
            },
            {
                "id": 6,
                "name": "Cs1.6",
                "genre": "fps",
                "created_at": "2021-08-26T00:51:19.409Z",
                "updated_at": "2021-08-26T00:51:19.409Z"
            }
        ]
    }
}
```