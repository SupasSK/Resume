import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/7.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // เนื้อหาด้านหน้า
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      Text(
                        'My Resume',
                        style: GoogleFonts.kanit(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // รูปโปรไฟล์สี่เหลี่ยม
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: 120,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // กล่องชื่อ
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 235, 248)
                              .withOpacity(0.85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ชื่อ: นางสาวสุภัสสราภรณ์ ขันชารี',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('อีเมล: supsarapornc66@nu.ac.th'),
                            Text('เบอร์: 0613820376'),
                            Text(
                              'ที่อยู่: 152/1 หมู่ 12 บ้านดาดทองเจริญ \n ตำบล:อ่างทอง อำเภอ:เมือง จังหวัด:กำแพงเพชร 62000',
                            ),
                          ],
                        ),
                      ),

                      // กล่องงานอดิเรก
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 185, 222, 247)
                              .withOpacity(0.85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'งานอดิเรก',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('ดูหนัง • อ่านนิยาย • เล่นดนตรี'),
                          ],
                        ),
                      ),

                      // กล่องประวัติการศึกษา
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 198, 216, 248)
                              .withOpacity(0.85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ประวัติการศึกษา',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'ประถม: โรงเรียนบ้านดาดทองเจริญ \n จบการศึกษาปี 2559 \n'),
                            Text(
                                'มัธยมต้น: โรงเรียนวังตะเคียนประชานุสรณ์ \n จบการศึกษาปี 2562 \n'),
                            Text(
                                'มัธยมปลาย: โรงเรียนวังตะเคียนประชานุสรณ์ \n จบการศึกษาปี 2565 \n'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
