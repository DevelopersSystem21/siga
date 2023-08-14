(()=>{"use strict";var t={368:(t,a,e)=>{e.d(a,{Z:()=>s});var i=e(645),n=e.n(i)()((function(t){return t[1]}));n.push([t.id,"input::-webkit-inner-spin-button,input::-webkit-outer-spin-button{-webkit-appearance:none;margin:0}input[type=number]{-moz-appearance:textfield}",""]);const s=n},645:t=>{t.exports=function(t){var a=[];return a.toString=function(){return this.map((function(a){var e=t(a);return a[2]?"@media ".concat(a[2]," {").concat(e,"}"):e})).join("")},a.i=function(t,e,i){"string"==typeof t&&(t=[[null,t,""]]);var n={};if(i)for(var s=0;s<this.length;s++){var r=this[s][0];null!=r&&(n[r]=!0)}for(var o=0;o<t.length;o++){var c=[].concat(t[o]);i&&n[c[0]]||(e&&(c[2]?c[2]="".concat(e," and ").concat(c[2]):c[2]=e),a.push(c))}},a}},379:(t,a,e)=>{var i,n=function(){return void 0===i&&(i=Boolean(window&&document&&document.all&&!window.atob)),i},s=function(){var t={};return function(a){if(void 0===t[a]){var e=document.querySelector(a);if(window.HTMLIFrameElement&&e instanceof window.HTMLIFrameElement)try{e=e.contentDocument.head}catch(t){e=null}t[a]=e}return t[a]}}(),r=[];function o(t){for(var a=-1,e=0;e<r.length;e++)if(r[e].identifier===t){a=e;break}return a}function c(t,a){for(var e={},i=[],n=0;n<t.length;n++){var s=t[n],c=a.base?s[0]+a.base:s[0],d=e[c]||0,l="".concat(c," ").concat(d);e[c]=d+1;var u=o(l),f={css:s[1],media:s[2],sourceMap:s[3]};-1!==u?(r[u].references++,r[u].updater(f)):r.push({identifier:l,updater:p(f,a),references:1}),i.push(l)}return i}function d(t){var a=document.createElement("style"),i=t.attributes||{};if(void 0===i.nonce){var n=e.nc;n&&(i.nonce=n)}if(Object.keys(i).forEach((function(t){a.setAttribute(t,i[t])})),"function"==typeof t.insert)t.insert(a);else{var r=s(t.insert||"head");if(!r)throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");r.appendChild(a)}return a}var l,u=(l=[],function(t,a){return l[t]=a,l.filter(Boolean).join("\n")});function f(t,a,e,i){var n=e?"":i.media?"@media ".concat(i.media," {").concat(i.css,"}"):i.css;if(t.styleSheet)t.styleSheet.cssText=u(a,n);else{var s=document.createTextNode(n),r=t.childNodes;r[a]&&t.removeChild(r[a]),r.length?t.insertBefore(s,r[a]):t.appendChild(s)}}function v(t,a,e){var i=e.css,n=e.media,s=e.sourceMap;if(n?t.setAttribute("media",n):t.removeAttribute("media"),s&&"undefined"!=typeof btoa&&(i+="\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(s))))," */")),t.styleSheet)t.styleSheet.cssText=i;else{for(;t.firstChild;)t.removeChild(t.firstChild);t.appendChild(document.createTextNode(i))}}var _=null,h=0;function p(t,a){var e,i,n;if(a.singleton){var s=h++;e=_||(_=d(a)),i=f.bind(null,e,s,!1),n=f.bind(null,e,s,!0)}else e=d(a),i=v.bind(null,e,a),n=function(){!function(t){if(null===t.parentNode)return!1;t.parentNode.removeChild(t)}(e)};return i(t),function(a){if(a){if(a.css===t.css&&a.media===t.media&&a.sourceMap===t.sourceMap)return;i(t=a)}else n()}}t.exports=function(t,a){(a=a||{}).singleton||"boolean"==typeof a.singleton||(a.singleton=n());var e=c(t=t||[],a);return function(t){if(t=t||[],"[object Array]"===Object.prototype.toString.call(t)){for(var i=0;i<e.length;i++){var n=o(e[i]);r[n].references--}for(var s=c(t,a),d=0;d<e.length;d++){var l=o(e[d]);0===r[l].references&&(r[l].updater(),r.splice(l,1))}e=s}}}}},a={};function e(i){var n=a[i];if(void 0!==n)return n.exports;var s=a[i]={id:i,exports:{}};return t[i](s,s.exports,e),s.exports}e.n=t=>{var a=t&&t.__esModule?()=>t.default:()=>t;return e.d(a,{a}),a},e.d=(t,a)=>{for(var i in a)e.o(a,i)&&!e.o(t,i)&&Object.defineProperty(t,i,{enumerable:!0,get:a[i]})},e.o=(t,a)=>Object.prototype.hasOwnProperty.call(t,a),e.nc=void 0,(()=>{const t={props:{curso_id:"",retornable:{type:Boolean,default:!1}},data:function(){return{loading:!1,extendido:!1,curso:{id:0,capacidades:[],matricula_unidades:[]},asistencias:{},horarios_semanales:{}}},mounted:function(){this.obtenerDatos(),this.$nextTick((function(){window.onbeforeunload=function(){}}))},methods:{obtenerDatos:function(){var t=this;this.loading=!0,this.$http.get("/cursos/"+this.curso_id+"/asistencia").then((function(a){var e=a.data;t.curso=e.curso,t.asistencias=e.asistencias,t.horarios_semanales=e.horarios_semanales,t.loading=!1,t.$nextTick((function(){[].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]')).map((function(t){return new bootstrap.Tooltip(t)}))}))})).catch((function(a){Swal.fire({title:"Error",text:a.data.message||"No se pudo cargar",icon:"error"}),t.loading=!1}))},registrarAsistencia:function(t){this.asistencias[t].asistio=!this.asistencias[t].asistio},resetearAsistencia:function(t){this.asistencias[t].asistio=!0,this.asistencias[t].es_tardanza=!1,this.asistencias[t].es_permiso=!1},registrarTardanza:function(t){this.asistencias[t].asistio=!1,this.asistencias[t].es_tardanza=!0,this.asistencias[t].es_permiso=!1},registrarPermiso:function(t){this.asistencias[t].asistio=!1,this.asistencias[t].es_tardanza=!1,this.asistencias[t].es_permiso=!0},verificar:function(){var t=this;this.existe_alguno_a_inhabilitarse?Swal.fire({text:"Guardar esta asistencia inhabilitará a uno o más alumnos. Seleccione continuar si estos datos son correctos y desea guardar de todas maneras.",icon:"warning",showCancelButton:!0,confirmButtonText:"Sí, continuar",cancelButtonText:"Cancelar"}).then((function(a){a.isConfirmed&&t.guardar(),t.loading=!1})):t.guardar()},guardar:function(){var t=this;t.loading=!0,Swal.fire({title:"¿Estás seguro que desea guardar estas asistencias?",icon:"question",showCancelButton:!0,confirmButtonText:"Sí, guardar",cancelButtonText:"Cancelar"}).then((function(a){a.isConfirmed&&t.$http.post("/cursos/"+t.curso.id+"/asistencia",{asistencias:t.asistencias,matriculas:t.procesarAsistencias()}).then((function(a){a.data;t.loading=!1,t.obtenerDatos(),Swal.fire({title:"Completado",text:"Asistencias guardadas",icon:"success"}).catch((function(a){t.loading=!1,Swal.fire({title:"Error",text:a.data.message||"No se pudo guardar",icon:"error"})}))})),t.loading=!1}))},calcularPromedioFinal:function(t){var a=0,e=0;for(var i in this.horarios_semanales){var n=this.horarios_semanales[i];for(var s in n.horarios){var r=n.horarios[s],o=this.asistencias[t+"-"+r.codigo];a+=o.asistio||o.es_tardanza||o.es_permiso?0:1,e++}}return 100*a/e},formatea:function(t){return t.toFixed(2)},procesarAsistencias:function(){var t=this.curso.matricula_unidades;for(var a in t){var e=t[a];e.esta_inhabilitado=!1,this.calcularPromedioFinal(e.id)>=30&&(e.esta_inhabilitado=!0)}return t}},computed:{existe_alguno_a_inhabilitarse:function(){var t=!1;for(var a in this.curso.matricula_unidades){var e=this.curso.matricula_unidades[a];this.calcularPromedioFinal(e.id)>=30&&(t=!0)}return t}},watch:{curso_id:function(){this.obtenerDatos()}}};var a=e(379),i=e.n(a),n=e(368),s={insert:"head",singleton:!1};i()(n.Z,s);n.Z.locals;var r=function(t,a,e,i,n,s,r,o){var c,d="function"==typeof t?t.options:t;if(a&&(d.render=a,d.staticRenderFns=e,d._compiled=!0),i&&(d.functional=!0),s&&(d._scopeId="data-v-"+s),r?(c=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),n&&n.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(r)},d._ssrRegister=c):n&&(c=o?function(){n.call(this,(d.functional?this.parent:this).$root.$options.shadowRoot)}:n),c)if(d.functional){d._injectStyles=c;var l=d.render;d.render=function(t,a){return c.call(a),l(t,a)}}else{var u=d.beforeCreate;d.beforeCreate=u?[].concat(u,c):[c]}return{exports:t,options:d}}(t,(function(){var t=this,a=t._self._c;return a("div",{staticClass:"card border-0"},[t.curso.matricula_unidades.length>0?a("div",{staticClass:"card-body"},[a("div",{staticClass:"d-flex justify-content-between"},[t.retornable?a("a",{staticClass:"btn btn-outline-primary",attrs:{href:"/cursos/notas"}},[a("i",{staticClass:"fa fa-arrow-left mr-2"}),t._v("Lista de unidades")]):t._e(),t._v(" "),a("button",{staticClass:"btn btn-primary",attrs:{disabled:t.loading},on:{click:t.verificar}},[a("i",{staticClass:"fa fa-save mr-2"}),t._v("Guardar")])]),t._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-12"},[a("div",{staticClass:"form-group"},[a("div",{staticClass:"custom-control custom-switch"},[a("br"),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.extendido,expression:"extendido"}],staticClass:"custom-control-input",attrs:{type:"checkbox",id:"customSwitch2"},domProps:{checked:Array.isArray(t.extendido)?t._i(t.extendido,null)>-1:t.extendido},on:{change:function(a){var e=t.extendido,i=a.target,n=!!i.checked;if(Array.isArray(e)){var s=t._i(e,null);i.checked?s<0&&(t.extendido=e.concat([null])):s>-1&&(t.extendido=e.slice(0,s).concat(e.slice(s+1)))}else t.extendido=n}}}),t._v(" "),a("label",{staticClass:"custom-control-label",attrs:{for:"customSwitch2"}},[t._v("Todas las opciones")])])])])])]):t._e(),t._v(" "),t.curso.matricula_unidades.length>0?a("div",{staticClass:"card-body p-0 border-0 table-responsive"},[a("table",{staticClass:"table table-sm table-bordered"},[a("thead",[a("tr",[a("th",{staticClass:"text-center",attrs:{rowspan:"2"}},[t._v("Código")]),t._v(" "),a("th",{attrs:{rowspan:"2"}},[t._v("Alumno")]),t._v(" "),t._l(t.horarios_semanales,(function(e){return a("th",{staticClass:"text-center",attrs:{colspan:e.horarios.length}},[t._v("\n                        Semana "+t._s(e.semana)+" "),a("br"),t._v("\n                        "+t._s(e.inicio)+" - "+t._s(e.fin)+"\n                    ")])})),t._v(" "),a("th",{attrs:{rowspan:"2"}},[t._v("%")])],2),t._v(" "),a("tr",[t._l(t.horarios_semanales,(function(e){return t._l(e.horarios,(function(e){return a("td",{staticClass:"text-center text-nowrap"},[a("b",[t._v("\n                                "+t._s(e.dia)+" "),a("br"),t._v("\n                                "+t._s(e.fecha_formateada)+" "),a("br")]),t._v(" "),a("small",[t._v(" "+t._s(e.inicio)+" - "+t._s(e.fin))])])}))}))],2)]),t._v(" "),a("tbody",t._l(t.curso.matricula_unidades,(function(e){var i,n,s,r;return a("tr",[a("td",{staticClass:"text-center"},[t._v(t._s(null===(i=e.matricula)||void 0===i?void 0:i.codigo))]),t._v(" "),a("td",{staticClass:"text-nowrap"},[t._v(t._s(null===(n=e.matricula)||void 0===n||null===(s=n.estudiante)||void 0===s||null===(r=s.persona)||void 0===r?void 0:r.nombre_completo))]),t._v(" "),t._l(t.horarios_semanales,(function(i){return t._l(i.horarios,(function(i){return a("td",{staticClass:"text-center text-nowrap"},[t.asistencias[e.id+"-"+i.codigo].es_tardanza||t.asistencias[e.id+"-"+i.codigo].es_permiso?t._e():a("div",{staticClass:"btn-group"},[t.asistencias[e.id+"-"+i.codigo].asistio?a("button",{staticClass:"btn btn-primary",attrs:{disabled:e.esta_inhabilitado},on:{click:function(a){return t.registrarAsistencia(e.id+"-"+i.codigo)}}},[t._v("\n                                    A\n                                ")]):t._e(),t._v(" "),t.asistencias[e.id+"-"+i.codigo].asistio?t._e():a("button",{staticClass:"btn btn-outline-danger",attrs:{disabled:e.esta_inhabilitado},on:{click:function(a){return t.registrarAsistencia(e.id+"-"+i.codigo)}}},[t._v("\n                                    F\n                                ")]),t._v(" "),t.extendido?a("button",{staticClass:"btn dropdown-toggle dropdown-icon px-1",class:{"btn-outline-danger":!t.asistencias[e.id+"-"+i.codigo].asistio,"btn-primary":t.asistencias[e.id+"-"+i.codigo].asistio},attrs:{disabled:e.esta_inhabilitado,type:"button","data-toggle":"dropdown"}},[a("span",{staticClass:"sr-only"},[t._v("Toggle")])]):t._e(),t._v(" "),a("div",{staticClass:"dropdown-menu",attrs:{role:"menu",disabled:e.esta_inhabilitado}},[a("a",{staticClass:"dropdown-item",attrs:{href:"#"},on:{click:function(a){return t.registrarTardanza(e.id+"-"+i.codigo)}}},[t._v("Tardanza")]),t._v(" "),a("a",{staticClass:"dropdown-item",attrs:{href:"#"},on:{click:function(a){return t.registrarPermiso(e.id+"-"+i.codigo)}}},[t._v("Permiso")])])]),t._v(" "),t.asistencias[e.id+"-"+i.codigo].es_tardanza?a("button",{staticClass:"btn btn-warning",attrs:{disabled:e.esta_inhabilitado},on:{click:function(a){return t.resetearAsistencia(e.id+"-"+i.codigo)}}},[t._v("\n                                T\n                            ")]):t._e(),t._v(" "),t.asistencias[e.id+"-"+i.codigo].es_permiso?a("button",{staticClass:"btn btn-success",attrs:{disabled:e.esta_inhabilitado},on:{click:function(a){return t.resetearAsistencia(e.id+"-"+i.codigo)}}},[t._v("\n                                P\n                            ")]):t._e()])}))})),t._v(" "),a("td",{class:{"text-danger":e.esta_inhabilitado}},[t._v(t._s(t.formatea(t.calcularPromedioFinal(e.id)))+"%")])],2)})),0)])]):a("div",{staticClass:"card-body"},[a("div",{staticClass:"alert alert-danger"},[t._v("No hay alumnos matriculados")])])])}),[],!1,null,null,null);const o=r.exports;new Vue({el:"#app",data:{},components:{UsakoAsistencia:o}})})()})();