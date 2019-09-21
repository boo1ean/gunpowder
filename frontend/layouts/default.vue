<template lang="pug">
	v-app(dark)
		v-navigation-drawer(fixed app)
			div(class="d-flex flex-column justify-space-between nav-wrapper")
				v-list
					v-list-item(v-for="(item, i) in items" :key="i" :to="item.to" router exact)
						v-list-item-action
							v-icon {{ item.icon }}
						v-list-item-content
							v-list-item-title(v-text="item.title")

				v-list
					v-bottom-sheet(v-model="settingsSheet")
						template(v-slot:activator="{ on }")
							v-list-item(v-on="on")
								v-list-item-action
									v-icon mdi-settings
								v-list-item-content
									v-list-item-title Settings
						v-sheet(height="200px")
							v-container(class="px-10" fluid)
								v-row
									v-col
										v-btn(class="mt-n12" elevation="12" height="200" width="200" link nuxt to="/settings/collections" @click="settingsSheet = false") Collections
		v-content
			v-container
				nuxt
</template>
<style scoped>
.nav-wrapper {
	height: 100%;
}
</style>

<script>
export default {
	data () {
		return {
			clipped: false,
			drawer: true,
			fixed: false,
			settingsSheet: false,
			items: [
				{
					icon: 'mdi-apps',
					title: 'Welcome',
					to: '/'
				},
				{
					icon: 'mdi-chart-bubble',
					title: 'Inspire',
					to: '/inspire'
				}
			],
			miniVariant: false,
			right: true,
			rightDrawer: false,
			title: 'Vuetify.js'
		}
	}
}
</script>
