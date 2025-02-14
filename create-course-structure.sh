#!/bin/bash

# Create root directory
mkdir -p web-development-course

# Create main directories
cd web-development-course
mkdir -p modules final-project

# Create module directories and their subdirectories
modules=(
    "01-html"
    "02-css-fundamentals"
    "03-flexbox"
    "04-grid"
    "05-positioning"
    "06-responsive"
    "07-sass"
)

# HTML module subdirectories
mkdir -p modules/01-html/{examples/semantic-html,examples/forms,examples/accessibility}
touch modules/01-html/{README.md,theory.md}

# CSS Fundamentals module subdirectories
mkdir -p modules/02-css-fundamentals/{examples/box-model,examples/selectors,examples/typography}
touch modules/02-css-fundamentals/{README.md,theory.md}

# Flexbox module subdirectories
mkdir -p modules/03-flexbox/{examples/basic-concepts,examples/layouts,examples/responsive}
touch modules/03-flexbox/{README.md,theory.md}

# Grid module subdirectories
mkdir -p modules/04-grid/{examples/basic-concepts,examples/layouts,examples/responsive}
touch modules/04-grid/{README.md,theory.md}

# Positioning module subdirectories
mkdir -p modules/05-positioning/{examples/static-relative,examples/absolute-fixed,examples/z-index}
touch modules/05-positioning/{README.md,theory.md}

# Responsive module subdirectories
mkdir -p modules/06-responsive/{examples/media-queries,examples/layouts,examples/images}
touch modules/06-responsive/{README.md,theory.md}

# SASS module subdirectories
mkdir -p modules/07-sass/{examples/variables,examples/nesting,examples/mixins}
touch modules/07-sass/{README.md,theory.md}

# Create final project structure
mkdir -p final-project/{assets,scss,css}
touch final-project/{README.md,index.html}

# Create root README
touch README.md

echo "Course structure created successfully!" 