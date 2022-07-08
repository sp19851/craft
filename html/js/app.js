/*const array_subnavi = [ 
    /*{"id":0, "parent":"drugs", "array":[{"id": 0, "parent":"drugs", "name": "crack_baggy", "label":"Крэк", "image":"./img/crack_baggy.png", "amount":1, "level":0, "time":"00:25", 
    "items":[
        {"id":0, "name": "cocaleaf", "label":"Листья коки", "image":"./img/cocaleaf.png", "amount":2, "in_stock":false},
        {"id":1, "name": "empty_weed_bag", "label":"Пакет", "image":"./img/empty_weed_bag.png", "amount":1, "in_stock":true},
        {"id":2, "name": "benzoylecgonine", "label":"benzoylecgonine", "image":"./img/benzoylecgonine.png", "amount":1, "in_stock":false},
    ]}]},
]*/
const App = {
    
    data() {
        return {
           show: false, 
           navishow: true,
           subnavishow: false,
           itemshow: false,
           itemForCraft: [],
           itemForCraft_label: null,
           itemForCraft_image: null,
           itemForCraft_level: null,
           itemForCraft_time: null,
           itemForCraft_amount: null,
           navi:[
            /*{"id": 0, "name": "tools", "label":"Инструменты", "image":"./img/categ/tools.png"},
            {"id": 1, "name": "food-goods", "label":"Пища", "image":"./img/categ/food-goods.png"},
            {"id": 2, "name": "drugs", "label":"Наркотики", "image":"./img/categ/drugs.png"},
            {"id": 3, "name": "weapons", "label":"Оружие", "image":"./img/categ/weapons.png"},
            {"id": 4, "name": "medical", "label":"Медикаменты", "image":"./img/categ/medical.png"},*/
           ],
           subnavi:[
           ],
           currentItems:[
           ],
           currentItem:[
           ],
           array_subnavi:[],
        }
    },    
    components:{},
    methods: {
        onClose() {
            if(this.navishow) 
            {   this.show = false;
                $.post('https://craft/close');
            } else if (this.subnavishow) {
                this.subnavishow = false  
                this.navishow = true
                this.itemshow = false
            }

        },
        onNavi(item) {
            this.subnavishow = true
            this.navishow = false
            this.subnavi = null
            this.itemForCraft = []
            this.itemForCraft_label = null
            this.itemForCraft_image= null
            this.itemForCraft_level= null
            this.itemForCraft_time= null
            this.itemForCraft_amount= null
            for (let i = 0; i < this.array_subnavi.length; i += 1) {
                let Item = this.array_subnavi[i]
                //console.log('call[j].callsing', call.callsing, this.myCallsign)
                //console.log(Item.parent, item.name)
                if (Item.parent === item.name) {
                        this.subnavi = Item.array
                        //console.log('this.subnavi',JSON.stringify(this.subnavi))
                        
                }
            }

        },

        onSubNavi(item) {
            //console.log('onSubNavi', item.name)
            this.itemshow = true
            this.currentItems = item.items
            //console.log('this.currentItems', JSON.stringify(this.currentItems))
            this.itemForCraft = item.name
            this.itemForCraft_label = item.label
            this.itemForCraft_image = item.image
            this.itemForCraft_level = item.level
            this.itemForCraft_time = item.time
            this.itemForCraft_amount = item.amount
        },
        in_stock(item) {
            //console.log('item.in_stock', item.in_stock)
            if (item.in_stock) {return true} else {return false}
        },
        Start() {
            let bool = true
            for (let i = 0; i < this.currentItems.length; i += 1) {
                let Item = this.currentItems
                if (!Item.in_stock) {
                        bool = false
                        break
                }
            }
            if (bool) {
                $.post('https://craft/use', JSON.stringify({currentCraft:itemForCraft}));
            } else {
                $.post('https://craft/not_in_stock');
            }
        }
    },
    
    mounted() {
        this.listener = window.addEventListener("message", (event) => {
            //console.log('test window.addEventListener', event.data.action)
            if(event.data.action === 'openCraft') {
                this.navi = event.data.categories
                this.array_subnavi = event.data.subcategories
                this.show = true
                //console.log('this.navi', JSON.stringify(this.navi))
    
            } else if(event.data.action === 'close') {
                this.onClose()
            } else if(event.data.action === 'onNotif') {
                this.onNotif()
            } else if(event.data.action === 'offNotif') {
                this.offNotif()
            } else if(event.data.action === 'refresh') {
              

            }
            
        });
        window.document.onkeydown = event => event && event.code === 'Escape' ? this.onClose() : null
       

        
       

      },
    create: {
    },
    watch: {
    },

    computed: {
    }
}

let app = Vue.createApp(App)
app.mount('#app')

//v-if="item.attached.lenght>0"