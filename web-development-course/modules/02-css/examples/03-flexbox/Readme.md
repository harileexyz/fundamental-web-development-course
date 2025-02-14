# HTML & CSS Flexbox Overview

This guide demonstrates different Flexbox concepts through HTML and CSS examples. Each section shows how to implement various Flexbox features and explains their functionality.

## 1. Basic Flex Container

### CSS
```css
.flex-container {
    display: flex;
    gap: 20px;
    padding: 20px;
    background-color: #f4f4f4;
}
```

### HTML Example
```html
<section>
    <h2>Basic Flex Container</h2>
    <div class="flex-container">
        <div class="flex-item">Item 1</div>
        <div class="flex-item">Item 2</div>
        <div class="flex-item">Item 3</div>
    </div>
</section>
```

### How It Works
- `display: flex;` makes the .flex-container a flex container. This means its direct children (the .flex-item elements) become flex items.
- `gap: 20px;` adds a 20-pixel gap between all flex items.
- `padding: 20px;` gives the container padding, ensuring the content doesn't stick to the edges.
- `background-color: #f4f4f4;` provides a light gray background for visual separation.

## 2. Flex Direction: Column

### CSS
```css
.flex-column {
    display: flex;
    flex-direction: column;
}
```

### HTML Example
```html
<section>
    <h2>Flex Direction: Column</h2>
    <div class="flex-container flex-column">
        <div class="flex-item">Column 1</div>
        <div class="flex-item">Column 2</div>
        <div class="flex-item">Column 3</div>
    </div>
</section>
```

### How It Works
Even though .flex-container already applies `display: flex;`, adding the .flex-column class overrides the default row direction by setting `flex-direction: column;`. This stacks the flex items vertically instead of side by side.

## 3. Justify Content Examples

### CSS
```css
.justify-start {
    justify-content: flex-start;
}
.justify-center {
    justify-content: center;
}
.justify-between {
    justify-content: space-between;
}
```

### HTML Example
```html
<section>
    <h2>Justify Content Examples</h2>
    <div class="flex-container justify-between">
        <div class="flex-item">Space</div>
        <div class="flex-item">Between</div>
        <div class="flex-item">Items</div>
    </div>
</section>
```

### How It Works
- `justify-content` controls how the extra space is distributed along the main axis (horizontal by default).
- Using .justify-between applies `justify-content: space-between;`—this spaces the flex items so that the first item is flush with the start of the container, the last is flush with the end, and the others are evenly distributed in between.
- The other classes (justify-start and justify-center) align items to the start or center respectively when applied.

## 4. Flex Grow Example

### CSS
```css
.flex-grow {
    flex: 1;  /* Same as flex-grow: 1 */
}
```

### HTML Example
```html
<section>
    <h2>Flex Grow Example</h2>
    <div class="flex-container">
        <div class="flex-item flex-grow">Grows</div>
        <div class="flex-item">Fixed</div>
        <div class="flex-item flex-grow">Grows</div>
    </div>
</section>
```

### How It Works
- `flex: 1;` applied by the .flex-grow class allows the flex item to grow and fill any extra space available in the container.
- The first and third .flex-item elements have the flex-grow class. They expand proportionally to take up extra space, while the middle item remains at its default size.
- This demonstrates how you can have flexible (growing) and fixed items in the same container.

## 5. Responsive Behavior with Media Queries

### CSS
```css
@media (max-width: 768px) {
    .flex-container {
        flex-direction: column;
    }
}
```

### How It Works
- When the viewport width is 768px or less (common for mobile devices), the media query applies.
- Inside the media query, .flex-container is modified to use `flex-direction: column;` so that flex items are stacked vertically. This makes the layout more mobile-friendly.

## Summary

### Flex Containers and Items
- The .flex-container class provides a flexible wrapper for your items.
- The .flex-item class styles individual items within the container.

### Direction & Alignment
- .flex-column changes the main axis to vertical.
- justify-content classes control horizontal spacing between items.
- align-items (not shown in the HTML snippet but defined in the CSS) controls vertical alignment.

### Growth & Responsiveness
- The .flex-grow class allows certain items to expand and fill available space.
- A media query ensures that on smaller screens, the layout stacks vertically by changing the flex direction.

Each combination of these classes demonstrates how flexible and responsive layouts can be achieved using CSS Flexbox. The provided HTML examples allow students to see these concepts in action and understand how to use and combine various Flexbox properties in practice.

Happy coding and experimenting with Flexbox!