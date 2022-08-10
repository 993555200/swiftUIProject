//
//  HomeScreen.swift
//  swiftUIProject
//
//  Created by Habibulloh on 10/08/22.
//

import SwiftUI

extension UIScreen{
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct HomeScreen: View {
    var columns:[GridItem] = Array(repeating:.init(.fixed(UIScreen.width/2)), count: 2)
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,spacing: 10){
                ForEach((0...14), id:\.self){ index in
                    //VStack{
                        Image("tommy")
                        Text("Title\(index)")
                    //}.frame(width:UIScreen.width/2,height: UIScreen.width/2)
                    
                }
            }
        }
            

        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
