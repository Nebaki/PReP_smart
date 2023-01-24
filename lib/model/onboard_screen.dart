

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Welcome to PrEPsmart',
    image: 'assets/onb1.png',
    discription: "Stay ready. Have backup. Be protected."
  ),
  UnbordingContent(
    title: 'Know you’re protected.',
    image: 'assets/onb2.png',
    discription: "Each time you take your pill using the app, PrEPsmart will tell you when you're protected. "
  ),
  UnbordingContent(
    title: 'you’ve got backup!',
    image: 'assets/onb3.png',
    discription: "We know it’s not easy to remember everything. We’ll remind you to takeyour PrEP doses. "
  ),
  UnbordingContent(
    title: 'Track your sexual activities.',
    image: 'assets/onb4.png',
    discription: "Simple tracking to help you recall the who, what, and when. "
  ),
  
];