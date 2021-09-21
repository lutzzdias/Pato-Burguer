import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';

// FALTA O TEXTO DA HOME(Cliente) e Proprietários

class AppTextStyles {
  static final buttons = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color(0xFFFFFFFF),
  );
  static final itemName = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final itemPrice = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final itemPriceSale = GoogleFonts.roboto(
    // Opacidade - 80%
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final itemCifrao = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: AppColors.orangeDark,
  );
  static final itemCifraoHome = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final itemCifraoSale = GoogleFonts.roboto(
    // Opacidade - 80%
    fontSize: 8,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final menuOption = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: const Color(0xFFFFFFFF),
  );
  static final menuSelected = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: AppColors.orangeDark,
  );
  static final appBar = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: const Color(0xFFFFFFFF),
  );
  static final contactTitle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: AppColors.orangeMedium,
  );
  static final contactInfo = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.orangeMedium,
  );
  static final contactText = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.orangeMedium,
  );
  static final contactDetail = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.orangeMedium,
  );
  static final infoTitle = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final infoSection = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: AppColors.text,
  );
  static final infoText = GoogleFonts.roboto(
    // Opacidade - 60%
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );
  static final infoPrice = GoogleFonts.roboto(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );
  static final infoCifrao = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.orangeDark,
  );
}
