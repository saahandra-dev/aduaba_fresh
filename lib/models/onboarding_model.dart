class Onboarding {
  String image;
  String title;
  String subtitle;

  Onboarding({this.image, this.title, this.subtitle});
}

List<Onboarding> contents = [
  Onboarding(
    image: 'assets/images/onboard1.png',
    title: 'Explore Fresh Organic Products Everyday',
    subtitle: 'Search through a variety of products that help you keep fit and healthy'
  ),
  Onboarding(
    image: 'assets/images/onboard2.png', 
    title: 'Eat healthy, Spend Wisely. Be Happy',
    subtitle: 'Discover products by our vendors at very affordable prices'
  ),
  Onboarding(
    image: 'assets/images/onboard3.png', 
    title: 'Fast Delivery within 24 hours of purchase',
    subtitle: 'Worried about time? Don’t stress, our products are at our doorstep before sunset'
  ),

];