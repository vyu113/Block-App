//
//  ViewController.swift
//  Block
//
//  Created by Preethi Prabhu on 5/24/19.
//  Copyright © 2019 Preethi Prabhu. All rights reserved.
//

import UIKit
import ARCL
import CoreLocation
import SceneKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    var sceneLocationView = SceneLocationView()
    
    // a&ab Popup
    @IBOutlet weak var popupA_AB: UIImageView!
    
    // al Popup
    @IBOutlet weak var popupAL: UIImageView!
    
    // bbb Popup
    @IBOutlet weak var popupBBB: UIImageView!
    
    // burs Popup
    @IBOutlet weak var popupBURS: UIImageView!
    
    // chrys Popup
    @IBOutlet weak var popupCHRYS: UIImageView!
    
    // cool Popup
    @IBOutlet weak var popupCOOL: UIImageView!
    
    // csrb Popup
    @IBOutlet weak var popupCSRB: UIImageView!
    
    // dude Popup
    @IBOutlet weak var popupDUDE: UIImageView!
    
    // dow Popup
    @IBOutlet weak var popupDOW: UIImageView!
    
    // eecs Popup
    @IBOutlet weak var popupEECS: UIImageView!
    
    // erb1 Popup
    @IBOutlet weak var popupERB1: UIImageView!
    
    // erb2 Popup
    @IBOutlet weak var popupERB2: UIImageView!
    
    // ewre Popup
    @IBOutlet weak var popupEWRE: UIImageView!
    
    // ford_lib Popup
    @IBOutlet weak var popupFORD_LIB: UIImageView!
    
    // fxb Popup
    @IBOutlet weak var popupFXB: UIImageView!
    
    // gfl Popup
    @IBOutlet weak var popupGFL: UIImageView!
    
    // ggbl Popup
    @IBOutlet weak var popupGGBL: UIImageView!
    
    // ioe Popup
    @IBOutlet weak var popupIOE: UIImageView!
    
    // lbme Popup
    @IBOutlet weak var popupLBME: UIImageView!
    
    // lec Popup
    @IBOutlet weak var popupLEC: UIImageView!
    
    // name Popup
    @IBOutlet weak var popupNAME: UIImageView!
    
    // ncrb Popup
    @IBOutlet weak var popupNCRB: UIImageView!
    
    // ncrc Popup
    @IBOutlet weak var popupNCRC: UIImageView!
    
    // phoenixlab Popup
    @IBOutlet weak var popupPHOENIXLAB: UIImageView!
    
    // pier Popup
    @IBOutlet weak var popupPIER: UIImageView!
    
    // sm Popup
    @IBOutlet weak var popupSM: UIImageView!
    
    // stamps Popup
    @IBOutlet weak var popupSTAMPS: UIImageView!
    
    // strns Popup
    @IBOutlet weak var popupSTRNS: UIImageView!
    
    // wdc Popup
    @IBOutlet weak var popupWDC: UIImageView!
    
    
    // Close all popups with the close button
    @IBOutlet weak var close: UIButton!
    @IBAction func close(_ sender: UIButton) {
        popupA_AB.isHidden = true
        popupAL.isHidden = true
        popupBBB.isHidden = true
        popupBURS.isHidden = true
        popupCHRYS.isHidden = true
        popupCOOL.isHidden = true
        popupCSRB.isHidden = true
        popupDUDE.isHidden = true
        popupDOW.isHidden = true
        popupEECS.isHidden = true
        popupERB1.isHidden = true
        popupERB2.isHidden = true
        popupEWRE.isHidden = true
        popupFORD_LIB.isHidden = true
        popupFXB.isHidden = true
        popupGFL.isHidden = true
        popupGGBL.isHidden = true
        popupIOE.isHidden = true
        popupLBME.isHidden = true
        popupLEC.isHidden = true
        popupNAME.isHidden = true
        popupNCRB.isHidden = true
        popupNCRC.isHidden = true
        popupPHOENIXLAB.isHidden = true
        popupPIER.isHidden = true
        popupSM.isHidden = true
        popupSTAMPS.isHidden = true
        popupSTRNS.isHidden = true
        popupWDC.isHidden = true
        close.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        guard let currentLocation: CLLocation = locationManager.location else { return }
        let maxDistance: CLLocationDistance = 200
        
        
        // Art & Architecture Building BUNDLE
        let locationNoAltA_AB: CLLocation = CLLocation(latitude: 42.290002, longitude: -83.717690)
        let distanceInMetersA_AB: CLLocationDistance = currentLocation.distance(from: locationNoAltA_AB)
        
        if distanceInMetersA_AB < maxDistance {
            // Art & Architecture Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290002, longitude: -83.717690), altitude: 275)
            //let imageA_AB = UIImage(named: "redA&AB")!
            let imageA_AB = UIImage(named: "giantA&AB")!
            let annotationNodeA_AB = LocationAnnotationNode(location: location, image: imageA_AB)
            annotationNodeA_AB.annotationNode.name = "Art & Architecture Building"
            annotationNodeA_AB.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNodeA_AB)
        }
        
        
        // Walter E. Lay Automotive Lab BUNDLE
        let locationNoAltAL: CLLocation = CLLocation(latitude: 42.291852, longitude: -83.714646)
        let distanceInMetersAL: CLLocationDistance = currentLocation.distance(from: locationNoAltAL)
        
        if distanceInMetersAL < maxDistance {
            // Walter E. Lay Automotive Lab
            let location  = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.291852, longitude: -83.714646), altitude: 265)
            //let imageAL = UIImage(named: "redAL")!
            let imageAL = UIImage(named: "giantAL")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageAL)
            annotationNode.annotationNode.name = "Walter E. Lay Automotive Lab"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Bob and Betty Beyster Building BUNDLE
        let locationNoAltBBB: CLLocation = CLLocation(latitude: 42.292776, longitude: -83.716279)
        let distanceInMetersBBB: CLLocationDistance = currentLocation.distance(from: locationNoAltBBB)
        
        if distanceInMetersBBB < maxDistance {
            // Bob and Betty Beyster Building
            let location  = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.292776, longitude: -83.716279), altitude: 275)
            //let imageBBB = UIImage(named: "redBBB")!
            let imageBBB = UIImage(named: "giantBBB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageBBB)
            annotationNode.annotationNode.name = "Bob and Betty Beyster Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Bursley Hall BUNDLE
        let locationNoAltBURS: CLLocation = CLLocation(latitude: 42.293719, longitude: -83.720963)
        let distanceInMetersBURS: CLLocationDistance = currentLocation.distance(from: locationNoAltBURS)
        
        if distanceInMetersBURS < maxDistance {
            // Bursley Hall
            let location  = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.293719, longitude: -83.720963), altitude: 275)
            //let imageBURS = UIImage(named: "redBURS")!
            let imageBURS = UIImage(named: "giantBURS")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageBURS)
            annotationNode.annotationNode.name = "Bursley Hall"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Chrysler Center BUNDLE
        let locationNoAltCHRYS: CLLocation = CLLocation(latitude: 42.290919, longitude: -83.716768)
        let distanceInMetersCHRYS: CLLocationDistance = currentLocation.distance(from: locationNoAltCHRYS)
        
        if distanceInMetersCHRYS < maxDistance {
            // Chrysler Center
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290919, longitude: -83.716768), altitude: 275)
            //let imageCHRYS = UIImage(named: "redCHRYS")!
            let imageCHRYS = UIImage(named: "giantCHRYS")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageCHRYS)
            annotationNode.annotationNode.name = "Chrysler Center"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Cooley Building BUNDLE
        let locationNoAltCOOL: CLLocation = CLLocation(latitude: 42.290772, longitude: -83.713628)
        let distanceInMetersCOOL: CLLocationDistance = currentLocation.distance(from: locationNoAltCOOL)
        
        if distanceInMetersCOOL < maxDistance {
            // Cooley Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290772, longitude: -83.713628), altitude: 275)
            //let imageCOOL = UIImage(named: "redCOOL")!
            let imageCOOL = UIImage(named: "giantCOOL")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageCOOL)
            annotationNode.annotationNode.name = "Cooley Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Climate and Space Research Building BUNDLE
        let locationNoAltCSRB: CLLocation = CLLocation(latitude: 42.294387, longitude: -83.711488)
        let distanceInMetersCSRB: CLLocationDistance = currentLocation.distance(from: locationNoAltCSRB)
        
        if distanceInMetersCSRB < maxDistance {
            // Climate and Space Research Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.294387, longitude: -83.711488), altitude: 275)
            //let imageCSRB = UIImage(named: "redCSRB")!
            let imageCSRB = UIImage(named: "giantCSRB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageCSRB)
            annotationNode.annotationNode.name = "Climate and Space Research Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Duderstadt Center BUNDLE
        let locationNoAltDUDE: CLLocation = CLLocation(latitude: 42.291343, longitude: -83.715695)
        let distanceInMetersDUDE: CLLocationDistance = currentLocation.distance(from: locationNoAltDUDE)
        
        if distanceInMetersDUDE < maxDistance {
            // Duderstadt Center
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.291343, longitude: -83.715695), altitude: 275)
            //let imageDUDE = UIImage(named: "redDUDE")!
            let imageDUDE = UIImage(named: "giantDUDE")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageDUDE)
            annotationNode.annotationNode.name = "Duderstadt Center"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Dow Engineering Building BUNDLE
        let locationNoAltDOW: CLLocation = CLLocation(latitude: 42.292733, longitude: -83.715635)
        let distanceInMetersDOW: CLLocationDistance = currentLocation.distance(from: locationNoAltDOW)
        
        if distanceInMetersDOW < maxDistance {
            // Dow Engineering Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.292733, longitude: -83.715635), altitude: 275)
            //let imageDOW = UIImage(named: "redDOW")!
            let imageDOW = UIImage(named: "giantDOW")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageDOW)
            annotationNode.annotationNode.name = "Dow Engineering Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Electrical Engineering and Computer Science Building BUNDLE
        let locationNoAltEECS: CLLocation = CLLocation(latitude: 42.292510, longitude: -83.714823)
        let distanceInMetersEECS: CLLocationDistance = currentLocation.distance(from: locationNoAltEECS)
        
        if distanceInMetersEECS < maxDistance {
            // Electrical Engineering and Computer Science Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.292510, longitude: -83.714823), altitude: 275)
            //let imageEECS = UIImage(named: "redEECS")!
            let imageEECS = UIImage(named: "giantEECS")!
            let annotationNodeEECS = LocationAnnotationNode(location: location, image: imageEECS)
            annotationNodeEECS.annotationNode.name = "Electrical Engineering and Computer Science Building"
            annotationNodeEECS.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNodeEECS)
        }
        
        
        // Engineering Research Building 1 BUNDLE
        let locationNoAltERB1: CLLocation = CLLocation(latitude: 42.289511, longitude: -83.714875)
        let distanceInMetersERB1: CLLocationDistance = currentLocation.distance(from: locationNoAltERB1)
        
        if distanceInMetersERB1 < maxDistance {
            // Engineering Research Building 1
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.289511, longitude: -83.714875), altitude: 275)
            //let imageERB1 = UIImage(named: "redERB1")!
            let imageERB1 = UIImage(named: "giantERB1")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageERB1)
            annotationNode.annotationNode.name = "Engineering Research Building 1"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Engineering Research Building 2 BUNDLE
        let locationNoAltERB2: CLLocation = CLLocation(latitude: 42.289585, longitude: -83.715302)
        let distanceInMetersERB2: CLLocationDistance = currentLocation.distance(from: locationNoAltERB2)
        
        if distanceInMetersERB2 < maxDistance {
            // Engineering Research Building 2
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.289585, longitude: -83.715302), altitude: 275)
            //let imageERB2 = UIImage(named: "redERB2")!
            let imageERB2 = UIImage(named: "giantERB2")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageERB2)
            annotationNode.annotationNode.name = "Engineering Research Building 2"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Environmental & Water Resources Engineering Building BUNDLE
        let locationNoAltEWRE: CLLocation = CLLocation(latitude: 42.292794, longitude: -83.713364)
        let distanceInMetersEWRE: CLLocationDistance = currentLocation.distance(from: locationNoAltEWRE)
        
        if distanceInMetersEWRE < maxDistance {
            // Environmental & Water Resources Engineering Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.292794, longitude: -83.713364), altitude: 275)
            //let imageEWRE = UIImage(named: "redEWRE")!
            let imageEWRE = UIImage(named: "giantEWRE")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageEWRE)
            annotationNode.annotationNode.name = "Environmental & Water Resources Engineering Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }

        
        // Ford Library BUNDLE
        let locationNoAltFORD_LIB: CLLocation = CLLocation(latitude: 42.288692, longitude: -83.712272)
        let distanceInMetersFORD_LIB: CLLocationDistance = currentLocation.distance(from: locationNoAltFORD_LIB)
        
        if distanceInMetersFORD_LIB < maxDistance {
            // Ford Library
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.288692, longitude: -83.712272), altitude: 275)
            //let imageFORD_LIB = UIImage(named: "redFORD_LIB")!
            let imageFORD_LIB = UIImage(named: "giantFORD_LIB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageFORD_LIB)
            annotationNode.annotationNode.name = "Ford Library"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Francois-Xavier Bagnoud Building BUNDLE
        let locationNoAltFXB: CLLocation = CLLocation(latitude: 42.293462, longitude: -83.712047)
        let distanceInMetersFXB: CLLocationDistance = currentLocation.distance(from: locationNoAltFXB)
        
        if distanceInMetersFXB < maxDistance {
            // Francois-Xavier Bagnoud Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.293462, longitude: -83.712047), altitude: 275)
            //let imageFXB = UIImage(named: "redFXB")!
            let imageFXB = UIImage(named: "giantFXB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageFXB)
            annotationNode.annotationNode.name = "Francois-Xavier Bagnoud Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Gorguze Family Laboratory BUNDLE
        let locationNoAltGFL: CLLocation = CLLocation(latitude: 42.293336, longitude: -83.710822)
        let distanceInMetersGFL: CLLocationDistance = currentLocation.distance(from: locationNoAltGFL)
        
        if distanceInMetersGFL < maxDistance {
            // Gorguze Family Laboratory
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.293336, longitude: -83.710822), altitude: 275)
            //let imageGFL = UIImage(named: "redGFL")!
            let imageGFL = UIImage(named: "giantGFL")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageGFL)
            annotationNode.annotationNode.name = "Gorguze Family Laboratory"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // G.G. Brown Laboratory BUNDLE
        let locationNoAltGGBL: CLLocation = CLLocation(latitude: 42.293176, longitude: -83.714751)
        let distanceInMetersGGBL: CLLocationDistance = currentLocation.distance(from: locationNoAltGGBL)
        
        if distanceInMetersGGBL < maxDistance {
            // G.G. Brown Laboratory
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.293176, longitude: -83.714751), altitude: 300)
            //let imageGGBL = UIImage(named: "redGGBL")!
            let imageGGBL = UIImage(named: "giantGGBL")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageGGBL)
            annotationNode.annotationNode.name = "G.G. Brown Laboratory"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Industrial and Operations Engineering Building BUNDLE
        let locationNoAltIOE: CLLocation = CLLocation(latitude: 42.290951, longitude: -83.713739)
        let distanceInMetersIOE: CLLocationDistance = currentLocation.distance(from: locationNoAltIOE)
        
        if distanceInMetersIOE < maxDistance {
            // Industrial and Operations Engineering Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290951, longitude: -83.713739), altitude: 275)
            //let imageIOE = UIImage(named: "redIOE")!
            let imageIOE = UIImage(named: "giantIOE")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageIOE)
            annotationNode.annotationNode.name = "Industrial and Operations Engineering Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Lurie Biomedical Engineering Building BUNDLE
        let locationNoAltLBME: CLLocation = CLLocation(latitude: 42.289114, longitude: -83.713435)
        let distanceInMetersLBME: CLLocationDistance = currentLocation.distance(from: locationNoAltLBME)
        
        if distanceInMetersLBME < maxDistance {
            // Lurie Biomedical Engineering Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.289114, longitude: -83.713435), altitude: 275)
            //let imageLBME = UIImage(named: "redLBME")!
            let imageLBME = UIImage(named: "giantLBME")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageLBME)
            annotationNode.annotationNode.name = "Lurie Biomedical Engineering Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Lurie Engineering Center BUNDLE
        let locationNoAltLEC: CLLocation = CLLocation(latitude: 42.291582, longitude: -83.713837)
        let distanceInMetersLEC: CLLocationDistance = currentLocation.distance(from: locationNoAltLEC)
        
        if distanceInMetersLEC < maxDistance {
            // Lurie Engineering Center
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.291582, longitude: -83.713837), altitude: 275)
            //let imageLEC = UIImage(named: "redLEC")!
            let imageLEC = UIImage(named: "giantLEC")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageLEC)
            annotationNode.annotationNode.name = "Lurie Engineering Center"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Naval Architecture and Marine Engineering Building BUNDLE
        let locationNoAltNAME: CLLocation = CLLocation(latitude: 42.293093, longitude: -83.709444)
        let distanceInMetersNAME: CLLocationDistance = currentLocation.distance(from: locationNoAltNAME)
        
        if distanceInMetersNAME < maxDistance {
            // Naval Architecture and Marine Engineering Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.293093, longitude: -83.709444), altitude: 275)
            //let imageNAME = UIImage(named: "redNAME")!
            let imageNAME = UIImage(named: "giantNAME")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageNAME)
            annotationNode.annotationNode.name = "Naval Architecture and Marine Engineering Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // North Campus Recreating Building BUNDLE
        let locationNoAltNCRB: CLLocation = CLLocation(latitude: 42.295458, longitude: -83.719996)
        let distanceInMetersNCRB: CLLocationDistance = currentLocation.distance(from: locationNoAltNCRB)
        
        if distanceInMetersNCRB < maxDistance {
            // North Campus Recreation Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.295458, longitude: -83.719996), altitude: 275)
            //let imageNCRB = UIImage(named: "redNCRB")!
            let imageNCRB = UIImage(named: "giantNCRB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageNCRB)
            annotationNode.annotationNode.name = "North Campus Recreation Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // North Campus Research Complex BUNDLE
        let locationNoAltNCRC: CLLocation = CLLocation(latitude: 42.299526, longitude: -83.7076300)
        let distanceInMetersNCRC: CLLocationDistance = currentLocation.distance(from: locationNoAltNCRC)
        
        if distanceInMetersNCRC < maxDistance {
            // North Campus Research Complex
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.299526, longitude: -83.7076300), altitude: 275)
            //let imageNCRC = UIImage(named: "redNCRC")!
            let imageNCRC = UIImage(named: "giantNCRC")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageNCRC)
            annotationNode.annotationNode.name = "North Campus Research Complex"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Phoenix Memorial Laboratory BUNDLE
        let locationNoAltPHOENIXLAB: CLLocation = CLLocation(latitude: 42.299526, longitude: -83.7076300)
        let distanceInMetersPHOENIXLAB: CLLocationDistance = currentLocation.distance(from: locationNoAltPHOENIXLAB)
        
        if distanceInMetersPHOENIXLAB < maxDistance {
            // Phoenix Memorial Laboratory
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290996, longitude: -83.714636), altitude: 275)
            //let imagePHOENIXLAB = UIImage(named: "redPHOENIXLAB")!
            let imagePHOENIXLAB = UIImage(named: "giantPHOENIXLAB")!
            let annotationNode = LocationAnnotationNode(location: location, image: imagePHOENIXLAB)
            annotationNode.annotationNode.name = "Phoenix Memorial Laboratory"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Pierpont Commons BUNDLE
        let locationNoAltPIER: CLLocation = CLLocation(latitude: 42.291220, longitude: -83.717630)
        let distanceInMetersPIER: CLLocationDistance = currentLocation.distance(from: locationNoAltPIER)
        
        if distanceInMetersPIER < maxDistance {
            // Pierpont Commons
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.291220, longitude: -83.717630), altitude: 275)
            //let imagePIER = UIImage(named: "redPIER")!
            let imagePIER = UIImage(named: "giantPIER")!
            let annotationNode = LocationAnnotationNode(location: location, image: imagePIER)
            annotationNode.annotationNode.name = "Pierpont Commons"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Earl V. Moore Building, School of Music BUNDLE
        let locationNoAltSM: CLLocation = CLLocation(latitude: 42.290378, longitude: -83.720859)
        let distanceInMetersSM: CLLocationDistance = currentLocation.distance(from: locationNoAltSM)
        
        if distanceInMetersSM < maxDistance {
            // Earl V. Moore Building, School of Music
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.290378, longitude: -83.720859), altitude: 275)
            //let imageSM = UIImage(named: "redSM")!
            let imageSM = UIImage(named: "giantSM")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageSM)
            annotationNode.annotationNode.name = "Earl V. Moore Building, School of Music"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Stamps Auditorium BUNDLE
        let locationNoAltSTAMPS: CLLocation = CLLocation(latitude: 42.2919300, longitude: -83.716891)
        let distanceInMetersSTAMPS: CLLocationDistance = currentLocation.distance(from: locationNoAltSTAMPS)
        
        if distanceInMetersSTAMPS < maxDistance {
            // Stamps Auditorium
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.2919300, longitude: -83.716891), altitude: 275)
            //let imageSTAMPS = UIImage(named: "redSTAMPS")!
            let imageSTAMPS = UIImage(named: "giantSTAMPS")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageSTAMPS)
            annotationNode.annotationNode.name = "Stamps Auditorium"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Stearns Building BUNDLE
        let locationNoAltSTRNS: CLLocation = CLLocation(latitude: 42.295364, longitude: -83.725932)
        let distanceInMetersSTRNS: CLLocationDistance = currentLocation.distance(from: locationNoAltSTRNS)
        
        if distanceInMetersSTRNS < maxDistance {
            // Sterns Building
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.295364, longitude: -83.725932), altitude: 275)
            //let imageSTRNS = UIImage(named: "redSTRNS")!
            let imageSTRNS = UIImage(named: "giantSTRNS")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageSTRNS)
            annotationNode.annotationNode.name = "Stearns Building"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
        
        // Charles R. Walgreen, Jr. Drama Center BUNDLE
        let locationNoAltWDC: CLLocation = CLLocation(latitude: 42.291697, longitude: -83.717926)
        let distanceInMetersWDC: CLLocationDistance = currentLocation.distance(from: locationNoAltWDC)
        
        if distanceInMetersWDC < maxDistance {
            // Charles R. Walgreen, Jr. Drama Center
            let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 42.291697, longitude: -83.717926), altitude: 275)
            //let imageWDC = UIImage(named: "redWDC")!
            let imageWDC = UIImage(named: "giantWDC")!
            let annotationNode = LocationAnnotationNode(location: location, image: imageWDC)
            annotationNode.annotationNode.name = "Charles R. Walgreen, Jr. Drama Center"
            annotationNode.scaleRelativeToDistance = true
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sceneLocationView.frame = view.bounds
    }
    
    
    // Touch events on nodes
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: sceneLocationView)
            
            let hitResults = sceneLocationView.hitTest(touchLocation, options: [.boundingBoxOnly : true])
            for result in hitResults {
                
                if result.node.name == "Art & Architecture Building" {
                    view.addSubview(popupA_AB)
                    view.addSubview(close)
                    
                    popupA_AB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Walter E. Lay Automotive Lab" {
                    view.addSubview(popupAL)
                    view.addSubview(close)
                    
                    popupAL.isHidden = false
                    close.isHidden = false
                }
                
                else if result.node.name == "Bob and Betty Beyster Building" {
                    view.addSubview(popupBBB)
                    view.addSubview(close)
                    
                    popupBBB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Bursley Hall" {
                    view.addSubview(popupBURS)
                    view.addSubview(close)
                    
                    popupBURS.isHidden = false
                    close.isHidden = false
                }
                
                else if result.node.name == "Chrysler Center" {
                    view.addSubview(popupCHRYS)
                    view.addSubview(close)
                    
                    popupCHRYS.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Cooley Building" {
                    view.addSubview(popupCOOL)
                    view.addSubview(close)
                    
                    popupCOOL.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Climate and Space Research Building" {
                    view.addSubview(popupCSRB)
                    view.addSubview(close)
                    
                    popupCSRB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Duderstadt Center" {
                    view.addSubview(popupDUDE)
                    view.addSubview(close)
                    
                    popupDUDE.isHidden = false
                    close.isHidden = false
                }
                
                else if result.node.name == "Dow Engineering Building" {
                    view.addSubview(popupDOW)
                    view.addSubview(close)
                    
                    popupDOW.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Electrical Engineering and Computer Science Building" {
                    view.addSubview(popupEECS)
                    view.addSubview(close)
                    
                    popupEECS.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Engineering Research Building 1" {
                    view.addSubview(popupERB1)
                    view.addSubview(close)
                    
                    popupERB1.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Engineering Research Building 2" {
                    view.addSubview(popupERB2)
                    view.addSubview(close)
                    
                    popupERB2.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Environmental & Water Resources Engineering Building" {
                    view.addSubview(popupEWRE)
                    view.addSubview(close)
                    
                    popupEWRE.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Ford Library" {
                    view.addSubview(popupFORD_LIB)
                    view.addSubview(close)
                    
                    popupFORD_LIB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Francois-Xavier Bagnoud Building" {
                    view.addSubview(popupFXB)
                    view.addSubview(close)
                    
                    popupFXB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Gorguze Family Laboratory" {
                    view.addSubview(popupGFL)
                    view.addSubview(close)
                    
                    popupGFL.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "G.G. Brown Laboratory" {
                    view.addSubview(popupGGBL)
                    view.addSubview(close)
                    
                    popupGGBL.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Industrial and Operations Engineering Building" {
                    view.addSubview(popupIOE)
                    view.addSubview(close)
                    
                    popupIOE.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Lurie Biomedical Engineering Building" {
                    view.addSubview(popupLBME)
                    view.addSubview(close)
                    
                    popupLBME.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Lurie Engineering Center" {
                    view.addSubview(popupLEC)
                    view.addSubview(close)
                    
                    popupLEC.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Naval Architecture and Marine Engineering Building" {
                    view.addSubview(popupNAME)
                    view.addSubview(close)
                    
                    popupNAME.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "North Campus Recreation Building" {
                    view.addSubview(popupNCRB)
                    view.addSubview(close)
                    
                    popupNCRB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "North Campus Research Complex" {
                    view.addSubview(popupNCRC)
                    view.addSubview(close)
                    
                    popupNCRC.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Phoenix Memorial Laboratory" {
                    view.addSubview(popupPHOENIXLAB)
                    view.addSubview(close)
                    
                    popupPHOENIXLAB.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Pierpont Commons" {
                    view.addSubview(popupPIER)
                    view.addSubview(close)
                    
                    popupPIER.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Earl V. Moore Building, School of Music" {
                    view.addSubview(popupSM)
                    view.addSubview(close)
                    
                    popupSM.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Stamps Auditorium" {
                    view.addSubview(popupSTAMPS)
                    view.addSubview(close)
                    
                    popupSTAMPS.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Stearns Building" {
                    view.addSubview(popupSTRNS)
                    view.addSubview(close)
                    
                    popupSTRNS.isHidden = false
                    close.isHidden = false
                }
                    
                else if result.node.name == "Charles R. Walgreen, Jr. Drama Center" {
                    view.addSubview(popupWDC)
                    view.addSubview(close)
                    
                    popupWDC.isHidden = false
                    close.isHidden = false
                }
                
                
                //print("HIT:-> Name: \(result.node.description)")
                //print("HIT:-> description  \(result.node.name)")
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


// MARK: - SceneLocationViewDelegate
@available(iOS 11.0, *)
extension ViewController: SceneLocationViewDelegate {
    func sceneLocationViewDidAddSceneLocationEstimate(sceneLocationView: SceneLocationView, position: SCNVector3, location: CLLocation) {
        print("add scene location estimate, position: \(position), location: \(location.coordinate), accuracy: \(location.horizontalAccuracy), date: \(location.timestamp)")
    }
    
    func sceneLocationViewDidRemoveSceneLocationEstimate(sceneLocationView: SceneLocationView, position: SCNVector3, location: CLLocation) {
        print("remove scene location estimate, position: \(position), location: \(location.coordinate), accuracy: \(location.horizontalAccuracy), date: \(location.timestamp)")
    }
    
    func sceneLocationViewDidConfirmLocationOfNode(sceneLocationView: SceneLocationView, node: LocationNode) {
        print("7845768")
    }
    
    func sceneLocationViewDidSetupSceneNode(sceneLocationView: SceneLocationView, sceneNode: SCNNode) {
        print("546456")
    }
    
    func sceneLocationViewDidUpdateLocationAndScaleOfLocationNode(sceneLocationView: SceneLocationView, locationNode: LocationNode) {
    }
}
