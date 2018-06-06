# CSS Concepts and where to find them

This library creates a new language around layout and style, though if you're already used to CSS, you're probably wondering where certain concepts lie.

> I know how I can do it in CSS, but how could I approach the problem using Style Elements?

# Concepts

CSS    |  Style Elements  | Description
-------|------------------|------------
`position:absolute` | `above`, `below`, `onRight`, `onLeft`, `inFront`, `behindContent` |  In Style Elements we can attach elements relative to another element.  They won't affect normal flow, just like `position:absolute`
`position:fixed` | `inFront` if it's attached to the `Element.layout` element.  |  `position:fixed` needs to be at the top of your view or else it can break in seemingly random ways.  Did you know `position:fixed` will position something relative to the viewport *OR* any parent that uses `filter`, `transform` or `perspective`?  So you add a blur effect and your layout breaks...
`z-index` | *N/A*  |  One of the goals of the library was to make `z-index` a behind-the-scenes detail.  If you ever encounter a situation where you feel like you actually need it, let me know on slack or throught the issues.
`float:left` `float:right` | `alignLeft` or `alignRight` when inside a `paragraph` or a `textColumn` |
`opacity` | `alpha` |
`margin` | *N/A*  Instead, check out `padding` and `spacing` |  `margin` in CSS was designed to fight with `padding`.  This library was designed to minimize override logic and properties that fight with each other in order to create a layout language that is predictable.  The result is that in style elements, there's generally only *one place* where an effect can happen.
