<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Title
    |--------------------------------------------------------------------------
    |
    | Here you can change the default title of your admin panel.
    |
    | For detailed instructions you can look the title section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'title' => 'SIGA CEAM',
    'title_prefix' => '',
    'title_postfix' => '',

    /*
    |--------------------------------------------------------------------------
    | Favicon
    |--------------------------------------------------------------------------
    |
    | Here you can activate the favicon.
    |
    | For detailed instructions you can look the favicon section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'use_ico_only' => true,
    'use_full_favicon' => false,


    /*
    |--------------------------------------------------------------------------
    | Google Fonts
    |--------------------------------------------------------------------------
    |
    | Here you can allow or not the use of external google fonts. Disabling the
    | google fonts may be useful if your admin panel internet access is
    | restricted somehow.
    |
    | For detailed instructions you can look the google fonts section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |


    'google_fonts' => [
        'allowed' => true,
    ],

    /*
    |--------------------------------------------------------------------------
    | Admin Panel Logo
    |--------------------------------------------------------------------------
    |
    | Here you can change the logo of your admin panel.
    |
    | For detailed instructions you can look the logo section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'logo' => '<b>SIGA CEAM</b>',
    'logo_img' => 'vendor/adminlte/dist/img/CEAM.png',
    'logo_img_class' => 'brand-image img-circle elevation-3',
    'logo_img_xl' => null,
    'logo_img_xl_class' => 'brand-image-xs',
    'logo_img_alt' => 'Siga CEAM',

    /*
    |--------------------------------------------------------------------------
    | Authentication Logo
    |--------------------------------------------------------------------------
    |
    | Here you can setup an alternative logo to use on your login and register
    | screens. When disabled, the admin panel logo will be used instead.
    |
    | For detailed instructions you can look the auth logo section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'auth_logo' => [
        'enabled' => false,
        'img' => [
            'path' => 'vendor/adminlte/dist/img/CEAM.png',
            'alt' => 'Auth Logo',
            'class' => '',
            'width' => 50,
            'height' => 50,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Preloader Animation
    |--------------------------------------------------------------------------
    |
    | Here you can change the preloader animation configuration.
    |
    | For detailed instructions you can look the preloader section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'preloader' => [
        'enabled' => false,
        'img' => [
            'path' => 'vendor/adminlte/dist/img/CEAM.png',
            'alt' => 'AdminLTE Preloader Image',
            'effect' => 'animation__shake',
            'width' => 60,
            'height' => 60,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | User Menu
    |--------------------------------------------------------------------------
    |
    | Here you can activate and change the user menu.
    |
    | For detailed instructions you can look the user menu section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'usermenu_enabled' => true,
    'usermenu_header' => true,
    'usermenu_header_class' => 'bg-gradient-info',
    'usermenu_image' => false,
    'usermenu_desc' => false,
    'usermenu_profile_url' => false,

    /*
    |--------------------------------------------------------------------------
    | Layout
    |--------------------------------------------------------------------------
    |
    | Here we change the layout of your admin panel.
    |
    | For detailed instructions you can look the layout section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Layout-and-Styling-Configuration
    |
    */

    'layout_topnav' => null,
    'layout_boxed' => null,
    'layout_fixed_sidebar' => true,
    'layout_fixed_navbar' => true,
    'layout_fixed_footer' => null,
    'layout_dark_mode' => null,

    /*
    |--------------------------------------------------------------------------
    | Authentication Views Classes
    |--------------------------------------------------------------------------
    |
    | Here you can change the look and behavior of the authentication views.
    |
    | For detailed instructions you can look the auth classes section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Layout-and-Styling-Configuration
    |
    */

    'classes_auth_card' => 'card-outline card-primary',
    'classes_auth_header' => 'bg-gradient-info',
    'classes_auth_body' => '',
    'classes_auth_footer' => 'd-none',
    'classes_auth_icon' => '',
    'classes_auth_btn' => 'btn-flat bg-gradient-info',

    /*
    |--------------------------------------------------------------------------
    | Admin Panel Classes
    |--------------------------------------------------------------------------
    |
    | Here you can change the look and behavior of the admin panel.
    |
    | For detailed instructions you can look the admin panel classes here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Layout-and-Styling-Configuration
    |
    */


    'classes_body' => '',
    'classes_brand' => '',
    'classes_brand_text' => '',
    'classes_content_wrapper' => 'bg-light',
    'classes_content_header' => '',
    'classes_content' => '',
    'classes_sidebar' => 'sidebar-dark-primary elevation-4',
    'classes_sidebar_nav' => '',
    'classes_topnav' => 'navbar-dark navbar-light',
    'classes_topnav_nav' => 'navbar-expand',
    'classes_topnav_container' => 'container',

    /*
    |--------------------------------------------------------------------------
    | Sidebar
    |--------------------------------------------------------------------------
    |
    | Here we can modify the sidebar of the admin panel.
    |
    | For detailed instructions you can look the sidebar section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Layout-and-Styling-Configuration
    |
    */

    'sidebar_mini' => 'lg',
    'sidebar_collapse' => false,
    'sidebar_collapse_auto_size' => false,
    'sidebar_collapse_remember' => false,
    'sidebar_collapse_remember_no_transition' => true,
    'sidebar_scrollbar_theme' => 'os-theme-light',
    'sidebar_scrollbar_auto_hide' => 'l',
    'sidebar_nav_accordion' => true,
    'sidebar_nav_animation_speed' => 500,

    /*
    |--------------------------------------------------------------------------
    | Control Sidebar (Right Sidebar)
    |--------------------------------------------------------------------------
    |
    | Here we can modify the right sidebar aka control sidebar of the admin panel.
    |
    | For detailed instructions you can look the right sidebar section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Layout-and-Styling-Configuration
    |
    */

    'right_sidebar' => true,
    'right_sidebar_icon' => 'fas fa-cog',
    'right_sidebar_theme' => 'dark',
    'right_sidebar_slide' => true,
    'right_sidebar_push' => false,
    'right_sidebar_scrollbar_theme' => 'os-theme-light',
    'right_sidebar_scrollbar_auto_hide' => 'l',

    /*
    |--------------------------------------------------------------------------
    | URLs
    |--------------------------------------------------------------------------
    |
    | Here we can modify the url settings of the admin panel.
    |
    | For detailed instructions you can look the urls section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Basic-Configuration
    |
    */

    'use_route_url' => false,
    'dashboard_url' => 'home',
    'logout_url' => 'logout',
    'login_url' => 'login',
    'register_url' => 'register',
    'password_reset_url' => 'password/reset',
    'password_email_url' => 'password/email',
    'profile_url' => false,

    /*
    |--------------------------------------------------------------------------
    | Laravel Mix
    |--------------------------------------------------------------------------
    |
    | Here we can enable the Laravel Mix option for the admin panel.
    |
    | For detailed instructions you can look the laravel mix section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Other-Configuration
    |
    */

    'enabled_laravel_mix' => true,
    'laravel_mix_css_path' => 'css/app.css',
    'laravel_mix_js_path' => 'js/app.js',

    /*
    |--------------------------------------------------------------------------
    | Menu Items
    |--------------------------------------------------------------------------
    |
    | Here we can modify the sidebar/top navigation of the admin panel.
    |
    | For detailed instructions you can look here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Menu-Configuration
    |
    */

    'menu' => [
        // Navbar items:
        [
            'type'         => 'navbar-search',
            'text'         => 'Buscar alumno',
            'topnav_right' => true,
            'href' => "/estudiantes",
            'input_name' => 'query'
        ],
        [
            'type'         => 'fullscreen-widget',
            'topnav_right' => true,
        ],

        // Sidebar items:
        /* [
            'type' => 'sidebar-menu-search',
            'text' => 'search',
        ],*/
        ['header' => ''],

        //Menu Institucional
        [
            'text'    => 'Institucional',
            'icon'    => 'fas fa-fw fa-building',
            'submenu' => [

                //Submenupersona
                [
                    'text' => 'Personas',
                    'icon'    => 'fas fa-user',
                    'submenu' => [
                        [
                            'text' => 'Estudiante',
                            'url'  => 'estudiantes',
                        ],
                        [
                            'text' => 'Docente',
                            'url'  => 'docentes',
                        ],
                        [
                            'text' => 'Apoderado',
                            'url'  => 'apoderados',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Personal',
                            'url'  => 'personal',
                            'can' => 'es_administrador',
                        ],


                    ],

                ],

                //Subenú Planificación
                [
                    'text' => 'Estructuración',
                    'icon'    => 'fas fa-fw fa-table',
                    'can' => 'es_administrador',
                    'submenu' => [
                        [
                            'text' => 'Periodo Académico',
                            'url'  => 'periodo-academico',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Programa Académico',
                            'url'  => 'ProgramaAcademico',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Modulos',
                            'url'  => 'modulos',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Tipos de Módulo',
                            'url'  => 'tipo-modulo',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Unidades Didácticas',
                            'url'  => 'unidades-didacticas',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Configuración Unidad',
                            'url'  => 'configuracion-unidad',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Ciclos',
                            'url'  => 'ciclos',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Aulas',
                            'url'  => 'aulas',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Reglamento Interno',
                            'url'  => 'reglamento-interno',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Turno',
                            'url'  => 'turno',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Servicios',
                            'url'  => 'servicios',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Tipo de Identificación',
                            'url'  => 'tipo-identificacion',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'País',
                            'url'  => 'pais',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Departamento',
                            'url'  => 'departamento',
                            'can' => 'es_administrador',
                        ],
                        [
                            'text' => 'Ciudad',
                            'url'  => 'ciudad',
                            'can' => 'es_administrador',
                        ],
                    ],
                ],
            ],
        ],

        //Mneu Examen de admisión
        [
            'text'    => 'Examen de Admisión',
            'icon'    => 'fas fa-fw fa-file-import',
            'can' => 'es_administrador',
            'submenu' => [
                [
                    'text' => 'Actividades',
                    'url'  => 'actividades',
                ],

                [
                    'text' => 'Admisión',
                    'url'  => '#',
                ],
                [
                    'text' => 'Reglamneto',
                    'url'  => '#',
                ],
                [
                    'text' => 'Examen',
                    'url'  => '#',
                ],
                [
                    'text' => 'Tipo de examen',
                    'url'  => '#',
                ],
                [
                    'text' => 'Responsables',
                    'url'  => '#',
                ],
                //Submenu Registro de postulantes
                [
                    'text' => 'Registro de postulantes',
                    'icon'    => 'fas fa-fw fa-file-signature',
                    'submenu' => [
                        [
                            'text' => 'Postulante',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Preisncripción',
                            'url'  => 'PreinscripcionPostulante',
                        ],
                        [
                            'text' => 'Inscripción',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Programa ofertado',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Parametro de evaluación',
                            'url'  => '#',
                        ],

                    ],

                ],

                //Subenú evaluaciones
                [
                    'text' => 'Evaluaciones',
                    'icon'    => 'fas fa-fw fa-mountain',
                    'submenu' => [
                        [
                            'text' => 'Asistencia del postulante',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Calificación',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Parametro de examen',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Subparametro de examen',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Parametro de evaluación',
                            'url'  => '#',
                        ],
                        [
                            'text' => 'Evaluador',
                            'url'  => '#',
                        ],
                    ],
                ],
            ],
        ],

        //Menu Matricula
        [
            'text'    => 'Proceso de Matrícula',
            'icon'    => 'fas fa-fw fa-window-restore',
            'submenu' => [

                [
                    'text' => 'Actividad',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Matricula',
                    'url'  => 'matricula',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Actividades Matrícula',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Programación',
                    'url'  => 'programaciomMatricula',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Apertura de Módulo',
                    'url'  => 'modulos-aperturados',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Apertura de Unidad Académica',
                    'url'  => 'cursos',
                ],
                [
                    'text' => 'Turno de Unidad Aperturada',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Horario',
                    'url'  => 'horario',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Grupo',
                    'url'  => 'grupo',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Docente por Unidad Aperturada',
                    'url'  => 'docentes-x-unidad-aperturada',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Registro de Silabo',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
            ],
        ],
        //Menu Evaluacion
        [
            'text'    => 'Proceso de Evaluación',
            'icon'    => 'fas fa-fw fa-window-restore',
            'submenu' => [

                [
                    'text' => 'Evaluaciones y asistencias',
                    'url'  => '/cursos/notas',
                ],
               /* [
                    'text' => 'Asistencia',
                    'url'  => '/cursos/asistencia',
                ],*/
            ]
        ],
        //Menu Pagos
        [
            'text'    => 'Pagos',
            'icon'    => 'fas fa-fw fa-coins',
            
            'submenu' => [

                [
                    'text' => 'Pago por admisión',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Costo de Unidad Didáctica',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Pagos por estudiante',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Productos',
                    'url'  => 'producto',
                ],
                [
                    'text' => 'Concepto de pago',
                    'url'  => 'producto-programa',
                ],
                [
                    'text' => 'Tipos de Módulo',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Formas de pago',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
               
                [
                    'text' => 'Comprobante de pago',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                
                [
                    'text' => 'Compromiso de pago',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
                [
                    'text' => 'Pago por compromiso',
                    'url'  => '#',
                    'can' => 'es_administrador',
                ],
            ],
        ],

        /*  [
            'text'    => 'Actividades',
            'icon'    => 'fas fa-fw fa-share',
            'submenu' => [
                [
                    'text' => 'ver todas',
                    'url'  => 'actividades',
                ],
                [
                    'text' => 'crear',
                    'url'  => 'actividades/create',
                ],
            ],
        ],*/

        ['header' => 'FACTURACIÓN ELECTRÓNICA'],
        [
            'text' => 'Lista de comprobantes',
            'url'  => 'facturacion-sunat',
            'icon' => 'fas fa-fw fa-file',
        ],

        ['header' => 'CONFIGURACIÓN USUARIOS'],
        [
            'text' => 'Perfil del usuario',
            'url'  => 'admin/perfil',
            'icon' => 'fas fa-fw fa-user',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Menu Filters
    |--------------------------------------------------------------------------
    |
    | Here we can modify the menu filters of the admin panel.
    |
    | For detailed instructions you can look the menu filters section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Menu-Configuration
    |
    */

    'filters' => [
        JeroenNoten\LaravelAdminLte\Menu\Filters\GateFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\HrefFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\SearchFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ActiveFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ClassesFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\LangFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\DataFilter::class,
    ],

    /*
    |--------------------------------------------------------------------------
    | Plugins Initialization
    |--------------------------------------------------------------------------
    |
    | Here we can modify the plugins used inside the admin panel.
    |
    | For detailed instructions you can look the plugins section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Plugins-Configuration
    |
    */

    'plugins' => [
        'Datatables' => [
            'active' => false,
            'files' => [
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js',
                ],
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js',
                ],
                [
                    'type' => 'css',
                    'asset' => false,
                    'location' => '//cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css',
                ],
            ],
        ],
        'Select2' => [
            'active' => false,
            'files' => [
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js',
                ],
                [
                    'type' => 'css',
                    'asset' => false,
                    'location' => '//cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.css',
                ],
            ],
        ],
        'Chartjs' => [
            'active' => false,
            'files' => [
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.min.js',
                ],
            ],
        ],
        'Sweetalert2' => [
            'active' => false,
            'files' => [
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdn.jsdelivr.net/npm/sweetalert2@8',
                ],
            ],
        ],
        'Pace' => [
            'active' => false,
            'files' => [
                [
                    'type' => 'css',
                    'asset' => false,
                    'location' => '//cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/blue/pace-theme-center-radar.min.css',
                ],
                [
                    'type' => 'js',
                    'asset' => false,
                    'location' => '//cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js',
                ],
            ],
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | IFrame
    |--------------------------------------------------------------------------
    |
    | Here we change the IFrame mode configuration. Note these changes will
    | only apply to the view that extends and enable the IFrame mode.
    |
    | For detailed instructions you can look the iframe mode section here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/IFrame-Mode-Configuration
    |
    */

    'iframe' => [
        'default_tab' => [
            'url' => null,
            'title' => null,
        ],
        'buttons' => [
            'close' => true,
            'close_all' => true,
            'close_all_other' => true,
            'scroll_left' => true,
            'scroll_right' => true,
            'fullscreen' => true,
        ],
        'options' => [
            'loading_screen' => 1000,
            'auto_show_new_tab' => true,
            'use_navbar_items' => true,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Livewire
    |--------------------------------------------------------------------------
    |
    | Here we can enable the Livewire support.
    |
    | For detailed instructions you can look the livewire here:
    | https://github.com/jeroennoten/Laravel-AdminLTE/wiki/Other-Configuration
    |
    */

    'livewire' => false,
];
