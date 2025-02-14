# CSS Grid Layout Examples Explanation

This document explains the HTML and CSS used in the Grid Layout examples. These examples demonstrate various CSS Grid techniques such as a basic grid, grid template areas, an adaptive auto-fit grid, and responsive adjustments using media queries.

---

## 1. HTML Structure

The HTML file (`index.html`) contains three main sections:

### a) Basic Grid Example

```html
<section>
    <h2>Basic Grid</h2>
    <div class="grid-container grid-columns">
        <div class="grid-item">Grid Item 1</div>
        <div class="grid-item">Grid Item 2</div>
        <div class="grid-item">Grid Item 3</div>
        <div class="grid-item">Grid Item 4</div>
        <div class="grid-item">Grid Item 5</div>
        <div class="grid-item">Grid Item 6</div>
    </div>
</section>
```


- The `.grid-container` class makes the container a grid.
- The `.grid-columns` class creates three equal-width columns using `grid-template-columns: repeat(3, 1fr)`.

### b) Grid Template Areas Example

```html
<section>
<h2>Grid Template Areas</h2>
    <div class="grid-layout">
        <header class="grid-item header">Header</header>
        <aside class="grid-item sidebar">Sidebar</aside>
        <main class="grid-item main">Main Content</main>
        <footer class="grid-item footer">Footer</footer>
    </div>
</section>
```


- The `.grid-layout` container uses `grid-template-areas` to define specific regions:
  - The header spans the entire top row.
  - The sidebar and main content are arranged in the second row.
  - The footer spans the bottom row.
- Each grid item is assigned to its area by using the corresponding class that sets the `grid-area` property.

### c) Auto-fit Grid Example

```html
<section>
    <h2>Auto-fit Grid</h2>
    <div class="auto-grid">
        <div class="grid-item">Auto 1</div>
        <div class="grid-item">Auto 2</div>
        <div class="grid-item">Auto 3</div>
        <div class="grid-item">Auto 4</div>
    </div>
</section>
```


- The `.auto-grid` container uses `repeat(auto-fit, minmax(250px, 1fr))` to dynamically adjust the number of columns based on available space.
- Each grid item gets a minimum width of 250px and grows equally (up to 1 fraction unit) as space allows.

---

## 2. CSS Breakdown

The CSS file (`styles.css`) provides styling for each example.

### a) Basic Grid Container

```css
/ Basic Grid Container /
.grid-container {
    display: grid;
    gap: 20px;
    padding: 20px;
}
/ Grid Template Columns /
.grid-columns {
    grid-template-columns: repeat(3, 1fr); / Three equal columns /
}
```

- **`display: grid;`** turns the container into a grid layout.
- **`gap: 20px;`** provides space between grid items.
- **`grid-template-columns: repeat(3, 1fr);`** creates three columns that evenly split the available space.

### b) Grid Template Areas

```css
/ Grid Template Areas /
.grid-layout {
    display: grid;
    grid-template-areas:
    "header header header"
    "sidebar main main"
    "footer footer footer";
    gap: 20px;
}
.header { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main { grid-area: main; }
.footer { grid-area: footer; }
```

- **`grid-template-areas`** defines named regions of the grid. The header spans the full top row; the sidebar occupies one column in the second row while the main content occupies the remaining columns; and the footer spans the bottom row.
- Each individual grid item is assigned to a named area via the `grid-area` property.

### c) Grid Items Common Styling

```css
/ Grid Items /
.grid-item {
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
}
```

- All grid items are provided with padding, a white background, and a simple border to visually separate them.

### d) Auto-fit Grid

```css
/ Auto-fit Grid /
.auto-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
}
```

- **`repeat(auto-fit, minmax(250px, 1fr))`** creates as many columns as will fit within the container.
- Each column has a minimum width of 250px and expands (1fr) to utilize the available space, making the layout flexible and adaptive.

### e) Responsive Grid

```css
/ Responsive Grid /
@media (max-width: 768px) {
    .grid-layout {
        grid-template-areas:
        "header"
        "main"
        "sidebar"
        "footer";
    }
}
```


- A media query is used to adjust the layout when the viewport is 768px or narrower.
- For the `.grid-layout` container, the grid template areas are redefined to stack each element (header, main, sidebar, footer) vertically. This ensures the layout remains accessible on small devices.

---

## 3. Summary

- **Basic Grid:**  
  The `.grid-container` with `.grid-columns` sets up a grid with three equal columns for a simple layout.

- **Grid Template Areas:**  
  The `.grid-layout` uses predefined grid areas to place a header, sidebar, main content, and footer in a structured manner. A media query adjusts this layout for smaller screens by stacking the regions vertically.

- **Auto-fit Grid:**  
  The `.auto-grid` employs `repeat(auto-fit, minmax(250px, 1fr))` to create a grid that automatically adapts the column count based on the available width, ensuring a minimum item width while allowing items to expand.

- **Responsive Adjustments:**  
  Media queries ensure that grid layouts adjust appropriately for mobile devices, maintaining readability and usability.


Happy Coding!