import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:slms/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Text('Web dasturlashda 2+ yillik va Flutter Mobil dasturlashda 7 oylik tajribaga ega'),
              ),
              _buildTitle('Sohalar'),
              SizedBox(height: 10.0,),
              _bildSkillRow('Wordpress', 0.8),
              SizedBox(height: 5.0,),
              _bildSkillRow('Yii2', 0.4),
              SizedBox(height: 5.0,),
              _bildSkillRow('ReactJs', 0.5),
              SizedBox(height: 5.0,),
              _bildSkillRow('Flutter', 0.6),
              SizedBox(height: 30.0,),
              _buildTitle('Experience'),
              _buildExperianceRow(company: 'Mustafo Software', position: 'Web dasturchi', duration: '2020'),
              _buildExperianceRow(company: 'Mustafo Software', position: 'Flutter Mobil dasturchi', duration: '2021'),
              SizedBox(height: 20.0,),
              _buildTitle('Ta\'lim'),
              SizedBox(height: 5.0,),
              _buildExperianceRow(company: 'Hasorasp 1-son Akademik Litseyi', position: 'Aniq Fanlar', duration: '2012-2015'),
              _buildExperianceRow(company: 'Toshkent Axborot Texnologiyalar Universiteti Urganch filiali', position: 'Dasturiy Injiniringi', duration: '2017-2021'),
              SizedBox(height: 20.0,),
              _buildTitle('Aloqa'),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0,),
                  Icon(Icons.mail, color: Colors.black54,),
                  SizedBox(width: 10.0,),
                  Text(
                    'atessdu@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0,),
                  Icon(Icons.phone, color: Colors.black54,),
                  SizedBox(width: 10.0,),
                  Text(
                    '+998999666886',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              _buildSocialRow(),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
    );
  }
  Row _buildSocialRow(){
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0,),
        IconButton(
          color: Colors.indigo,
          onPressed: (){
            _launchURL('url');
          },
          icon: Icon(FontAwesomeIcons.facebookF,),
        ),
        SizedBox(width: 20.0,),
        IconButton(
          color: Colors.indigo,
          onPressed: (){
            _launchURL('url');
          },
          icon: Icon(FontAwesomeIcons.twitter,),
        ),
        SizedBox(width: 20.0,),
        IconButton(
          color: Colors.indigo,
          onPressed: (){
            _launchURL('url');
          },
          icon: Icon(FontAwesomeIcons.telegram,),
        ),
      ],
    );
  }

  _launchURL(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw '$url yuklanmadi';
    }
  }
  ListTile _buildExperianceRow({String company, String position, String duration}){
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
      ),
      title: Text(
        company,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Widget _bildSkillRow(String skill, double level){
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0,),
        Expanded(
          flex: 2,
          child: Text(skill.toUpperCase(), textAlign: TextAlign.right,),
        ),
        SizedBox(width: 10.0,),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 10.0,),
      ],
    );
  }
  Widget _buildTitle(String title){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  Row _buildHeader(){
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0,),
        Container(
          width: 80.0,
          height: 80.0,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: CachedNetworkImageProvider(avatars[4]),
            ),
          ),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('O\'rinov Sulaymon',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('Junior Flutter and Web Developer'),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.map, size: 12.0, color: Colors.black,),
                SizedBox(width: 10.0,),
                Text(
                  'Xorazm, Uzbekistan',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}