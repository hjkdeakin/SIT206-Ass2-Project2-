//  MapKitViewController.swift

// Import Required Modules
import UIKit
import MapKit
import CoreLocation

// Declare class that inherits from UIViewController, MKMapViewDelegate, CLLocationManagerDelegate
class MapKitViewController: UIViewController, MKMapViewDelegate,CLLocationManagerDelegate{

    // Properties
    @IBOutlet weak var map: MKMapView!
    let manager = CLLocationManager()
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span = MKCoordinateSpanMake(0.03, 0.03)
        let myLocation = CLLocationCoordinate2DMake(location.coordinate.latitude,location.coordinate.longitude)
        let regiion = MKCoordinateRegionMake(myLocation, span)
        map.setRegion(regiion, animated: true)
        
    }

    override func viewDidLoad() {
        // This method get called when the view shows up on the screen
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        
        // Below are adding all the different test centres including cordinates, address and "pin's".
        // These are hard coded, but could be placed in CoreData instead. See "My Certifications" feature for example on how we used CoreData.
 
        // Sydney pins
        let location2 = CLLocationCoordinate2DMake(-33.870978, 151.205911)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin2 = pinAnnotation(title: "New Horizons Learning Centre", subtitle: "Level 6, 31 Market Street, Sydney, New South Wales 2000, Australia", coordiante: location2)
        map.addAnnotation(pin2)
        
        let location3 = CLLocationCoordinate2DMake(-33.873178, 151.207828)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin3 = pinAnnotation(title: "Parkus Technologies ", subtitle: "Level 1, 303 Pitt Street,sydney,New South Wales 2000,Australia", coordiante: location3)
        map.addAnnotation(pin3)
        
        let location4 = CLLocationCoordinate2DMake(-33.873703, 151.207688)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin4 = pinAnnotation(title: "ITIC PTY LTD", subtitle: "Suite 1,Level 4 491 Kent Street, Sydney, New South Wales 2000 ,Australia", coordiante: location4)
        map.addAnnotation(pin4)
        
        let location5 = CLLocationCoordinate2DMake(-33.873493, 151.205122)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin5 = pinAnnotation(title: "IT Route Training and Certification", subtitle: "Suite 1,Level 4,491 Kent Street Sydney, New South Wales 2000 Australia ", coordiante: location5)
        map.addAnnotation(pin5)
        
        let location6 = CLLocationCoordinate2DMake(-33.880738, 151.205616)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin6 = pinAnnotation(title: "Abbey College Australia", subtitle: "Level 2 770 George St Sydney, New South Wales 2000 Australia ", coordiante: location6)
        map.addAnnotation(pin6)
        
        let location7 = CLLocationCoordinate2DMake(-33.886033, 151.209061)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location2, 10000000, 10000000), animated: true)
        let pin7 = pinAnnotation(title: "LogiTrain", subtitle: "Suite 1A7, Level A  410 Elizabeth Street  Surry Hills   Sydney, New South Wales 2010  Australia ", coordiante: location7)
        map.addAnnotation(pin7)
        
        // Tasmania pin
        let location = CLLocationCoordinate2DMake(-42.883071, 147.327590)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin = pinAnnotation(title: "The Quill Consultancy Pty Ltd", subtitle: "Level 11, 39 Murray Street, Hobart, Tasmania 7000, Australia", coordiante: location)
        map.addAnnotation(pin)
        
        
        // Perth pins
        let location8 = CLLocationCoordinate2DMake(-31.952548, 115.860956)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin8 = pinAnnotation(title: "Australian Institute of Commerce and Technology", subtitle: "Office 205, Level 2, City Central 166 Murray Street Perth, Western Australia 6000            Australia ", coordiante: location8)
        map.addAnnotation(pin8)
        
        let location9 = CLLocationCoordinate2DMake(-31.955318, 115.862543)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin9 = pinAnnotation(title: "DDLS Perth", subtitle: "Level 7, 553 Hay Street Perth, Western Australia 6000 Australia ", coordiante: location9)
        map.addAnnotation(pin9)
        
        let location10 = CLLocationCoordinate2DMake(-31.952572, 115.853544)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin10 = pinAnnotation(title: "ATI- Mirage", subtitle: "Level 1, oisters,863, Hay Street Perth, Western Australia 6000 Australia ", coordiante: location10)
        map.addAnnotation(pin10)
        
        
        // Melbourne pins
        let location11 = CLLocationCoordinate2DMake(-37.870032, 144.834729)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin11 = pinAnnotation(title: "Advanced Training", subtitle: "Level 3, 85 Queen Street, Melbourne Victoria, Victoria 3000 Australia", coordiante: location11)
        map.addAnnotation(pin11)
        
        
        let location12 = CLLocationCoordinate2DMake(-37.818130, 144.961833)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin12 = pinAnnotation(title: "New Horizons Learning Centre - Melbourne", subtitle: "Level 2, 31 Queens Street, Melbourne, Victoria 3000 Australia ", coordiante: location12)
        map.addAnnotation(pin12)
        
        
        let location13 = CLLocationCoordinate2DMake(-37.809003, 144.963486)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin13 = pinAnnotation(title: "Pearson Professional Centers-Melbourne", subtitle: "Level 4,  300 La Trobe Street, Melbourne, Victoria 3000 Australia  ", coordiante: location13)
        map.addAnnotation(pin13)
        
        
        let location14 = CLLocationCoordinate2DMake(-37.812716, 144.957066)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin14 = pinAnnotation(title: "LogiTrain", subtitle: "Level 6  271 William Street, Melbourne, Victoria 3000  Australia ", coordiante: location14)
        map.addAnnotation(pin14)
        
        
        let location15 = CLLocationCoordinate2DMake(-37.825360, 144.953883)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin15 = pinAnnotation(title: "CiscoLive Melbourne 2017 - Conf Attendees Only", subtitle: "Melbourne Convention Centre  1 Convention Centre Pl  South Wharf 3006  Australia ", coordiante: location15)
        map.addAnnotation(pin15)
        
        
        let location16 = CLLocationCoordinate2DMake(-37.829882, 144.970541)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin16 = pinAnnotation(title: "Computer Power Institute", subtitle: "332 St. Kilda Road, 6th Floor,Southbank , Melbourne Victoria 3006 Australia ", coordiante: location16)
        map.addAnnotation(pin16)
        
        
        
        let location17 = CLLocationCoordinate2DMake(-37.836944, 144.975330)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin17 = pinAnnotation(title: "ITfutures", subtitle: "424 St Kilda Road  Ground Floor / Suite 4 Melbourne, Victoria 3004  Australia ", coordiante: location17)
        map.addAnnotation(pin17)
        
        
        let location18 = CLLocationCoordinate2DMake(-37.818677, 145.003350)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin18 = pinAnnotation(title: "NATIONAL AUSTRALIAN INSTITUTE OF TECHNOLOGY", subtitle: "373-375 Bridge Road,Richmond  Melbourne, Victoria 3121 Australia ", coordiante: location18)
        map.addAnnotation(pin18)
        
        
        let location19 = CLLocationCoordinate2DMake(-37.722675, 144.890058)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin19 = pinAnnotation(title: "Aviation Training Services Victoria", subtitle: "15 Hawker Street Airport West, Victoria 3042  Australia ", coordiante: location19)
        map.addAnnotation(pin19)
        
        
        let location20 = CLLocationCoordinate2DMake(-37.815574, 145.115581)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin20 = pinAnnotation(title: "Box Hill Institute", subtitle: "Centre for ICT            Nelson Campus - First Floor  Cnr Nelson Rd & Whitehorse Rd  Box Hill, Victoria 3128         Australia ", coordiante: location20)
        map.addAnnotation(pin20)
        
        
   
        // Canberra pins
        
        let location21 = CLLocationCoordinate2DMake(-35.285992, 149.138041)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin21 = pinAnnotation(title: "Canberra Institute of Technology", subtitle: "Library, lock E Ground Floor 37 Constitution Avenue Reid  Canberra, Australian Capital Territory 2601            Australia ", coordiante: location21)
        map.addAnnotation(pin21)
        
        let location22 = CLLocationCoordinate2DMake(-35.282433, 149.133021)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin22 = pinAnnotation(title: "DDLS Canberra", subtitle: "Level 10 221 London Circuit  Canberra, Australian Capital Territory 2600   Australia ", coordiante: location22)
        map.addAnnotation(pin22)
        
        let location23 = CLLocationCoordinate2DMake(-35.351910, 149.151034)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin23 = pinAnnotation(title: "4Data", subtitle: "138 Narrabundah Lane Symonston, Australian Capital Territory 2609   Australia ", coordiante: location23)
        map.addAnnotation(pin23)
        
        
        // Adelaide pins
        let location24 = CLLocationCoordinate2DMake(-34.932246, 138.600338)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin24 = pinAnnotation(title: "Logitrain Adelaide", subtitle: "Level 2, 341 King William Street Adelaide, South Australia 5000 Australia ", coordiante: location24)
        map.addAnnotation(pin24)
        
        let location25 = CLLocationCoordinate2DMake(-34.923281, 138.597232)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin25 = pinAnnotation(title: "Academy IT Pty Ltd", subtitle: "Harmer house - Level 2,            5 Leigh Street, Adelaide, South Australia 5000  Australia ", coordiante: location25)
        map.addAnnotation(pin25)
        
        let location26 = CLLocationCoordinate2DMake(-34.926167, 138.608181)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin26 = pinAnnotation(title: "DDLS Adelaide", subtitle: "Level 4, 139 Frome Street            Adelaide, South Australia 5000 Australia ", coordiante: location26)
        map.addAnnotation(pin26)
        
        
        // Brisbine pins
        let location27 = CLLocationCoordinate2DMake(-27.466308, 153.029240)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin27 = pinAnnotation(title: "New Horizons Learning Centre - Brisbane", subtitle: "Level 1  344 Queen Street  Brisbane, Queensland 4000  Australia ", coordiante: location27)
        map.addAnnotation(pin27)
        
        let location28 = CLLocationCoordinate2DMake(-27.463445, 153.025616)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin28 = pinAnnotation(title: "Logitrain_Brisbane", subtitle: "Suite 2.1, 447 Upper Edward Street  Spring Hill, Queensland 4000 Australia ", coordiante: location28)
        map.addAnnotation(pin28)
        
        let location29 = CLLocationCoordinate2DMake(-27.465279, 153.029298)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin29 = pinAnnotation(title: "Saxons Training Facilities - Brisbane", subtitle: "Level 11, 300 Adelaide Street  Brisbane, Queensland 4000 Australia ", coordiante: location29)
        map.addAnnotation(pin29)
        
        let location30 = CLLocationCoordinate2DMake(-27.462787, 153.027550)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin30 = pinAnnotation(title: "WARDY IT Solutions Pty Ltd", subtitle: "Level 1, 164 Wharf Street Spring Hill Brisbane, Queensland 4000  Australia ", coordiante: location30)
        map.addAnnotation(pin30)
        
        let location31 = CLLocationCoordinate2DMake(-27.473667, 153.013544)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin31 = pinAnnotation(title: "Dialog Information Technology", subtitle: "Level 7, 35 Boundary Street            South Brisbane  Queensland  South Brisbane, Queensland 4101 Australia ", coordiante: location31)
        map.addAnnotation(pin31)
        
        let location32 = CLLocationCoordinate2DMake(-27.317035, 153.007127)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin32 = pinAnnotation(title: "St Pauls School", subtitle: "34 Strathpine Road Bald Hills Brisbane, Queensland 4036  Australia ", coordiante: location32)
        map.addAnnotation(pin32)
        
        
        // Darwin pins
        
        let location33 = CLLocationCoordinate2DMake(-12.429099, 130.884052)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin33 = pinAnnotation(title: "Territory Technology Solutions", subtitle: "8 Albatross Street, Winnellie Darwin, Northern Territory 0821 Australia ", coordiante: location33)
        map.addAnnotation(pin33)
        
        let location34 = CLLocationCoordinate2DMake(-12.429070, 130.882397)
        map.setRegion(MKCoordinateRegionMakeWithDistance(location, 10000000, 10000000), animated: true)
        let pin34 = pinAnnotation(title: "Area 9 IT Solutions", subtitle: "20 Catterthun St.innellie Darwin, Northern Territory 0820  Australia ", coordiante: location34)
        map.addAnnotation(pin34)


    }
}

