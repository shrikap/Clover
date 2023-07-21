//
//  toDoRedo.swift
//  clover
//
//  Created by Scholar on 7/21/23.
//

import SwiftUI

struct toDoRedo: View {
    @FetchRequest(
      entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    var toDoItems: FetchedResults<ToDo>
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    var body: some View {
        
      ZStack {
          
          Color(hex: "#FFFBF1")
    
        VStack {
          HStack {
            Text("Sustainable ToDo List")
              .font(.system(size: 40))
              .fontWeight(.black)
              .foregroundColor(Color(hex: "#F24E8F"))
            Spacer()
            Button(action: {          self.showNewTask = true
            }) {
              Text("+")
            }
          } //end of hstack
          .padding()
          Spacer()
          List {
            ForEach (toDoItems) { toDoItem in
              if toDoItem.isImportant == true {
                Text("‼️" + (toDoItem.title ?? "No title"))
              } else {
                Text(toDoItem.title ?? "No title")
              } //help me
            }
            .onDelete(perform: deleteTask)
          }
        } //vstack
        if showNewTask {
          NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
        }
      }
     
    }
      private func deleteTask(offsets: IndexSet) {
          withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            do {
              try context.save()
            } catch {
              print(error)
            }
          }
        }
    }

struct toDoRedo_Previews: PreviewProvider {
    static var previews: some View {
        toDoRedo()
    }
}
