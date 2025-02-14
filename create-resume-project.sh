#!/bin/bash

# Create main project directory
mkdir -p resume-website/{src,dist,assets}

# Create source directory structure
cd resume-website/src
mkdir -p scss/{abstracts,base,components,layout,pages}
mkdir -p js

# Create SCSS files
touch scss/main.scss
touch scss/abstracts/{_variables.scss,_mixins.scss,_functions.scss}
touch scss/base/{_reset.scss,_typography.scss,_animations.scss}
touch scss/components/{_buttons.scss,_cards.scss,_skills.scss,_timeline.scss}
touch scss/layout/{_header.scss,_footer.scss,_grid.scss,_navigation.scss}
touch scss/pages/{_home.scss,_experience.scss,_projects.scss,_contact.scss}

# Create JS files
touch js/{main.js,animations.js}

# Create HTML files
touch ../index.html

# Create assets directories
cd ../assets
mkdir -p images/projects icons fonts

echo "Resume website project structure created successfully!" 