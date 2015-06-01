# roots-bower
Roots w/ Sample Bower Integration

## Setup
- make sure [node.js](http://nodejs.org) and [roots](http://roots.cx) are installed
- run `npm install`
- run `bower install`
- run `roots watch`

## Usage
- Uninstall sample bower packages: `bower uninstall jquery --save-dev`, `bower uninstall rrssb --save-dev`
- Install new bower component with `bower install <package-name> --save-dev` (Currently default location. Change it with .bowerrc)
- Reference the bower_components' .js and .css in the manifest.yml files
- If you're using ship to deploy the site, you can get rid of the `after` hook in `app.coffee` then add `ignores: ["public/bower_components/**"]` to your `ship.conf`

Thanks to @hhsnopek for getting this to work.
