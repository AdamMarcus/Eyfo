//
//  ViewController.swift
//  Eyfo
//
//  Created by Adam Austin on 4/1/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import UIKit
import MapKit
import SpriteKit
import CoreLocation

var postsArray = [Post]()

class ViewController: UIViewController, MKMapViewDelegate
{
    let myFilters = Filters()
    
    var currentColorKey = 0
    var myID: Int = 0
    
    var myCircle:MKCircle!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue)
    {
        if segue.identifier == "coolSegue" {
            let source = segue.sourceViewController as! PostsTableViewController
            centeredOn(source.loc)
        }
    }
    
    func centeredOn(_myLoc: CLLocationCoordinate2D)
    {
        let myCordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let viewRegion = MKCoordinateRegionMake(_myLoc, myCordinateSpan)
        mapView.setRegion(viewRegion, animated: false)
    }
    //@IBOutlet weak var filterNavigationBar: UINavigationItem!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.mapView.delegate = self
        mapView.showsUserLocation = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    override func viewDidAppear(animated: Bool) {
//        self.findUser2()
//    }

    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func findUser()
    {
        let userLocation = mapView.userLocation
        
        let myCordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let coordinate = userLocation.location?.coordinate
        let viewRegion = MKCoordinateRegionMake(coordinate!, myCordinateSpan)
        mapView.setRegion(viewRegion, animated: true)
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
    {
        if self.mapView == mapView {
            findUser()
        }
        drawPosts(self.mapView)
    }
    
    func drawPosts(_myView: MKMapView)
    {
        makePostData()
        //print(postsArray.count)
        for i in 0..<postsArray.count
        {
            //print("done")
            let annotation = MKPointAnnotation()
            annotation.coordinate = postsArray[i].center
            annotation.title = postsArray[i].postText
            _myView.addAnnotation(annotation)
        }
        
        print(postsArray.count)
        for i in 0..<postsArray.count
        {
            print("in Loop two")
            let myCircle = MKCircle(centerCoordinate: postsArray[i].center, radius: 804)
            currentColorKey = postsArray[i].categoryKey
            _myView.addOverlay(myCircle)
        }
    }
    
    func mapView(_mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
    {
//        print("in dis")
        let myCircleRender = MKCircleRenderer(overlay: overlay)
        myCircleRender.lineWidth = 10
        myCircleRender.alpha = 0.035
        switch currentColorKey {
        case 0:
            myCircleRender.fillColor = UIColor.blueColor()
        case 1:
            myCircleRender.fillColor = UIColor.orangeColor()
        case 2:
            myCircleRender.fillColor = UIColor.greenColor()
        case 3:
            myCircleRender.fillColor = UIColor.purpleColor()
        default:
            break
        }
        return myCircleRender;
    }
}

func makePostData()
{
    let myMock = MockPosts()
    for i in 0..<myMock.postArray.count
    {
        let currentUser: User = myMock.postArray[i].user
        let myPost = Post(_user: currentUser, _mapItem: myMock.postArray[i].center, _text: myMock.postArray[i].postText, _categoryKey: myMock.postArray[i].categoryKey, _ID: myMock.postArray[i].ID)
        postsArray.append(myPost)
    }
}

func applyFilters(_post: Post)
{
    //var good = true
    /*if (good && myFilters.isActive("Near Me (2.5)") && !nearMe25(_post))
    {
        print(1)
        good = false
    }
    if (good && myFilters.isActive("Near Me (5)") && !nearMe5(_post))
    {
        print(2)
        good = false
    }
    if (good && myFilters.isActive("Near Me (10)") && !nearMe10(_post))
    {
        print(3)
        good = false
    }
    if (good && myFilters.isActive("Friends") && !friends(_post))
    {
        print(4)
        good = false
    }
    if (good && myFilters.isActive("Everyone") && !everyone(_post))
    {
        print(5)
        good = false
    }
    if (good && myFilters.isActive("Music") && !music(_post))
    {
        print(6)
        good = false
    }
    if (good && myFilters.isActive("Sports") && !sports(_post))
    {
        print(7)
        good = false
    }
    if (good && myFilters.isActive("Movies") && !movies(_post))
    {
        print(8)
        good = false
    }
    if (good && myFilters.isActive("Wildlife)") && !wildlife(_post))
    {
        print(9)
        good = false
    }*/
    //if (good)
    //{
//    postsArray.append(_post)
    //}
}
/*
func nearMe25(_post: Post) -> Bool
{
    return true;
}

func nearMe5(_post: Post) -> Bool
{
    return true;
}

func nearMe10(_post: Post) -> Bool
{
    return true;
}

func friends(_post: Post) -> Bool
{
    return true;
}

func everyone(_post: Post) -> Bool
{
    return true;
}

func music(_post: Post) -> Bool
{
    return true;
}

func sports(_post: Post) -> Bool
{
    return true;
}

func movies(_post: Post) -> Bool
{
    return true;
}

func wildlife(_post: Post) -> Bool
{
    return true;
}*/