**Title**: Brighid

**Team Members**: Ian Gann, Ayush Mudgal

**Demo Link**:

**Idea**: An application that allows users to create notes organized by course. Each note is allowed to be written in Markdown with embedded LaTeX and syntax highlighting for most languages.

### Models and Description

* User
    - Has email and many courses and notes.
* Course
    - Has name, instructor, semester, school. 
    - Has many notes
    - Belongs to User.
    - Instructor, Semester, and School not required.
* Note
    - Has name and content
    - Belongs to User, Course.
    - Both name and content are required to be present.

### Features

* Users can log in
* Users can make courses, make notes (as well as edit/delete them)
* Users may embed Markdown, LaTeX, and code inside notes

### Division of Labor

**Note**: Most of the labor was done side by side.

* Ayush: Made user model, most of styling choices and design
* Ian: Made course and note models, detailed gem needs to embed Markdown, LaTeX, and code syntax within notes.
* Both: Most styling and views done together.
