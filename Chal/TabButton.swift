import SwiftUI


struct TabButton: View {
    
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
                .frame(width: 36, height: 32)
                .foregroundColor(selected == title ? Color("Color_camera_on") : Color("Color_buttontab_off"))
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
