import UIKit

/*
 This extension of Array allows you to remove an item inside the array.
 It will only remove the first instance it finds.
 */

extension Array where Element: Comparable{
    
    mutating func remove(item: Element) {
        if self.contains(item) {
            guard let index = self.firstIndex(of: item) else { return }
            self.remove(at: index)
        }
    }
}

/* remove(item:) Test */
var randomArray = ["Ted", "Ted", "John", "Phil", "Tony", "Chris"]
randomArray.remove(item: "John")
print(randomArray)
