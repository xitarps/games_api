# Games api

This is a game themed api.

Essa é uma api de testes com temática de jogos.


## API Entry Points:
<hr>

<details>
  <summary>
   Create
  </summary>

[![Generic badge](https://img.shields.io/badge/Request-POST-gree.svg)]('#')

```
https://x-games-api.herokuapp.com/api/v1/games/
```

[![Ask Me Anything !](https://img.shields.io/badge/Body/json-1abc9c.svg)](https://GitHub.com/Naereen/ama)

```json
{
    "game": {
        "name": "Bf5",
        "genre": "fps"
    }
}
```

[![Ask Me Anything !](https://img.shields.io/badge/Response-ok-1abc9c.svg)](https://GitHub.com/Naereen/ama)
```json
{
    "id": 7,
    "name": "Bf5",
    "genre": "fps",
    "created_at": "2021-08-26T02:08:45.920Z",
    "updated_at": "2021-08-26T02:08:45.920Z"
}
```
</details>
<hr>

<details>
  <summary>
    Read all
  </summary>


[![Generic badge](https://img.shields.io/badge/Request-GET-blue.svg)](https://shields.io/)

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
</details>
<hr>



<details>
  <summary>
   Read one
  </summary>

[![Generic badge](https://img.shields.io/badge/Request-GET-blue.svg)](https://shields.io/)

```
https://x-games-api.herokuapp.com/api/v1/games/:id
```

[![Ask Me Anything !](https://img.shields.io/badge/Response-ok-1abc9c.svg)](https://GitHub.com/Naereen/ama)



```json
{
    "id": 4,
    "name": "portal",
    "genre": "puzzle",
    "created_at": "2021-08-26T00:49:21.296Z",
    "updated_at": "2021-08-26T00:49:21.296Z"
}
```

</details>

<hr>

<details>
  <summary>
    Update
  </summary>

[![Generic badge](https://img.shields.io/badge/Request-PATCH-yellow.svg)](https://shields.io/)

```
https://x-games-api.herokuapp.com/api/v1/games/:id
```

[![Ask Me Anything !](https://img.shields.io/badge/Body/json-1abc9c.svg)](https://GitHub.com/Naereen/ama)

```json
{
    "game": {
        "name": "nome jogo alterado",
        "genre": "genero do jogo alterado"
    }
}
```

[![Ask Me Anything !](https://img.shields.io/badge/Response-ok-1abc9c.svg)](https://GitHub.com/Naereen/ama)
```json
{
    "name": "nome jogo alterado",
    "genre": "genero do jogo alterado",
    "id": 8,
    "created_at": "2021-08-26T02:19:21.181Z",
    "updated_at": "2021-08-26T02:19:40.302Z"
}
```
</details>
<hr>


<details>
  <summary>
    Delete
  </summary>


[![Generic badge](https://img.shields.io/badge/Request-DELETE-red.svg)](https://shields.io/)

```
https://x-games-api.herokuapp.com/api/v1/games/:id
```


[![Ask Me Anything !](https://img.shields.io/badge/Response-ok-1abc9c.svg)](https://GitHub.com/Naereen/ama)
```json
{
    "message": "excluido com sucesso"
}
```
</details>