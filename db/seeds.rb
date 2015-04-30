%w(ian ayush howard sam).each do |name|
  $u = User.create email: name+"@brighid.com", password: 'password'
  Course.create user_id: $u.id, name: "CS61A", school: "UC Berkeley", instructor: "John DeNero", semester: ""
  Course.create user_id: $u.id, name: "Ruby on Rails Decal", school: "UC Berkeley", instructor: "Howard Chen", semester: "Spring 2015"
end

Note.create user_id: 1, course_id: 1, 
name: "Hello, world!", 
content: "
With our system, you can write code! Here is Hello, world! written in Python.

```python
print(\"Hello, world!\")
```
";

Note.create user_id: 1, course_id: 2, 
name: "Some Math and Markdown!", 
content: "
# Here is some math for you!

$$\\sum_{i=1}^n i = \\frac{n(n+1)}{2}$$

Here is also a list for you.

* List 1
    1. Ordered list
    2. Entry 2.
* First depth again!
";

Note.create user_id: 2, course_id: 3, 
name: "Hello, world!", 
content: "
With our system, you can write code! Here is Hello, world! written in Python.

```python
print(\"Hello, world!\")
```
";

Note.create user_id: 2, course_id: 4, 
name: "Some Math and Markdown!", 
content: "
# Here is some math for you!

$$\\sum_{i=1}^n i = \\frac{n(n+1)}{2}$$

Here is also a list for you.

* List 1
    1. Ordered list
    2. Entry 2.
* First depth again!
";

Note.create user_id: 3, course_id: 5, 
name: "Hello, world!", 
content: "
With our system, you can write code! Here is Hello, world! written in Python.

```python
print(\"Hello, world!\")
```
";

Note.create user_id: 3, course_id: 6, 
name: "Some Math and Markdown!", 
content: "
# Here is some math for you!

$$\\sum_{i=1}^n i = \\frac{n(n+1)}{2}$$

Here is also a list for you.

* List 1
    1. Ordered list
    2. Entry 2.
* First depth again!
";

Note.create user_id: 4, course_id: 7, 
name: "Hello, world!", 
content: "
With our system, you can write code! Here is Hello, world! written in Python.

```python
print(\"Hello, world!\")
```
";

Note.create user_id: 4, course_id: 8, 
name: "Some Math and Markdown!", 
content: "
# Here is some math for you!

$$\\sum_{i=1}^n i = \\frac{n(n+1)}{2}$$

Here is also a list for you.

* List 1
    1. Ordered list
    2. Entry 2.
* First depth again!
";

