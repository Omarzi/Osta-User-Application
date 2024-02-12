import '../../../../../utils/constants/exports.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({Key? key}) : super(key: key);

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  double _ratingValue=4.5;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/12,
      width: MediaQuery.of(context).size.width/1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
        color: OColors.grey
      ),
      child: Center(
        child: RatingBar(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: OColors.gold,),
                half: const Icon(
                  Icons.star_half,
                  color: OColors.gold,
                ),
                empty: const Icon(
                  Icons.star,
                  color: Colors.grey,
                )),
            onRatingUpdate: (value) {
              setState(() {
                _ratingValue = value;
              });
            }),
      ),
    );
  }
}
