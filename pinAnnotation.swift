//  pinAnnotation.swift

// Import Required Module
import MapKit

// Declare class which inherits from NSObject and MKAnnotation
class pinAnnotation: NSObject,MKAnnotation {
    // Attributes
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    // Constructor (used when object is created)x
    init(title : String, subtitle : String, coordiante : CLLocationCoordinate2D)
    {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordiante
    }
}
