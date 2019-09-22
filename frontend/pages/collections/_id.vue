<template lang="pug">
v-layout(class="flex-column")
	v-app-bar(app fixed elevate-on-scroll)
		v-toolbar-title Manage Products collection
		div(class="flex-grow-1")
		v-btn(class="mr-0") save
	v-container
		v-card
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
				:items-per-page=1000
				height="500px"
			)
				template(v-slot:top)
					v-toolbar
						v-toolbar-title Fields
						div(class="flex-grow-1")
						v-btn() add
				template(v-slot:item.action="{ item }")
					v-btn(icon @click="editItem(item)")
						v-icon mdi-circle-edit-outline
</template>

<style>
.ghost {
	background: blue;
}
</style>

<script>
export default {
	data () {
		return {
			selected: [],
		}
	},
	async asyncData () {
		const breadcrumbs = [
        {
          text: 'Settings',
          disabled: false,
          href: 'breadcrumbs_dashboard',
        },
        {
          text: 'Collections',
          disabled: false,
          href: 'breadcrumbs_link_1',
        },
        {
          text: 'Products',
          disabled: true,
          href: 'breadcrumbs_link_2',
        },
		]
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
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'kekt',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'kekt',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'kekt',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'kekt',
			},
			{
				id: 3,
				title: 'Products',
			},
			{
				id: 3,
				title: 'kekt',
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
			breadcrumbs,
			headers,
			items,
		}
	},
	mounted () {
		const table = document.querySelector('.v-data-table tbody')
		Sortable.create(table, {
			onEnd({ newIndex, oldIndex }) {
				console.log({ newIndex, oldIndex })
			}
		})
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
