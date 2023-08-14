<div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.14/dist/vue.js"></script>
    <script type="text/x-template" id="select2-template">
        <select>
            <slot></slot>
        </select>
    </script>
    <script>
        Vue.component('select2', {
            props: ['options', 'value'],
            template: '#select2-template',
            mounted: function() {
                var vm = this;
                $(this.$el)
                    .select2({
                        data: this.options
                    })
                    .val(this.value)
                    .trigger('change')
                    // emit event on change.
                    .on('change', function() {
                        vm.$emit('input', this.value)
                    })
            },
            watch: {
                value: function(value) {
                    // update value
                    $(this.$el).val(value);
                    vm.$emit('input', value)
                },
                options: function(options) {
                    // update options
                    $(this.$el).empty().select2({
                        data: options
                    });
                    // $(this.$el).val(options[0].id);
                }
            },
            destroyed: function() {
                $(this.$el).off().select2('destroy')
            }
        });
    </script>
</div>
