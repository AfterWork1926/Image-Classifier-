
import SwiftUI


struct TabButton3: View {
    
    var title: String
    var image : String
    var name : String
    @Binding var selected : String
    
    
    var body: some View {


        Button(action: {
            
            withAnimation(.spring()){selected = title}
            
        }) {
            VStack {
            Image(uiImage: UIImage(named: image)!)
                .resizable()
                .renderingMode(.template)
                .frame(width: 33, height: 29)
                .foregroundColor(selected == title ? Color("Color_dictionary_on") : Color("Color_buttontab_off"))
                Text(name)
                    .fontWeight(.bold)
                    .foregroundColor(selected == title ? Color("Color_buttontab_off") : Color("Color_buttontab_off"))
                .font(.system(size: 14, design: .rounded))
                .padding(-8)
                

            }
        }
      
        .padding(.vertical)
        .padding(.horizontal)



        
        
    }
}
