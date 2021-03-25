<?php

namespace App\Controller;

use App\Entity\Artist;
use App\Form\ArtistType;
use App\Repository\ArtistRepository;
use App\Repository\AlertRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\PartnerRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

/**
    * Require ROLE_USER for only this controller method.
    *
    * @IsGranted("ROLE_USER")
*/


class ArtistController extends AbstractController
{
/**
    * Require ROLE_ADMIN for only this controller method.
    *
    * @IsGranted("ROLE_USER")
*/    

    public function index(ArtistRepository $artistRepository, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('artist/index.html.twig', [
            'artists' => $artistRepository->findAll(),
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }


/**
    * Require ROLE_ADMIN for only this controller method.
    *
    * @IsGranted("ROLE_ADMIN")
*/    

    public function new(Request $request, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        $artist = new Artist();
        $form = $this->createForm(ArtistType::class, $artist);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($artist);
            $entityManager->flush();

            return $this->redirectToRoute('artist_index');
        }

        return $this->render('artist/new.html.twig', [
            'artist' => $artist,
            'form' => $form->createView(),
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
    * Require ROLE_USER for only this controller method.
    *
    * @IsGranted("ROLE_USER")
*/    

    public function show(Artist $artist, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('artist/show.html.twig', [
            'artist' => $artist,
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

/**
    * Require ROLE_USER for only this controller method.
    *
    * @IsGranted("ROLE_USER")
*/    
    public function showeng(Artist $artist, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        return $this->render('artist/showeng.html.twig', [
            'artist' => $artist,
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/{id}/edit", name="artist_edit", methods={"GET","POST"})
     *
    * Require ROLE_ADMIN for only this controller method.
    *
    * @IsGranted("ROLE_ADMIN") 
    */
    public function edit(Request $request, Artist $artist, PartnerRepository $partnerRepository, AlertRepository $alertRepository): Response
    {
        $form = $this->createForm(ArtistType::class, $artist);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('artist_index');
        }

        return $this->render('artist/edit.html.twig', [
            'artist' => $artist,
            'form' => $form->createView(),
            'partners' => $partnerRepository->findAll(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }
 
    /**
     * @Route("/{id}", name="artist_delete", methods={"DELETE"})
     * Require ROLE_ADMIN for only this controller method.
     * @IsGranted("ROLE_ADMIN")
     */
    public function delete(Request $request, Artist $artist): Response
    {
        if ($this->isCsrfTokenValid('delete'.$artist->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($artist);
            $entityManager->flush();
        }

        return $this->redirectToRoute('artist_index');
    }
}
