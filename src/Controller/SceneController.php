<?php

namespace App\Controller;

use App\Entity\Scene;
use App\Form\SceneType;
use App\Repository\SceneRepository;
use App\Repository\PartnerRepository;
use App\Repository\AlertRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ArtistRepository;
use Container03Vr84x\getPartnerRepositoryService;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;


class SceneController extends AbstractController
{
    /**
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function index(SceneRepository $sceneRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('scene/index.html.twig', [
            'scenes' => $sceneRepository->findAll(),
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
            
        ]);
    }

    public function new(Request $request, AlertRepository $alertRepository): Response
    {
        $scene = new Scene();
        $form = $this->createForm(SceneType::class, $scene);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($scene);
            $entityManager->flush();

            return $this->redirectToRoute('scene_index');
        }

        return $this->render('scene/new.html.twig', [
            'scene' => $scene,
            'form' => $form->createView(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


    public function show(Scene $scene, PartnerRepository $partnerRepository, ArtistRepository $artistRepository, AlertRepository $alertRepository): Response
    {
        $partner = $partnerRepository->findAll();
        //$artists = $artist->findAll();
        $artists = $artistRepository;
        return $this->render('scene/show.html.twig', [
            'scene' => $scene,
            'artists' => $artists,
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


    public function edit(Request $request, Scene $scene, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        $form = $this->createForm(SceneType::class, $scene);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('scene_index');
        }

        return $this->render('scene/edit.html.twig', [
            'scene' => $scene,
            'partners' => $partnerRepository->findAll(),
            'form' => $form->createView(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


    public function delete(Request $request, Scene $scene, AlertRepository $alertRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$scene->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($scene);
            $entityManager->flush();
        }

        return $this->redirectToRoute('scene_index');
    }
}
