<?php

namespace App\Controller;

use App\Entity\Alert;
use App\Form\AlertType;
use App\Repository\AlertRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\PartnerRepository;
use App\Repository\ArtistRepository;
use App\Repository\SceneRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;




class AlertController extends AbstractController
{

    public function index(AlertRepository $alertRepository, ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository): Response
    {
        return $this->render('alert/index.html.twig', [
            'alerts' => $alertRepository->findAll(),
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    public function indexeng(AlertRepository $alertRepository, ArtistRepository $artistRepository, PartnerRepository $partnerRepository, SceneRepository $sceneRepository): Response
    {
        return $this->render('alert/indexeng.html.twig', [
            'alerts' => $alertRepository->findAll(),
            'partners' => $partnerRepository->findAll(),
            'scenes' => $sceneRepository->findAll(),
            'artists' => $artistRepository->findBy([],['name'=>'ASC']),
            'show1' => $artistRepository->findBy(['date'=>'Vendredi', 'scene' => '1'],['hour'=>'ASC']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/new", name="alert_new", methods={"GET","POST"})
     */
    public function new(Request $request, PartnerRepository $partnerRepository): Response
    {
        $alert = new Alert();
        $form = $this->createForm(AlertType::class, $alert);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($alert);
            $entityManager->flush();

            return $this->redirectToRoute('alert_index');
        }

        return $this->render('alert/new.html.twig', [
            'alert' => $alert,
            'form' => $form->createView(),
            'partners' => $partnerRepository->findAll(),
        ]);
    }

    /**
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function show(Alert $alert, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('alert/show.html.twig', [
            'alert' => $alert,
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }
    /**
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function showeng(Alert $alert, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('alert/showeng.html.twig', [
            'alert' => $alert,
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * 
     * Require ROLE_ADMIN for only this controller method.
     *
     * @IsGranted("ROLE_ADMIN")
     */
    public function edit(Request $request, Alert $alert, PartnerRepository $partnerRepository): Response
    {
        $form = $this->createForm(AlertType::class, $alert);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('alert_index');
        }

        return $this->render('alert/edit.html.twig', [
            'alert' => $alert,
            'form' => $form->createView(),
            'partners' => $partnerRepository->findAll(),

        ]);
    }

    /**
     * 
     * Require ROLE_ADMIN for only this controller method.
     *
     * @IsGranted("ROLE_ADMIN")
     */
    public function delete(Request $request, Alert $alert): Response
    {
        if ($this->isCsrfTokenValid('delete'.$alert->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($alert);
            $entityManager->flush();
        }

        return $this->redirectToRoute('alert_index');
    }
}
