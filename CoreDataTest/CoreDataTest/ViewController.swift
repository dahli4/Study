import UIKit
import CoreData

class ViewController: UIViewController {
    var persistentContainer: NSPersistentContainer? {
        (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        deleteData()
        getData()
    }
    // Create
    func saveData(){
        guard let context = self.persistentContainer?.viewContext else { return }
        
        let newCar = Car(context: context)
        
        newCar.id = UUID()
        newCar.name = "benz"
        
        try? context.save()
    }
    // Read
    func getData(){
        guard let context = self.persistentContainer?.viewContext else { return }
        
        let request = Car.fetchRequest()
        let cars = try? context.fetch(request)
        
        print(cars)
    }
    // Update
    func updateData(){
        guard let context = self.persistentContainer?.viewContext else { return }
        
        let request = Car.fetchRequest()
        guard let cars = try? context.fetch(request) else { return }
        
        let filteredCars = cars.filter{ $0.name == "benz"}
        
        for car in filteredCars{
            car.name = "tesla"
        }
        try? context.save()
    }
    // Delete
    func deleteData(){
        guard let context = self.persistentContainer?.viewContext else { return }
        
        let request = Car.fetchRequest()
        guard let cars = try? context.fetch(request) else { return }
        
        let filteredCars = cars.filter{ $0.name == "tesla"}
        
        for car in filteredCars{
            context.delete(car)
        }
        
        try? context.save()

        
    }

}

