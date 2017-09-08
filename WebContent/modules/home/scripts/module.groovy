import org.metamorphosis.core.ActionSupport 

class Gender {
  def type
  def label
  def categories = []
}

class Category {
  def name
  def products = []
}

class Product {
  def name
  def price
  def image
}

class ModuleAction extends ActionSupport {

    def genders = [] 
    
    def String execute(){
       loadProducts()
       SUCCESS
    }
    
    def loadProducts() {
       def gender = new Gender(type : "female",label : "femme")
       def category = new Category(name : "T-Shirts")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"53.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"54.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"21.jpg")
       gender.categories << category
       category = new Category(name : "Jupes")
       category.products << new Product(name : "Jupe",price : "13500",image:"8.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"9.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"10.jpg")
       gender.categories << category
       category = new Category(name : "Montres")
       category.products << new Product(name : "Montre",price : "13500",image:"11.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"12.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"13.jpg")
       gender.categories << category
       category = new Category(name : "Sandales")
       category.products << new Product(name : "Sandale",price : "13500",image:"14.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"15.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"16.jpg")
       gender.categories << category
       category = new Category(name : "Bijoux")
       category.products << new Product(name : "Bijou",price : "13500",image:"17.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"18.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"19.jpg")
       gender.categories << category
       genders << gender
       
       gender = new Gender(type : "male",label : "homme")
       category = new Category(name : "T-Shirts")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"53.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"54.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"21.jpg")
       gender.categories << category
       category = new Category(name : "Jupes")
       category.products << new Product(name : "Jupe",price : "13500",image:"8.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"9.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"10.jpg")
       gender.categories << category
       category = new Category(name : "Montres")
       category.products << new Product(name : "Montre",price : "13500",image:"11.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"12.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"13.jpg")
       gender.categories << category
       category = new Category(name : "Sandales")
       category.products << new Product(name : "Sandale",price : "13500",image:"14.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"15.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"16.jpg")
       gender.categories << category
       category = new Category(name : "Bijoux")
       category.products << new Product(name : "Bijou",price : "13500",image:"17.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"18.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"19.jpg")
       gender.categories << category
       genders << gender
     
       
       gender = new Gender(type : "child",label : "enfant")
       category = new Category(name : "T-Shirts")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"53.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"54.jpg")
       category.products << new Product(name : "T-Shirt",price : "13500",image:"21.jpg")
       gender.categories << category
       category = new Category(name : "Jupes")
       category.products << new Product(name : "Jupe",price : "13500",image:"8.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"9.jpg")
       category.products << new Product(name : "Jupe",price : "13500",image:"10.jpg")
       gender.categories << category
       category = new Category(name : "Montres")
       category.products << new Product(name : "Montre",price : "13500",image:"11.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"12.jpg")
       category.products << new Product(name : "Montre",price : "13500",image:"13.jpg")
       gender.categories << category
       category = new Category(name : "Sandales")
       category.products << new Product(name : "Sandale",price : "13500",image:"14.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"15.jpg")
       category.products << new Product(name : "Sandale",price : "13500",image:"16.jpg")
       gender.categories << category
       category = new Category(name : "Bijoux")
       category.products << new Product(name : "Bijou",price : "13500",image:"17.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"18.jpg")
       category.products << new Product(name : "Bijou",price : "13500",image:"19.jpg")
       gender.categories << category
       genders << gender
     
    }
    
}

new ModuleAction()