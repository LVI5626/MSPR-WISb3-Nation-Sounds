<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\PartnerRepository;
use App\Repository\ArtistRepository;
use App\Repository\SceneRepository;
use App\Repository\AlertRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;




class HomeController extends AbstractController
{

    public function welcome()
    {
        return $this->render('home/welcome.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */
    public function index(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'alerts' => $alertRepository->findBy([],['id'=>'DESC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    public function index2(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    public function indexeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


    public function faq(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/faq.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'artists' => $artistRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

        /**
     * @Route("/a-propos", name="a-propos")
     */
    public function propos(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/a_propos.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'artists' => $artistRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


    public function program(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/program/program.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'artists' => $artistRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
        ]);
    }
    
}
