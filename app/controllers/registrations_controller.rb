class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    super
    c = Course.create(user_id: @user.id, name: "Tutorials", school: "", instructor: "Ian Gann", 
      semester: "");
    Note.create(user_id: @user.id, course_id: c.id, name: "Markdown Tutorial",
      content: 
"
# What is Markdown?

Markdown is an intuitive way to style plaintext, formatted to give users an easy time writing, sharing, and really doing any type of documenting on the web. It gets processed into HTML and is very fast, so it's no wonder it's the go-to language for many websites, such as GitHub, Reddit, and of course, **Brighid**. It has become a standard way of writing for many, because it's so simple and easy to share (unlike say a Word document, which isn't compatible for everyone).

The learning curve to Markdown is minimal, but it does still exist. Here is a minor tutorial,  but if you have 10 minutes, we recommend heading over to  [http://markdowntutorial.com/](http://markdowntutorial.com/) for a tutorial that is a bit more in-depth. As well, the [project page syntax](http://daringfireball.net/projects/markdown/syntax) has links to the original creation of Markdown, as well as more in-depth analysis of syntax. However, we will go over these with you here too!

## Obvious Benefits

* Plain Text
* Intuitive and simple to learn
* Highly readable - in fact, more readable than HTML and LaTeX documents (though here at Brighid we actually allow you to embed LaTeX within the Markdown).
* Quick to type
* Easy to convert

## Let's Get Started

**Note**: One thing we should note directly is that traditional Markdown allows you to embed HTML.
For obvious reasons, we strip this functionality.

### Headers

The easiest ways to write headers are as follows. Headers range from h1-h6. In order to use these, just use the `#` for any multiple to determine which header you like. For example, to generate an `h3`, you would write `### Header 3`. 

### Blockquotes

> This is a blockquote.

The above was generated with the following code: `> This is a blockquote.`

### Lists

Lists are very simple and intuitive in Markdown. Unordered lists can be used with the following symbols: `*`, `-`, or `+`. Ordered lists just use typical numbers. To see lists in action,  consider:

* Top level of list
    - Nested
        + Nested even further
    - Coming back a level
* Back at top
    - Second nest

1. Number 1
  * Details about Number 1
2. Cool numbering skills!

### Paragraphs and Basic Styling

Paragraphs are separated by separating blocks of text with a line in between. 

It is common to want to bold or italicize code. To *italicize* use `*italicize*`, and to **bold** just use `**bold**`. It's as simple as that!

## Conclusion

There are actually a few more features Markdown provides that weren't discussed here, primarily because they are a bit extraneous and for people who are more comfortable with the syntax, but if you want to check them out, head over to the project page linked earlier. As well, this whole
note is written purely in Markdown, so you can edit it and play around if you like, or do so just to see the source! Hope you enjoyed it, and good luck!
");
    Note.create(user_id: @user.id, course_id: c.id, name: "LaTeX Tutorial",
      content: 
"
# Why LaTeX?

LaTeX is an incredible solution to the problem of typesetting Math. Created by Donald Knuth, you can reasonably guess that 99% of the formulas you've ever seen in any math textbook ever were  written and processed with LaTeX.

Pure LaTeX does have a pretty steep learning curve, but we at **Brighid** believe in keeping things simple. You can easily embed LaTeX formulas into your Markdown without the fuss of setting up the document types and whatnot - therefore, you can just focus on getting the material you need written. This is entirely done with the help of [MathJax](https://www.mathjax.org/), to whom we at **Brighid** are extremely grateful.

## The Basics

Basically, there are two types of ways to embed formulas. The first is inline, such as $\\sum_{i=0}^{n} i = \\frac{n(n+1)}{2}$, which was written simply as `$\\sum_{i=0}^{n} i = \\frac{n(n+1)}{2}$`. The other is on it's own line, which is much larger and more clear.

$$\\sum_{i=0}^{n} i = \\frac{n(n+1)}{2}$$

The above was written the exact same, but with two `$` signs instead of just one. 

The actual code to write these formulas can be tricky to learn and pretty steep, but it should already be obvious why we included this as a *must-have* for our notes - because we too do a lot of math as computer scientists.

For an in-depth guide of LaTeX syntax, you may want to check out this [Learning LaTeX](http://web.mat.bham.ac.uk/R.W.Kaye/latex/) tutorial.
");
    Note.create(user_id: @user.id, course_id: c.id, name: "Code Highlighting Tutorial",
      content: 
"We at **Brighid** are two computer scientists. We wanted to create an application that we ourselves would use, so in addition tot he obvious choices of Markdown and LaTeX, we thought this app would be incomplete if we didn't let you also embed your code in. Using the [Coderay gem](https://github.com/rubychan/coderay), this was made extremely simple.

## Example Usage

All that is required to embed this is three backticks (\\`), followed by the language of your choice. For example, to embed python, you would write: \\`\\`\\`python and close out your code with the three backticks at the end. If you are still confused, just hit the **Edit Note** link to have a look at the source code for this note. Below are three small \"Hello, world!\" examples to show you the ease of use.

## C

```c
int main() {
    printf(\"Hello, world!\\n\");
}
```

## Python

```python
print \"Hello, world!\\n\"
```

## Java

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println(\"Hello, world!\\n\");
    }
}
```

## Languages supported

There are a LOT of languages supported that can all be highlighted easily within your notes. From the [CodeRay website](http://coderay.rubychan.de/), you can embed the following code:

* C
* C++
* Clojure
* CSS
* Delphi
* diff
* ERB
* Go
* Groovy
* HAML
* HTML
* Java
* JavaScript
* JSON
* Lua
* PHP
* Python
* Ruby
* Sass
* SQL
* Taskpaper
* XML
* YAML

Additionally, this list is growing often, and Brighid will always support any new changes they make.

## Conclusion

Hopefully you find this as useful as we do! Happy coding!
");
  end

  def update
    super
  end
end 
