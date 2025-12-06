import 'package:flutter/material.dart';
import 'package:premium_masterclass_full/presentation/widgets/subject_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = [
      {'title': 'الرياضيات', 'subtitle': 'عدد الملفات: 829', 'icon': Icons.calculate, 'color': Color(0xFF7C4DFF)},
      {'title': 'اللغة العربية', 'subtitle': 'عدد الملفات: 375', 'icon': Icons.text_fields, 'color': Color(0xFF6A3EA0)},
      {'title': 'اللغة الإنكليزية', 'subtitle': 'عدد الملفات: 280', 'icon': Icons.language, 'color': Color(0xFF00BFA5)},
      {'title': 'العلوم الفيزيائية', 'subtitle': 'عدد الملفات: 422', 'icon': Icons.science, 'color': Color(0xFFFF7043)},
      {'title': 'التاريخ والجغرافيا', 'subtitle': 'عدد الملفات: 363', 'icon': Icons.public, 'color': Color(0xFF00ACC1)},
      {'title': 'حاسبة المعدل', 'subtitle': 'احسب معدل السنوات', 'icon': Icons.calculate_outlined, 'color': Color(0xFF3D5AFE)},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('MasterClass EDU'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.chat_bubble)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          children: [
            // Hero banner
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [Theme.of(context).colorScheme.primary.withOpacity(0.9), Theme.of(context).colorScheme.secondary.withOpacity(0.7)]),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 12, offset: Offset(0,6))],
              ),
              child: Center(child: Text('مرحبا بكم في MasterClass EDU', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
            ),
            const SizedBox(height: 18),

            // grid of subject tiles
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: subjects.map((s) => SizedBox(
                width: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.width>800?3:1) - 20,
                child: SubjectTile(
                  title: s['title'] as String,
                  subtitle: s['subtitle'] as String,
                  icon: s['icon'] as IconData,
                  accent: s['color'] as Color,
                ),
              )).toList(),
            ),
            const SizedBox(height: 24),

            // GPA calculator stub card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text('حاسبة المعدل', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  TextField(decoration: InputDecoration(labelText: 'أدخل عدد المواد')),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: (){}, child: const Text('احسب')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
