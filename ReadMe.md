![Build](https://github.com/pjangam/SimpleSearch/actions/workflows/makefile.yml/badge.svg) [![Coverage Status](https://coveralls.io/repos/github/pjangam/SimpleSearch/badge.svg?branch=master)](https://coveralls.io/github/pjangam/SimpleSearch?branch=master)
# Simple Search algorithm on json objects
## Search:
- should search in fields `name` and `description`
- By default (i.e. for no search term) all posts should match the query.
- Support exact match when the query contains a phrase within double quotes (like Google does)
- Examples:
    - Given the following posts:
      - Post 1 with name: "The Lord of the Rings: The Return of the King".
      - Post 2 with name: "The Lion King".

| Search Term | Post 1 matches? | Post 2 matches? |
|--|--|--|
| the king | Yes | Yes |
| "the king" | Yes | No |

## Sort:

allow sorting by `name` and `dateLastEdited`
## Pagination:
Use 'page numbers' style of pagination
Include total count in the response matching the current query result 


<!-- ![Diagram Image Link](./Design.plantuml) -->


--------

REST APIs

```
GET /api/documents?name=Designer&description=praesentium&page=2&sze=5&sort_by=updated_desc


{
  "count":20,
  "previous":"/api/documents?name=Designer&description=praesentium&page=1&sze=5&sort_by=updated_desc",
  "next":"/api/documents?name=Designer&description=praesentium&page=3&sze=5&sort_by=updated_desc",
  "documents":[
    {
    "name": "Investor Quality Executive",
    "image": "http://lorempixel.com/640/480",
    "description": "Voluptatem itaque eos voluptatibus. Sunt ea molestiae consequatur quidem et sequi vero. Id blanditiis aspernatur iure ea officia dolores deleniti. Porro autem molestias animi eum et atque et. Fuga et culpa.",
    "dateLastEdited": "2017-10-29T03:07:31.136Z"
  },
  {
    "name": "Global Interactions Producer",
    "image": "http://lorempixel.com/640/480",
    "description": "Aliquam sit quam veniam consequatur voluptatibus fugit repellat ut. Impedit quia culpa et quia sapiente cum autem vitae. Aliquid error provident vel quod quibusdam. Quis eum quis est cum qui.",
    "dateLastEdited": "2018-03-25T11:35:31.378Z"
  },
  {
    "name": "District Data Officer",
    "image": "http://lorempixel.com/640/480",
    "description": "Perspiciatis suscipit eius. Atque dolorem eligendi rerum et aut laborum et quidem. Excepturi minima omnis debitis necessitatibus suscipit voluptatem neque.",
    "dateLastEdited": "2018-01-19T11:21:04.700Z"
  },
  {
    "name": "Investor Brand Planner",
    "image": "http://lorempixel.com/640/480",
    "description": "Recusandae quibusdam cum voluptatem nisi et veritatis assumenda iusto. Optio pariatur pariatur eveniet non voluptate ipsum corporis. Consequatur et commodi ut enim molestiae maiores culpa iure. Qui dolor distinctio ex perferendis omnis soluta sunt omnis accusantium. Sequi adipisci voluptate sunt minus et aut vel.",
    "dateLastEdited": "2018-07-01T02:45:03.972Z"
  }
  ]
}
```