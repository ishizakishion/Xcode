//
//  ListRowView.swift
//  TodoList_main
//
//  Created by 石崎汐音 on 2024/05/05.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews : PreviewProvider {
    static var item1 = ItemModel(title: "first Item", isCompleted: false)
    static var item2 = ItemModel(title: "second Item", isCompleted: true)
    
    
    static var previews : some View {
        Group{
            ListRowView(item : item1)
            ListRowView(item : item2)
            
        }
        .previewLayout(.sizeThatFits)
    }
    
}
