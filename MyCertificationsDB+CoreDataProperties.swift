//  MyCertificationsDB+CoreDataProperties.swift

// Import require modules
import Foundation
import CoreData

// Create Extension
extension MyCertificationsDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyCertificationsDB> {
        return NSFetchRequest<MyCertificationsDB>(entityName: "MyCertificationsDB");
    }

    // Attributes. These must be exactly the same as in the "Database.xcdatamodeld" file
    @NSManaged public var certificationID: String?
    @NSManaged public var certificationName: String?
    @NSManaged public var dateCertified: String?
    @NSManaged public var expiryDate: String?
    @NSManaged public var comment: String?
    @NSManaged public var vendorName: String?
}
