class BannerProduct {
  final String bannerImg, bannerTitle, bannerDes;

  final int bannerBrand, id;

  BannerProduct({
    required this.id,
    required this.bannerDes,
    required this.bannerImg,
    required this.bannerTitle,
    required this.bannerBrand,
  });
}

List<BannerProduct> bannerProduct = [
  BannerProduct(
      id: 1,
      bannerImg: 'assets/images/Image Banner 3.png',
      bannerTitle: 'Vip Brand',
      bannerBrand: 22,
      bannerDes: 'bannerDes'),
  BannerProduct(
      id: 2,
      bannerImg: 'assets/images/Image Banner 2.png',
      bannerTitle: 'Top Brand',
      bannerBrand: 11,
      bannerDes: 'bannerDes'),
  BannerProduct(
      id: 3,
      bannerImg: 'assets/images/Image Banner 2.png',
      bannerTitle: 'Smart Brand',
      bannerBrand: 20,
      bannerDes: 'bannerDes'),
];
