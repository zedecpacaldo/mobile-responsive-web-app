import 'models/ResearchComponents.dart';
import 'models/Researcher.dart';
import 'models/WebComponents.dart';
import 'models/progress.dart';


const String groupDescription = "Welcome to our data science project website! We are a team of computer science students who are passionate about using data science to extract insights. Our project focuses on analyzing tweets regarding Leni Robredo's allegiance with CPP-NDA-NDF. This was very prominent during the 2022 Philippine Presidential Elections. We are interested in understanding the underlying patterns and relationships within the data from tweets, and using this knowledge to make informed decisions.";

final List<ResearchComponent> researchComponents = [
  ResearchComponent(
      title: "Project Formulation",
      description: "chuchuchuchu"
  ),
  ResearchComponent(
      title: "Methodology",
      description: "chuchuchuchu"
  ),
  ResearchComponent(
      title: "Data Collection",
      description: "chuchuchuchu"
  ),
  ResearchComponent(
      title: "Data Exploration",
      description: "chuchuchuchu"
  ),
];

final List<WebComponents> webComponents = [
  WebComponents(
      section: "About Us",
      text: "Welcome to our data science project website! We are a team of computer science students who are passionate about using data science to extract insights. Our project focuses on analyzing tweets regarding Leni Robredo's allegiance with CPP-NDA-NDF. This was very prominent during the 2022 Philippine Presidential Elections. We are interested in understanding the underlying patterns and relationships within the data from tweets, and using this knowledge to make informed decisions."
  ),
  WebComponents(
      section: "Our Location",
      text: "Find us around the campus of the University of the Philippines Diliman, Quezon City."
  ),
];

final List<Researcher> researchers = [
  Researcher(
      name: "Gabriel Enriquez",
      image: 'images/researchers/zedecpacaldo.png',
      description: 'Gabriel Enriquez is a junior computer science student who is very interested in database management and mobile application development. He has some experience when it comes to Python programming and is currently taking on IT Project Management involving route-finding and mapping.'
  ),
  Researcher(
      name: "Mikhaela Tapia",
      image: 'images/researchers/mikhaelatapia.jpg',
      description: 'Mikhaela Tapia is a junior computer science student who is an aspiring web and mobile developer. Her experience in developing web and mobile applications uses frameworks including but not limited to ExpressJS, React and React Native. Currently, she is also trying to dive into Web3 development.'
  ),
  Researcher(
      name: "Zedec Pacaldo",
      image: 'images/researchers/zedecpacaldo.png',
      description: 'Zedec Pacaldo is a junior computer science student who is passionate mobile and web development. He has experience in Python programming and has worked on various school projects revolving around Artificial Intelligence and Software Engineering. Together, we make a dynamic team that brings different perspectives and skills to the project. We are excited to share our findings and insights with you and hope that our project will inspire others to explore the fascinating world of data science.'
  ),
];

List<Progress> progress = [
  Progress(name: 'Project Formulation', value: 1),
  Progress(name: 'Data Collection', value: 1),
  Progress(name: 'Project Exploration', value: 0.75),
  Progress(name: 'Data Modeling & Analysis', value: 0),
  Progress(name: 'Data Communication', value: 0),
];