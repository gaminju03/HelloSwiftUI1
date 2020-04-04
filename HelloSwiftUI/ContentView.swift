//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Juan on 04/04/20.
//  Copyright © 2020 usuario. All rights reserved.
//

import SwiftUI


struct ContentView: View {
   
    let students = ["John","Doe","Alice"]
    @State private var selectStudent = 0
    var body: some View {
        NavigationView{
            Form{
                Picker("Select your student", selection: $selectStudent){
                    ForEach(0 ..< students.count){
                        Text(self.students[$0])
                    }
                }
                Text("You chose: Student #\(students[selectStudent])")
            }
        }
      
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
