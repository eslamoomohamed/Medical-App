//
//  OnBoradingVC.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit

class OnBoradingVC: UIPageViewController {

    
    let vc1          = MAOnBoardingVC()
    let vc2          = MAOnBoardingVC()
    let vc3          = MAOnBoardingVC()
    var arrOfVC      = [MAOnBoardingVC]()
    let pageControl  = MAPageController()
    let nextBtn      = MADefaultBtn(btnTitle: "Next", titleColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), backgroundColor: .clear, raduis: 0)
    let prevBtn      = MADefaultBtn(btnTitle: "Previous", titleColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), backgroundColor: .clear, raduis: 0)
    var currentIndex = 0
    var maxIndex     = 3
    var btnClick     = 0



    override func viewDidLoad() {
        super.viewDidLoad()
        confgureUIElments()
        configurePageControll()
        configureNextBtn()
        configurePrevBtn()
    }
    
    
    init(){ super.init(transitionStyle: .scroll, navigationOrientation: .horizontal) }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    
    func confgureUIElments(){
        dataSource = self
        delegate   = self
        vc1.setView(title: "Find your Doctor", image0: "01 Intro", image1: "01 IntroImage")
        vc2.setView(title: "Storage your Medical Records", image0: "02 Intro", image1: "02 IntroImage")
        vc3.setView(title: "Discuss in the Forum", image0: "03 Intro", image1: "03 IntroImage")
        arrOfVC.append(vc1)
        arrOfVC.append(vc2)
        arrOfVC.append(vc3)
        if let firstVC = arrOfVC.first{ setViewControllers([firstVC], direction: .forward, animated: true, completion: nil) }
    }
    
    
    
    func configurePageControll(){
        view.addSubview(pageControl)
        pageControl.numberOfPages = arrOfVC.count
        pageControl.currentPage   = 0
        pageControl.addTarget(self, action: #selector(pageControlTapped(_:)), for: .valueChanged)
        NSLayoutConstraint.activate([
            pageControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            pageControl.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    @objc func pageControlTapped(_ sender: UIPageControl) {
        setViewControllers([arrOfVC[sender.currentPage]], direction: .forward, animated: true, completion: nil)
    }
    
    
    
    func  configureNextBtn(){
        view.addSubview(nextBtn)
        nextBtn.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        NSLayoutConstraint.activate([
            nextBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            nextBtn.widthAnchor.constraint(equalToConstant: 50),
            nextBtn.heightAnchor.constraint(equalToConstant: 30),
            nextBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    
    @objc func goToNextPage() {
        btnClick = pageControl.currentPage + 1
        if btnClick == arrOfVC.count{
            let signInVC = SignInVC()
            signInVC.modalPresentationStyle = .overFullScreen
            present(signInVC, animated: true)
            return
        }
        guard let currentPage = viewControllers?[0] else { return }
        guard let nextPage = dataSource?.pageViewController(self, viewControllerAfter: currentPage) else { return }
        pageControl.currentPage += 1
        setViewControllers([nextPage], direction: .forward, animated: true)
    }
    
    
    
    func  configurePrevBtn(){
        view.addSubview(prevBtn)
        prevBtn.addTarget(self, action: #selector(goToPreviousPage), for: .touchUpInside)
        NSLayoutConstraint.activate([
            prevBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            prevBtn.widthAnchor.constraint(equalToConstant: 70),
            prevBtn.heightAnchor.constraint(equalToConstant: 30),
            prevBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    
    @objc func goToPreviousPage() {
        guard let currentPage = viewControllers?[0] else { return }
        guard let prevPage = dataSource?.pageViewController(self, viewControllerBefore: currentPage) else { return }
        pageControl.currentPage -= 1
        setViewControllers([prevPage], direction: .reverse, animated: true)
    }
}


extension OnBoradingVC: UIPageViewControllerDelegate, UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrOfVC.firstIndex(of: viewController as! MAOnBoardingVC) else{
            return nil
        }
        let previousIndex = currentIndex - 1
        guard previousIndex >= 0 else{
            return arrOfVC.last
        }
        return arrOfVC[previousIndex]
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrOfVC.firstIndex(of: viewController as! MAOnBoardingVC) else{
            return nil
        }
        self.currentIndex = currentIndex
        let afterIndex = currentIndex + 1
        guard afterIndex < arrOfVC.count else{
            return arrOfVC.first
        }
        return arrOfVC[afterIndex]
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let viewControllers = pageViewController.viewControllers else{return}
        guard let viewControllerIndex = arrOfVC.firstIndex(of: viewControllers[0] as! MAOnBoardingVC) else{return}
        pageControl.currentPage = viewControllerIndex
        pageControl.addTarget(self, action: #selector(pageControlTapped), for: .valueChanged)
    }
    
  
    
}
