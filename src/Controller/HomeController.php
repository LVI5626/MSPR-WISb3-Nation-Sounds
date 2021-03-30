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

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

    public function indexeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/eng/index.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
            'alerts' => $alertRepository->findBy([],['id'=>'DESC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }
         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

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
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function faqeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/eng/faq.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'artists' => $artistRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
              ]);
          }

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
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
         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */
    public function proposeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/eng/a_propos.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'artists' => $artistRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function mentions(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/mentions.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'artists' => $artistRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
              ]);
          }

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function mentionseng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/eng/mentions.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'artists' => $artistRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
              ]);
          }

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function politique(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/politique.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'artists' => $artistRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
              ]);
          }

         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function politiqueeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/eng/politique.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'artists' => $artistRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
              ]);
          }
         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

    public function program(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('home/program/program.html.twig', [
            'controller_name' => 'HomeController',
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
            'artistrockfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
            'artistrocksaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
            'artistrocksunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
            'artistjazzfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
            'artistjazzsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
            'artistjazzsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
            'artistrapfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
            'artistrapsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
            'artistrapsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
            'artistpopfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
            'artistpopsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
            'artistpopsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
            'artistdjfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
            'artistdjsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
            'artistdjsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
        ]);
    }


         /**
          * Require ROLE_USER for only this controller method.
          *
          * @IsGranted("ROLE_USER")
          */

          public function programeng(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
          {
              return $this->render('home/eng/program.html.twig', [
                  'controller_name' => 'HomeController',
                  'partners' => $partnerRepository->findAll(),
                  'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
                  'artistrockfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
                  'artistrocksaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
                  'artistrocksunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Rock'],['hour'=>'ASC']),
                  'artistjazzfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
                  'artistjazzsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
                  'artistjazzsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Jazz'],['hour'=>'ASC']),
                  'artistrapfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
                  'artistrapsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
                  'artistrapsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène RAP'],['hour'=>'ASC']),
                  'artistpopfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
                  'artistpopsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
                  'artistpopsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Pop Folk'],['hour'=>'ASC']),
                  'artistdjfriday' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
                  'artistdjsaturday' => $artistRepository->findBy(['date'=>'Samedi', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
                  'artistdjsunday' => $artistRepository->findBy(['date'=>'Dimanche', 'scene' => 'Scène Electro DJ'],['hour'=>'ASC']),
              ]);
          }
    
}
