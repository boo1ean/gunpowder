<template lang="pug">
	v-layout
		v-btn lulz
	//-v-app-bar(color="deep-purple accent-4" dense dark)
		//-v-app-bar-nav-icon
		//-v-toolbar-title Collections
		//-div(class="flex-grow-1")
		//-v-btn(icon)
			//-v-icon mdi-heart

		//-v-menu(left bottom)
			//-template(v-slot:activator="{ on }")
				//-v-btn(icon v-on="on")
					//-v-icon mdi-dots-vertical

			//-v-list
				//-v-list-item(v-for="n in 5" :key="n" @click="() => {}")
					//-v-list-item-title Option {{ n }}
</template>
