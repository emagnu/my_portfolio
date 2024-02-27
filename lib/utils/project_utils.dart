//   ///
//  Import LIBRARIES
//  Import FILES
//  //   ///

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

//  ---------------
/// Hobby Project
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/images/projects/1.png',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    subtitle: 'Vivamus pretium tincidunt mauris vel lobortis.',
    androidLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
    iosLink:
        'https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714',
  ),
  ProjectUtils(
      image: 'assets/images/projects/2.png',
      title: 'Etiam tincidunt ante arcu, sed pharetra orci maximus quis.',
      subtitle:
          'Proin et sagittis est, nec lobortis sapien. Nam mattis mattis odio vel ullamcorpe.',
      webLink: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
];

//  ---------------
/// Company Project
List<ProjectUtils> companyProjectUtils = [
  ProjectUtils(
      image: 'assets/images/projects/3.png',
      title: 'Morbi sed lorem bibendum, molestie justo nec, tempor sem.',
      subtitle: 'Pellentesque gravida ullamcorper finibus.',
      androidLink: ''),
  ProjectUtils(
    image: 'assets/images/projects/4.png',
    title: 'Fusce laoreet est a mi maximus tincidunt tristique massa.',
    subtitle: 'Praesent eros elit, sollicitudin eget tortor at. ',
    webLink: 'https://pub.dev/packages/signals',
  ),
  ProjectUtils(
    image: 'assets/images/projects/5.png',
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    subtitle: 'Vivamus pretium tincidunt mauris vel lobortis.',
  ),
];
