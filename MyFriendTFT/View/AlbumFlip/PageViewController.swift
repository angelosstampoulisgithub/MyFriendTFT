//
//  PageViewController.swift
//  Roula Polumenidou
//
//  Created by Angelos Staboulis on 9/12/25.
//

import UIKit

class PageContentViewController: UIViewController {
    var imageView = UIImageView()
    var image: UIImage?
    var pageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = image
    }
}
class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    let images: [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!,
        UIImage(named: "7")!,
        UIImage(named: "8")!,
        UIImage(named: "9")!,
        UIImage(named: "10")!,
        UIImage(named: "11")!,
        UIImage(named: "12")!,
        UIImage(named: "13")!,
        UIImage(named: "14")!,
        UIImage(named: "15")!,
        UIImage(named: "16")!,
        UIImage(named: "17")!,
        UIImage(named: "18")!,
        UIImage(named: "19")!,
        UIImage(named: "20")!,
        UIImage(named: "21")!,
        UIImage(named: "22")!,
        UIImage(named: "23")!,
        UIImage(named: "24")!,
        UIImage(named: "25")!,
        UIImage(named: "26")!,
        UIImage(named: "27")!,
        UIImage(named: "28")!,
        UIImage(named: "29")!,
        UIImage(named: "30")!,
        UIImage(named: "31")!,
        UIImage(named: "32")!,
        UIImage(named: "33")!,
        UIImage(named: "34")!,
        UIImage(named: "35")!,
        UIImage(named: "36")!,
        UIImage(named: "37")!,
        UIImage(named: "38")!,
        UIImage(named: "39")!,
        UIImage(named: "40")!,
        UIImage(named: "41")!,
        UIImage(named: "42")!,
        UIImage(named: "43")!,
        UIImage(named: "44")!,
        UIImage(named: "45")!,
        UIImage(named: "46")!,
        UIImage(named: "47")!,
        UIImage(named: "48")!,
        UIImage(named: "49")!,
        UIImage(named: "50")!,
        UIImage(named: "51")!,
        UIImage(named: "52")!,
        UIImage(named: "53")!,
        UIImage(named: "54")!,
        UIImage(named: "55")!,
        UIImage(named: "56")!,
        UIImage(named: "57")!,
        UIImage(named: "58")!,
        UIImage(named: "59")!,
        UIImage(named: "60")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        let firstVC = viewControllerAt(index: 0)
        setViewControllers([firstVC], direction: .forward, animated: true)
    }
    
    func viewControllerAt(index: Int) -> PageContentViewController {
        let vc = PageContentViewController()
        vc.image = images[index]
        vc.pageIndex = index
        return vc
    }
    
    // MARK: - AFTER
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vc = viewController as? PageContentViewController else { return nil }
        let index = vc.pageIndex
        
        if index >= images.count - 1 {
               return viewControllerAt(index: 0)
        }
        
        return viewControllerAt(index: index + 1)
    }
    
    // MARK: - BEFORE
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vc = viewController as? PageContentViewController else { return nil }
        let index = vc.pageIndex
        
        if index <= 0 {
                return viewControllerAt(index: images.count - 1)
        }
        
        return viewControllerAt(index: index - 1)
    }
}
