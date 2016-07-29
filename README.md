# Jacques

## Description

Jacques, a frontend developer is working with backend developers on the Notemeister 5000 application.  The layout is as follows:

### Route 1
`GET /api/notes`

```json
{
  "notes" : [
    {
      "title" : "My awesome post",
      "body" : "My awesome body of a post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "awesome" },
        { "name" : "funny" },
        { "name" : "spiffy" }
      ]
    },
    {
      "title" : "My awesome second post",
      "body" : "My awesome body of a second post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "not_so_awesome" },
        { "name" : "not_funny" },
        { "name" : "not_at_all_spiffy" }
      ]
    }
  ]
}
```


Notes without a title or body, should generate a JSON-formatted error message and a status code of 400.

### Route 2
`GET /api/notes/tag/funny`

```json
{
  "tag" : {
    "name" : "funny"
  },
  "notes" : [
    {
      "title" : "My awesome post",
      "body" : "My awesome body of a post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "awesome" },
        { "name" : "funny" },
        { "name" : "spiffy" }
      ]
    },
    {
      "title" : "My awesome second post",
      "body" : "My awesome body of a second post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "not_so_awesome" },
        { "name" : "funny" },
        { "name" : "not_at_all_spiffy" }
      ]
    }
  ]
}
```
