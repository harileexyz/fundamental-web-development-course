# SASS Documentation

## 1. Basic SASS Features

### Variables
Variables store reusable values:

~~~scss
// Define variables
$primary-color: #3498db;
$spacing-unit: 1rem;
$font-stack: 'Arial', sans-serif;

// Usage
.button {
    background-color: $primary-color;
    padding: $spacing-unit;
    font-family: $font-stack;
}
~~~

### Nesting
Nesting represents HTML hierarchy:

~~~scss
nav {
    background: #fff;
    
    ul {
        margin: 0;
        padding: 0;
        
        li {
            display: inline-block;
            
            a {
                color: blue;
                
                &:hover {
                    color: darkblue;
                }
            }
        }
    }
}
~~~

## 2. Mixins
Mixins are reusable style blocks.

### Basic Mixin

~~~scss
@mixin flex-center {
    display: flex;
    justify-content: center;
    align-items: center;
}

// Usage
.container {
    @include flex-center;
}
~~~

### Mixin with Parameters

~~~scss
@mixin button-variant($bg-color, $text-color: white) {
    background-color: $bg-color;
    color: $text-color;
    padding: 10px 20px;
    border: none;
    
    &:hover {
        background-color: darken($bg-color, 10%);
    }
}

// Usage
.btn-primary {
    @include button-variant(#3498db);
}
~~~

## 3. Functions

### Built-in Functions

~~~scss
// Color Functions
$base-color: #3498db;
$darker: darken($base-color, 10%);
$lighter: lighten($base-color, 10%);
$complement: complement($base-color);

// Math Functions
@use "sass:math";
$half-width: math.div(100%, 2);
~~~

### Custom Functions

~~~scss
@function calculate-width($columns) {
    @return math.div(100%, $columns);
}

// Usage
.col-3 {
    width: calculate-width(3); // Returns 33.333%
}
~~~

## 4. Control Directives

### For Loops

~~~scss
@for $i from 1 through 3 {
    .col-#{$i} {
        width: calculate-width($i);
    }
}
~~~

### If Statements

~~~scss
@mixin text-contrast($bg-color) {
    @if (lightness($bg-color) > 50%) {
        color: black;
    } @else {
        color: white;
    }
}
~~~

## 5. File Organization

### Recommended Structure

~~~plaintext
scss/
├── styles.scss          # Main file
├── _variables.scss      # Variables
├── _mixins.scss         # Mixins
└── _functions.scss      # Functions
~~~

### Importing Files

~~~scss
@use 'variables' as *;
@use 'mixins' as *;
@use 'functions' as *;
~~~

## 6. Best Practices

### 1. Use Variables for Common Values

~~~scss
$primary-color: #3498db;
$border-radius: 4px;
$transition-speed: 0.3s;
~~~

### 2. Create Reusable Mixins

~~~scss
@mixin card-shadow {
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
~~~

### 3. Use Meaningful Names

~~~scss
// Good
$spacing-small: 1rem;
$spacing-medium: 2rem;

// Avoid
$space1: 1rem;
$space2: 2rem;
~~~

## 7. Compilation Commands

### Watch Single File

~~~bash
sass --watch scss/styles.scss:css/styles.css
~~~

### Watch Directory

~~~bash
sass --watch scss:css
~~~

### Production Build

~~~bash
sass --watch scss:css --style compressed
~~~

## 8. Common Functions Reference

### Color Functions

~~~scss
lighten($color, 10%)
darken($color, 10%)
complement($color)
mix($color1, $color2, 50%)
~~~

### Math Functions

~~~scss
@use "sass:math";
math.div(100, 2)
math.round(3.14)
math.max(1px, 2px, 3px)
~~~

### String Functions

~~~scss
to-upper-case($string)
to-lower-case($string)
str-length($string)
~~~

## 9. Responsive Design with SASS

### Breakpoint Mixin

~~~scss
@mixin breakpoint($point) {
    @if $point == mobile {
        @media (max-width: 767px) { @content; }
    }
    @else if $point == tablet {
        @media (min-width: 768px) { @content; }
    }
    @else if $point == desktop {
        @media (min-width: 992px) { @content; }
    }
}

// Usage
.container {
    width: 100%;
    
    @include breakpoint(tablet) {
        width: 750px;
    }
    
    @include breakpoint(desktop) {
        width: 970px;
    }
}
~~~

## 10. Running SASS

1. **Install SASS:**

~~~bash
npm install -g sass
~~~

2. **Watch files:**

~~~bash
sass --watch scss/styles.scss:css/styles.css
~~~

3. **Production build:**

~~~bash
sass --watch scss:css --style compressed
~~~

This documentation covers the core SASS features used in our examples along with best practices, file organization, and compilation commands. For more details, visit the [official SASS documentation](https://sass-lang.com/documentation).
