const mix = require("laravel-mix");

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js("resources/js/app.js", "public/js").vue();
mix.js("resources/js/app/cursos/notas/index.js", "public/js/app/cursos/notas/index.js").vue();
mix.js("resources/js/app/cursos/notas/edit.js", "public/js/app/cursos/notas/edit.js").vue();
mix.js("resources/js/app/cursos/asistencia/edit.js", "public/js/app/cursos/asistencia/edit.js").vue();
mix.js("resources/js/app/cursos/horarios/index.js", "public/js/app/cursos/horarios/index.js").vue();

mix.browserSync({
    notify: false,
    proxy: {
        target: "https://sigaiestpceam.kurousagi.dev",
    },
});
