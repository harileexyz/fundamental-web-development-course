# CSS Concepts and Theory

## 1. Basic Selectors
CSS selectors are patterns used to select and style HTML elements.

### Types of Selectors
- **Element Selectors**: `p`, `div`, `h1`
- **Class Selectors**: `.classname`
- **ID Selectors**: `#idname`
- **Descendant Selectors**: `div p`
- **Pseudo-classes**: `:hover`, `:active`
- **Pseudo-elements**: `::before`, `::after`

### Specificity
1. Inline styles (1000)
2. IDs (100)
3. Classes, attributes, pseudo-classes (10)
4. Elements, pseudo-elements (1)

## 2. Box Model
The CSS box model is the foundation of layout on the web.

### Components
- **Content**: The actual content area
- **Padding**: Space between content and border
- **Border**: Line around the padding
- **Margin**: Space outside the border

### Box Sizing
- `content-box`: Default, width/height apply to content only
- `border-box`: Width/height include padding and border

## 3. Flexbox
Flexbox is a one-dimensional layout method for arranging items.

### Key Concepts
- **Flex Container**: Parent element (`display: flex`)
- **Flex Items**: Children of flex container
- **Main Axis**: Primary axis of layout
- **Cross Axis**: Perpendicular to main axis

### Common Properties
- `flex-direction`
- `justify-content`
- `align-items`
- `flex-grow`
- `flex-shrink`
- `flex-basis`

## 4. Grid
CSS Grid is a two-dimensional layout system.

### Key Concepts
- **Grid Container**: Parent element (`display: grid`)
- **Grid Items**: Children of grid container
- **Grid Lines**: Dividing lines of the grid
- **Grid Tracks**: Rows and columns
- **Grid Areas**: Named regions of the grid

### Common Properties
- `grid-template-columns`
- `grid-template-rows`
- `grid-template-areas`
- `grid-gap`
- `grid-column`
- `grid-row`

## 5. Positioning
CSS positioning controls how elements are positioned in the document flow.

### Position Values
- `static`: Default positioning
- `relative`: Relative to normal position
- `absolute`: Relative to nearest positioned ancestor
- `fixed`: Relative to viewport
- `sticky`: Hybrid of relative and fixed

### Z-index
Controls stacking order of positioned elements

## 6. Responsive Design
Creating layouts that adapt to different screen sizes.

### Key Concepts
- **Viewport Meta Tag**
- **Media Queries**
- **Fluid Layouts**
- **Flexible Images**
- **Mobile-First Approach**

### Common Breakpoints
- Mobile: < 768px
- Tablet: 768px - 991px
- Desktop: 992px - 1199px
- Large Desktop: ≥ 1200px

### Best Practices
1. Start with mobile design
2. Use relative units (rem, em, %)
3. Test across different devices
4. Consider performance
5. Use appropriate breakpoints

## Additional Topics

### Units
- **Absolute**: px, pt, cm, mm
- **Relative**: em, rem, %, vh, vw

### Colors
- **Keywords**: red, blue, transparent
- **Hex**: #FF0000
- **RGB/RGBA**: rgb(255, 0, 0)
- **HSL/HSLA**: hsl(0, 100%, 50%)

### Typography
- `font-family`
- `font-size`
- `font-weight`
- `line-height`
- `text-align`
- `letter-spacing`

### Transitions & Animations
- **Transitions**: Smooth state changes
- **Transforms**: 2D/3D transformations
- **Animations**: Keyframe-based animations

## Best Practices
1. Use meaningful class names
2. Maintain consistent naming conventions
3. Write reusable code
4. Optimize for performance
5. Comment complex code
6. Follow progressive enhancement
7. Test cross-browser compatibility