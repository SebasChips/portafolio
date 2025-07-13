import 'package:flutter/material.dart';
import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  final Map<String, List<String>> skillsByCategory = {
    'Web Development': [
      'HTML/CSS',
      'JavaScript',
      'React',
      'Node.js',
      'Bootstrap',
      'Tailwind',
      'UI/UX Design',
      'Express',
      'Firebase',
      'REST APIs',
      'Responsive Design'
    ],
    'Software Engineering': [
      'Dart',
      'JavaScript',
      'Python',
      'C++',
      'Data Structures',
      'Algorithms',
      'OOP',
      'Design Patterns',
      'Database Design',
      'Database normalization & patterns',
      'Security',
    ],
    'App Development': [
      'Flutter',
      'React Native',
      'Kotlin',
      'UI/UX Design',
      'Firebase Integration',
      'API Integration',
      'Push Notifications',
      'Integration with Google Maps'
    ],
    'Other Skills': [
      'Git/GitHub',
      'Linux OS & commands',
      'Docker',
      'Agile Methodologies',
      'Problem Solving',
      'Team Collaboration',
    ]
  };

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: WebDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 25, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const TabsWebList(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // My Skills Section
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple.shade50, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold("My Skills", 42),
                          const SizedBox(height: 20),
                          Sans(
                            "Here's a deep dive into my technical stack and engineering mindset.",
                            16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      "assets/yop-programador.png",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),



            // Skills Sections
            SkillsSection(
              title: "Web Development",
              description:
              "Responsive, scalable, and secure web solutions designed for top-tier performance using modern stacks like React, Tailwind and Firebase.",
              skills: skillsByCategory['Web Development']!,
              imagePath: "assets/webL.png",
              widthDevice: widthDevice,
            ),

            const SizedBox(height: 60),

            SkillsSection(
              title: "Software Engineering",
              description:
              "Robust software systems with strong fundamentals in data structures, OOP, algorithms, and secure, maintainable code.",
              skills: skillsByCategory['Software Engineering']!,
              imagePath: "assets/software.png",
              widthDevice: widthDevice,
              reverse: true,
            ),

            const SizedBox(height: 60),

            SkillsSection(
              title: "App Development",
              description:
              "Multiplatform and native mobile apps built with Flutter, Kotlin, and React Native. Integrated with APIs, maps, notifications, and Firebase.",
              skills: skillsByCategory['App Development']!,
              imagePath: "assets/app.png",
              widthDevice: widthDevice,
            ),

            const SizedBox(height: 60),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("Other Skills", 30),
                const SizedBox(height: 20),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 12,
                      runSpacing: 12,
                      children: skillsByCategory['Other Skills']!
                          .map((skill) => tealContainer(text: skill))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // My Works Section
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade50, Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SansBold("My Works", 42),
                  const SizedBox(height: 20),
                  Sans(
                    "Here are some of the jobs I’ve worked on:",
                    16,
                  ),
                  const SizedBox(height: 40),

                  // Work 1
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/JFK.png',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SansBold("John F. Kennedy School", 22),
                                const SizedBox(height: 8),
                                Sans("Programmer intern", 18),
                                Sans(
                                  "Maintain web platforms through bug fixing, debugging, refactoring, and database redesign for normalization. Develop web systems such as inventorymanagement and workshop enrollment platforms, improving administrative efficiency and facilitating easier access to activities for parents.",
                                  15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Work 2
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SansBold("Gobierno digital", 22),
                                const SizedBox(height: 8),
                                Sans("Database intern", 18),
                                const SizedBox(height: 8),
                                Sans(
                                  "Managing SQL databases, executing complex queries, segmenting diverse client data through the creation of accurate, company-compliant document templates, enhancing data handling processes and streamlining workflows.",
                                  15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/gobdigital.png',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

// SkillsSection component stays the same
class SkillsSection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> skills;
  final String imagePath;
  final double widthDevice;
  final bool reverse;

  const SkillsSection({
    super.key,
    required this.title,
    required this.description,
    required this.skills,
    required this.imagePath,
    required this.widthDevice,
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    final content = [
      AnimatedCard(
        imagePath: imagePath,
        height: 250,
        width: 250,
        reverse: reverse,
      ),
      const SizedBox(width: 50),
      Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Column(
            crossAxisAlignment:
            reverse ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              SansBold(title, 30),
              const SizedBox(height: 15),
              Sans(description, 15),
              const SizedBox(height: 20),
              Wrap(
                alignment: reverse ? WrapAlignment.end : WrapAlignment.start,
                spacing: 10,
                runSpacing: 10,
                children: skills
                    .map((skill) => tealContainer(text: skill))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: reverse ? content.reversed.toList() : content,
    );
  }
}
