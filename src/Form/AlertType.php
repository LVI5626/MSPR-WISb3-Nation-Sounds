<?php

namespace App\Form;

use App\Entity\Alert;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AlertType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre', TextareaType::class)
            ->add('text', TextareaType::class, [
                ])
            ->add('texteng', TextareaType::class, [
                ])
            ->add('photo', TextareaType::class, [
                ])
            ->add('photo2', TextareaType::class, [
                ])
            ->add('titreeng', TextareaType::class, [
                ])
            ->add('photo2', TextareaType::class, [
                ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Alert::class,
        ]);
    }
}
