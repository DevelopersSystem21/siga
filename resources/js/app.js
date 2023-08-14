import Vue from "vue";
import VueResource from 'vue-resource';

window.Vue = Vue;

import { ModelListSelect, MultiListSelect } from "vue-search-select"; // ModelSelect, MultiSelect, BasicSelect, ListSelect
Vue.use(VueResource);
Vue.http.headers.common['X-CSRF-TOKEN'] = document.head.querySelector('meta[name="csrf-token"]').content;

Vue.mixin({
    components: { ModelListSelect, MultiListSelect },
});

