example https://github.com/gjtorikian/html-pipeline

```
version info
ruby 3.2.2
```

```
filter description
AutoLinkFilter
grep http or https link
replace with <a> tag.

NewLineFilter
grep consencutive \n
replace with one \n.

```

```
git clone git@github.com:Yu-Hoto/html-pipeline-example.git
cd html-pipeline-example
bundle install
ruby example.rb
### puts
"BEFORE: Hello \n\n\n https://google.com!!! this text is very long. but, this pipeline output max 100 characters. over 100 character text adjust 100 character text."
"AFTER : Hello\n <a href=\"https://google.com\">https://google.com</a>!!! this text is very long. but, this pipeline output max 100 characters. o"

ruby example.rb "Hello?\n\n\n https://google.com."
### puts
"BEFORE: Hello?\n\n\n https://google.com."
"AFTER : Hello?\n <a href=\"https://google.com.\">https://google.com.</a>"
```
