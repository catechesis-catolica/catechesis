import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class CardOptions {
  final int id;
  final String title, description;
  final Color color;

  CardOptions(
    {required this.id,
    required this.title,
    required this.description,
    required this.color});
}

List<CardOptions> cardOptions = [
  CardOptions(
    id: 1,
    title: "Catecismo da Igreja Católica",
    description: "Documento que descreve a fé da Igreja Católica",
    color: AppColors.secondary, 
  ),
    CardOptions(
    id: 2,
    title: "Código de Direito Canônico",
    description: "Documento que descreve a fé da Igreja Católica",
    color: AppColors.primary, 
  ),
    CardOptions(
    id: 3,
    title: "Liturgia Diária",
    description: "Documento que descreve a fé da Igreja Católica",
    color: AppColors.secondary, 
  ),
];