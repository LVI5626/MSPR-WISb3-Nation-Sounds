<?php

namespace App\Controller;

use App\Entity\Partner;
use App\Form\PartnerType;
use App\Repository\PartnerRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\AlertRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

/**
 * @Route("/partner")
 */
class PartnerController extends AbstractController
{
    /**
     * @Route("/", name="partner_index", methods={"GET"})
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function index(PartnerRepository $partnerRepository, AlertRepository $alertRepository ): Response
    {
        return $this->render('partner/index.html.twig', [
            'radio' => $partnerRepository->findBy(['theme'=>'Radio']),
            'journal' => $partnerRepository->findBy(['theme'=>'Journal']),
            'chaîne' => $partnerRepository->findBy(['theme'=>'Chaîne']),
            'boisson' => $partnerRepository->findBy(['theme'=>'Boisson']),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/new", name="partner_new", methods={"GET","POST"})
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function new(Request $request, AlertRepository $alertRepository): Response
    {
        $partner = new Partner();
        $form = $this->createForm(PartnerType::class, $partner);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($partner);
            $entityManager->flush();

            return $this->redirectToRoute('partner_index');
        }

        return $this->render('partner/new.html.twig', [
            'partner' => $partner,
            'form' => $form->createView(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/{id}", name="partner_show", methods={"GET"})
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function show(Partner $partner, AlertRepository $alertRepository): Response
    {
        return $this->render('partner/show.html.twig', [
            'partner' => $partner,
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/{id}/edit", name="partner_edit", methods={"GET","POST"})
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function edit(Request $request, Partner $partner, AlertRepository $alertRepository): Response
    {
        $form = $this->createForm(PartnerType::class, $partner);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('partner_index');
        }

        return $this->render('partner/edit.html.twig', [
            'partner' => $partner,
            'form' => $form->createView(),
            'news' => $alertRepository->findBy([],['id'=>'DESC'],[1]),
        ]);
    }

    /**
     * @Route("/{id}", name="partner_delete", methods={"DELETE"})
     * 
     * Require ROLE_USER for only this controller method.
     *
     * @IsGranted("ROLE_USER")
     */
    public function delete(Request $request, Partner $partner): Response
    {
        if ($this->isCsrfTokenValid('delete'.$partner->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($partner);
            $entityManager->flush();
        }

        return $this->redirectToRoute('partner_index');
    }
}
