import 'package:flutter/material.dart';

import 'components/ProfilePageComponents/rich_text.dart';
import 'constants/constantColors.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.22,
          width: double.infinity,
          color: kGrey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/photo_10.jpg'),
                fit: BoxFit.fill,
              ),
              )
          ),
        ),
        Container(
          height: size.height * 0.25,
          width: double.infinity,
          color: kGreyBlack,
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment(0.2, 0.6),
                    child: richText(
                      txt: 'Soarammm',
                      siz: 25,
                      clr: kGrey,
                      fw: FontWeight.bold,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.2, 0.6),
                    child: richText(
                      txt: 'Climax Id: 8823145',
                      siz: 16,
                      clr: kGrey,
                      fw: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Divider(
                color: kGrey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: richText(
                      txt: 'Follow',
                      siz: 18,
                      clr: kGrey,
                      fw: FontWeight.bold,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(kTextButton)),
                  ),
                  Container(
                    child: Column(
                      children: [
                        richText(
                          txt: 'Follower',
                          siz: 18,
                          clr: kGrey,
                          fw: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        richText(
                          txt: '3k2',
                          siz: 24,
                          clr: kWhite,
                          fw: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        richText(
                          txt: 'Following',
                          siz: 18,
                          clr: kGrey,
                          fw: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        richText(
                          txt: '119',
                          siz: 24,
                          clr: kWhite,
                          fw: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
