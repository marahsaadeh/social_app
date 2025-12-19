import 'package:flutter/material.dart';
import 'package:social_app/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  // داخل الـ build method
Widget build(BuildContext context) {
  final double widthScreen = MediaQuery.of(context).size.width;
  bool isWeb = widthScreen > 600;

  return Scaffold(
    backgroundColor:Color.fromARGB(255, 50, 50, 53),
    appBar: AppBar(
      backgroundColor:Color.fromARGB(255, 217, 133, 223),
      centerTitle: false, // ليعطي طابع الويب
    ),
    body: Center( // لضمان توسط المحتوى في الشاشة
      child: Container(
        constraints: BoxConstraints(maxWidth: 935), // العرض القياسي لصفحات البروفايل
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Header Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: isWeb ? 70 : 40, // تكبير الصورة في الويب
                    backgroundImage: AssetImage("assets/img/porf.jpg"),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Marah Saadeh", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStatColumn("1", "Posts"),
                            _buildStatColumn("8", "Followers"),
                            _buildStatColumn("15", "Following"),
                          ],
                        ),
                        if (isWeb) ...[ // إظهار البيو والأزرار بجانب الصورة في الويب
                           const SizedBox(height: 20),
                           Text("Happiness", style: TextStyle(fontWeight: FontWeight.bold)),
                           const SizedBox(height: 20),
                           _buildActionButtons(isWeb),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (!isWeb) ...[ // للنسخة المصغرة (موبايل)
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Text("Happiness"),
              ),
              _buildActionButtons(isWeb),
            ],
            const SizedBox(height: 20),
            Divider(color: Colors.grey[800]),
            // Grid Section
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isWeb ? 3 : 2, // 3 صور بالعرض في الويب
                  childAspectRatio: 1, // صور مربعة احترافية
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 3,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset("assets/img/post.jpg", fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Widget مساعد للأزرار لتقليل تكرار الكود
Widget _buildActionButtons(bool isWeb) {
  return Row(
    children: [
      Expanded(
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.edit, size: 18),
          label: Text("Edit profile"),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.logout, size: 18),
          label: Text("Log out"),
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 156, 76, 108)),
        ),
      ),
    ],
  );
}

Widget _buildStatColumn(String value, String label) {
  return Column(
    children: [
      Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text(label, style: TextStyle(color: Colors.grey)),
    ],
  );
}
  }
