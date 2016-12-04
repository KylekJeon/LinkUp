```js
{
  session: {
    currentUser: {
      id:1,
      username: "guest"
    }
    errors: {
      errors: []
    }
  }
  groups: {
    1: {
      name: "Sample group name",
      description: "Sample group description",
      key-words: ["word1", "word2"...],
      members: ["member1", "member2"...],
      events: {
        1: {
          title: "Sample event title",
          date: "date/time",
          attending: ["member1", "member2"...],
          location: "location"
          description: "Sample event description"
          group_id: "1"
        }
      }
    }
  }
  events: {
    1: {
      title: "Sample event title",
      date: "date/time",
      attending: ["member1", "member2"...],
      location: "location"
      description: "Sample event description"
      group_id: "1"
    }
  }
}
```
