// This plugin is not executed on server side
// due to sortablejs `navigator` dependency
// we cant require sortable in .vue files
// cause it will be called on server side and cause error "navigator is not defined"

import Draggable from 'vuedraggable'
import Sortable from 'sortablejs'
import Vue from 'vue'

window.Sortable = Sortable
Vue.component('draggable', Draggable)
