<template lang="pug">
v-layout(class="flex-column")
	v-app-bar(app fixed elevate-on-scroll)
		v-toolbar-title Manage Products collection
		div(class="flex-grow-1")
		v-dialog(v-model="createDialog" max-width="600px")
			template(v-slot:activator="{ on }")
				v-btn(class="mr-0" v-on="on") create new
			v-card
				v-card-title
					span(class="headline") New collection
				v-card-text
					v-container
						v-row
							v-col(cols="12")
								v-text-field(label="Legal first name*" required)
				v-card-actions
					div(class="flex-grow-1")
					v-btn(text @click="createDialog = false") close
					v-btn(text @click="createDialog = false") save
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
			createDialog: false,
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
