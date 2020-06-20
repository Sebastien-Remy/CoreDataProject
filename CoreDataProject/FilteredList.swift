//
//  FiltredList.swift
//  CoreDataProject
//
//  Created by Sebastien REMY on 20/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct FilteredList: View {
    var fetchRequest: FetchRequest<Singer>
    var singers: FetchedResults<Singer> { fetchRequest.wrappedValue }
        
    var body: some View {
        List(singers, id: \.self) { singer in
            Text("\(singer.wrappedFirstName)\(singer.wrappedLastName)")
        }
    }
    init(filter: String) {
        fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}

