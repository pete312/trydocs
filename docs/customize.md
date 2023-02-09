#<custom>digging deeper</custom>
**To add your own creation is also pretty easy.**



The part of the config that allows you to import links....

    extra_css:
        - https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css

    extra_javascript:
        - https://unpkg.com/mermaid/dist/mermaid.min.js
        - https://cdn.jsdelivr.net/npm/vega@5
        - https://cdn.jsdelivr.net/npm/vega-lite@5
        - https://cdn.jsdelivr.net/npm/vega-embed@6



... can also be made to import from the docs dir.

 This is a `<custom>` tag <custom >I am custom</custom>. 


So add `css/custom.css` to the docs dir.
```css
custom {
    background-color: rgb(98, 27, 164);
    color : white;
    padding :.3em;
    border-radius: .3em;
}
```

and add this to the mkdocs.yml
```
extra_css:
    - https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css
    - css/custom.css
```

<div class='rotated'>Way cool.. </div>