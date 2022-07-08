class MyPortfolio{

 late int id;
 late String Project,category,images,Projecturl;

 MyPortfolio({required this.id, required this.Project, required this.category, required this.images,required this.Projecturl});

}

List<MyPortfolio> portfolio = [

  MyPortfolio(
      id: 1,
      Project: "Website",
      category: " Library: React",
      images: "images/project_1.png",
      Projecturl: "www.example.com"
  ),
  MyPortfolio(
      id: 2,
      Project: "Website",
      category: " Framework: Codeigniter",
      images: "images/project_1.png",
      Projecturl: "I created this CMS for a private company so we can't public it."
  ),
  MyPortfolio(
      id: 3,
      Project: "Website",
      category: " CMS: Wordpress",
      images: "images/project_1.png",
      Projecturl: "www.example.com"
  ),
  MyPortfolio(
      id: 10,
      Project: "Website",
      category: " CMS: Wordpress",
      images: "images/project_1.png",
      Projecturl: "www.example.com"
  )
];



