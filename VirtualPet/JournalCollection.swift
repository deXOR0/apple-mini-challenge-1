import Foundation

class JournalCollection {
    var journals: [Date:[Journal]]
    
    init(){
        journals = [Date:[Journal]]()
    }
    
    func addJournal(todaysDate: Date,journal : Journal){

        let date = Calendar.current.startOfDay(for: todaysDate)
        var existingItems = journals[date] as? [Journal] ?? [Journal]()
        existingItems.append(journal)
        journals[date] = existingItems

    }
    
}
