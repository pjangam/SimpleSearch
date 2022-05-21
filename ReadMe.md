[![Coverage Status](https://coveralls.io/repos/github/pjangam/SimpleSearch/badge.svg?branch=master)](https://coveralls.io/github/pjangam/SimpleSearch?branch=master)
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
