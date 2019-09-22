<template lang="pug">
v-layout(class="flex-column")
	v-app-bar(color="accent-4" dense dark)
		v-toolbar-title Collections
		div(class="flex-grow-1")
		v-btn(icon)
			v-icon mdi-plus

		v-menu(left bottom)
			template(v-slot:activator="{ on }")
				v-btn(icon v-on="on")
					v-icon mdi-dots-vertical

			v-list
				v-list-item(v-for="n in 5" :key="n" @click="() => {}")
					v-list-item-title Option {{ n }}
	v-container
		v-data-table(
			:headers="headers"
			:items="items"
			sort-by="id"
			class="elevation-1"
			v-model="selected"
			item-key="id"
			show-select
			fixed-header
			hide-default-footer
		)
			template(v-slot:item.action="{ item }")
				v-btn(icon @click="editItem(item)")
					v-icon mdi-circle-edit-outline
</template>

<script>
export default {
	data () {
		return {
			selected: [],
		}
	},
	async asyncData () {
		const items = [
			{
				id: 1,
				title: 'Users',
			},
			{
				id: 2,
				title: 'Sessions',
			},
			{
				id: 3,
				title: 'Products',
			},
		]
		const headers = [
			{
				text: 'Title',
				align: 'left',
				sortable: false,
				value: 'title',
			},
			{
				text: 'Actions',
				value: 'action',
				sortable: false,
				align: 'right',
			}
		]
		return {
			headers,
			items,
		}
	},
	methods: {
		editItem (item) {
			this.$router.push({
				path: `/collections/${item.id}`
			})
		}
	},
}
</script>
