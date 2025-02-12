//
//  KeyboardView.swift
//  CurrencyConverterCalculator
//
//  Created by Mustafa Ozhan on 06/08/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    var keyPressEvent: (String) -> Void

    let data = [
        [
            KeyboardItem.seven,
            KeyboardItem.eight,
            KeyboardItem.nine,
            KeyboardItem.multiply
        ],
        [
            KeyboardItem.four,
            KeyboardItem.five,
            KeyboardItem.six,
            KeyboardItem.divide
        ],
        [
            KeyboardItem.one,
            KeyboardItem.two,
            KeyboardItem.three,
            KeyboardItem.minus
        ],
        [
            KeyboardItem.dot,
            KeyboardItem.zero,
            KeyboardItem.percentage,
            KeyboardItem.plus
        ],
        [
            KeyboardItem.openParenthesis,
            KeyboardItem.tribleZero,
            KeyboardItem.ac,
            KeyboardItem.del,
            KeyboardItem.closeParenthesis
        ]
    ]
    
    var body: some View {
        
        VStack(alignment: .center) {
            ForEach(data, id: \.self) { items in
                
                HStack(alignment: .center) {
                    ForEach(items, id: \.self) { item in
                        
                        Button(
                            action: { keyPressEvent(item.rawValue)},
                            label: {
                                Text(item.rawValue)
                                    .font(.title2)
                                    .foregroundColor(Color("ColorText"))
                                    .frame(
                                        minWidth: 0,
                                        maxWidth: .infinity,
                                        minHeight: 0,
                                        maxHeight: .infinity
                                    )
                            }
                        )
                        
                    }
                }
                
            }
        }.background(Color("ColorBackgroundStrong"))
    }
}

#if DEBUG
struct KeyboardViewPreviews: PreviewProvider {
    static var previews: some View {
        KeyboardView(keyPressEvent: {_ in })
            .previewLayout(.fixed(width: 300, height: 500))
            .makeForPreviewProvider()
    }
}
#endif
