//
//  DictionaryView.swift
//  Chal
//
//  Created by Roberto Farella on 22/02/22.
//

import SwiftUI


struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    var items: [Bookmark]?
    
    static let pear = Bookmark(name: "Pear")
    static let apple = Bookmark(name: "Apple")
    static let banana = Bookmark(name: "Banana")
    static let kiwi = Bookmark(name: "Kiwi")
    static let grape = Bookmark(name: "Grape")
    static let orange = Bookmark(name: "Orange")
    
    static let brinjal = Bookmark(name: "Brinjal")
    static let carrot = Bookmark(name: "Carrot")
    static let potato = Bookmark(name: "Potato")
    static let radish = Bookmark(name: "Radish")
    static let spinach = Bookmark(name: "Spinach")
    static let tomato = Bookmark(name: "Tomato")
    
    static let pencilcase = Bookmark(name: "Pencil case")
    static let eraser = Bookmark(name: "Eraser")
    static let pencil = Bookmark(name: "Pencil")
    static let pen = Bookmark(name: "Pen")
    static let notebook = Bookmark(name: "Notebook")
    static let backpack = Bookmark(name: "Backpack")
    
    static let Sofa = Bookmark(name: "Sofà")
    static let Bookshelf = Bookmark(name: "Bookshelf")
    static let chair = Bookmark(name: "Chair")
    static let coffeetable = Bookmark(name: "Coffe table")
    static let diningtable = Bookmark(name: "Dining table")
    static let tv = Bookmark(name: "TV")
    
    static let Fruits =
    Bookmark(name: "Fruits", items: [Bookmark.pear,Bookmark.apple, Bookmark.banana, Bookmark.kiwi, Bookmark.grape, Bookmark.orange])
        static let Vegetables =
    Bookmark(name: "Vegetables", items: [Bookmark.brinjal, Bookmark.carrot, Bookmark.potato, Bookmark.radish, Bookmark.spinach, Bookmark.tomato])
        static let Stationery =
    Bookmark(name: "Stationery", items: [Bookmark.pencilcase, Bookmark.eraser, Bookmark.pencil, Bookmark.pen, Bookmark.notebook, Bookmark.backpack])
    static let Froniture =
    Bookmark(name: "Forniture", items: [Bookmark.Sofa,Bookmark.Bookshelf, Bookmark.chair, Bookmark.coffeetable, Bookmark.diningtable, Bookmark.tv])
}


struct DictionaryView: View {
    
    let  items: [Bookmark] = [.Fruits, .Vegetables, .Stationery, .Froniture]
    
    var body: some View {
        

        NavigationView{
            
                 List(items, children:\.items) { row in
                             Text(row.name)
                     
 .navigationBarTitle("Dictionary", displayMode: .automatic)
         }
            
     }
 }
 }
 

        
        
        
        
    

//struct DictionaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        DictionaryView()
//    }
//}
