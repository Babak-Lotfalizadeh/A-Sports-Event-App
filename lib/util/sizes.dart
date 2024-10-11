enum Sizes {
  normalPadding(8),
  largePadding(11),//Todo this size is not Standard, large padding must be 24 base on Material design
  xLargePadding(18),//Todo this size is not Standard, large padding must be 24 base on Material design
  xxLargePadding(21),//Todo this size is not Standard, large padding must be 24 base on Material design
  eventDetailsPadding(20),//Todo this size is not Standard, large padding must be 24 base on Material design
  logoH(33),
  logoW(61),
  filterH(32),
  borderNormal(2),
  eventIconSize(46),
  eventDetailIconTopPadding(39),//Todo this size is not Standard, large padding must be 24 base on Material design
  eventDetailTeamNameBottomPadding(15),//Todo this size is not Standard, large padding must be 24 base on Material design
  eventDetailTeamNameTopPadding(32),//Todo this size is not Standard, large padding must be 24 base on Material design
  eventLeagueSize(56);

  final double value;
  const Sizes(this.value);
}