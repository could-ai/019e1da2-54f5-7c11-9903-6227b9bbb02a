import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 800;
          return CustomScrollView(
            slivers: [
              _buildAppBar(context, isDesktop),
              SliverToBoxAdapter(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHeader(context, isDesktop),
                          const SizedBox(height: 48),
                          _buildAboutSection(context),
                          const SizedBox(height: 48),
                          _buildExperienceSection(context),
                          const SizedBox(height: 48),
                          _buildEducationSection(context),
                          const SizedBox(height: 48),
                          _buildSkillsSection(context),
                          const SizedBox(height: 48),
                          _buildLanguagesSection(context),
                          const SizedBox(height: 64),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, bool isDesktop) {
    return SliverAppBar(
      expandedHeight: isDesktop ? 200 : 150,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          'مصطفى همو',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
              ),
            ),
            Positioned(
              right: -50,
              top: -50,
              child: Icon(
                Icons.menu_book,
                size: 200,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, bool isDesktop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'أستاذ مادة اللغة العربية والتربية الإسلامية',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _buildContactChip(context, Icons.phone, '0653503611'),
            _buildContactChip(context, Icons.email, 'h.almostapha@gmail.com'),
            _buildContactChip(
              context,
              Icons.location_on,
              'رياض السلام، تيط مليل، الدار البيضاء',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContactChip(BuildContext context, IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16, color: Theme.of(context).colorScheme.primary),
      label: Text(label),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      side: BorderSide.none,
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary, size: 28),
        const SizedBox(width: 12),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'نبذة شخصية', Icons.person),
        const SizedBox(height: 16),
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'أستاذ لغة عربية وتربية إسلامية بخبرة تتجاوز 14 عاماً في المدارس الخاصة بالمغرب. شغوف بالمقاربات البيداغوجية الحديثة والتعليم التفاعلي الذي يتجاوز المناهج التقليدية. حريص دائماً على تطوير المحتوى التعليمي بشكل إبداعي يدمج التكنولوجيا (مثل العروض التفاعلية والخرائط الذهنية) والأنشطة الثقافية، مما يضمن تحقيق أعلى مستويات الكفاءة اللغوية والثقافية لدى المتعلمين.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceSection(BuildContext context) {
    final experiences = [
      {
        'period': '2026 - إلى الآن',
        'title': 'تدريس مادة اللغة العربية والتربية الإسلامية',
        'place': 'مؤسسة السفير',
        'desc': '',
      },
      {
        'period': '2023 - إلى الآن',
        'title': 'تدريس مادة اللغة العربية',
        'place': 'مدارس نون',
        'desc': 'تطوير محتوى تعليمي رقمي واستخدام أساليب بيداغوجية حديثة.',
      },
      {
        'period': '2016 - إلى الآن',
        'title': 'تدريس مادة التربية الإسلامية',
        'place': 'مؤسسة ابن عربي الخاصة',
        'desc': 'المستوى الثانوي التأهيلي.',
      },
      {
        'period': '2020 - 2024',
        'title': 'تدريس مادة اللغة العربية',
        'place': 'مؤسسة الأرز',
        'desc': 'المستوى الإعدادي.',
      },
      {
        'period': '2012 - 2020',
        'title': 'تدريس مادة اللغة العربية والتربية الإسلامية',
        'place': 'مؤسسة ابن جلون الخاصة',
        'desc': 'المستوى الإعدادي والثانوي.',
      },
      {
        'period': '2014 - 2018',
        'title': 'تدريس مادة اللغة العربية',
        'place': 'مؤسسة البراهيمي الخاصة',
        'desc': 'المستوى الإعدادي.',
      },
      {
        'period': '2013 - 2014',
        'title': 'تدريس مادة اللغة العربية',
        'place': 'مؤسسة الرائد العلمية',
        'desc': 'المستوى الإعدادي.',
      },
      {
        'period': '2011 - 2012',
        'title': 'تدريب في تدريس مادتي اللغة العربية والتربية الإسلامية',
        'place': 'مؤسسة ابن جلون ومؤسسة السفير',
        'desc': '',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'الخبرات المهنية', Icons.work),
        const SizedBox(height: 16),
        ...experiences.map((exp) => _buildTimelineItem(
              context,
              period: exp['period']!,
              title: exp['title']!,
              subtitle: exp['place']!,
              description: exp['desc']!,
            )),
      ],
    );
  }

  Widget _buildEducationSection(BuildContext context) {
    final education = [
      {
        'period': '2017',
        'title': 'دبلوم ماستر',
        'place': 'المعهد العالي للدراسات الإسلامية | القاهرة - مصر',
      },
      {
        'period': '2011',
        'title': 'دبلوم الإجازة في الدراسات الإسلامية (ميزة مستحسن)',
        'place': 'جامعة الحسن الثاني - المحمدية',
      },
      {
        'period': '2008',
        'title': 'سنة من الدراسة بكلية الشريعة',
        'place': 'جامعة القرويين - فاس',
      },
      {
        'period': '2007',
        'title': 'شهادة البكالوريا (شعبة التعليم الأصيل)',
        'place': 'ثانوية ابن المعتز - الدار البيضاء',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'المؤهلات العلمية', Icons.school),
        const SizedBox(height: 16),
        ...education.map((edu) => _buildTimelineItem(
              context,
              period: edu['period']!,
              title: edu['title']!,
              subtitle: edu['place']!,
              description: '',
              icon: Icons.bookmark,
            )),
      ],
    );
  }

  Widget _buildTimelineItem(
    BuildContext context, {
    required String period,
    required String title,
    required String subtitle,
    required String description,
    IconData icon = Icons.circle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              period,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Column(
            children: [
              Icon(icon, size: 12, color: Theme.of(context).colorScheme.primary),
              Container(
                height: 40, // rough estimate, would be better with intrinsic height but fine for simple UI
                width: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    final skills = [
      'إتقان برامج تدريس اللغة العربية (ابتدائي، إعدادي، ثانوي)',
      'تطبيق الأساليب النشطة والبيداغوجيا الفارقية',
      'إدارة الصف والانضباط الإيجابي',
      'إعداد الملخصات المبتكرة والخرائط الذهنية لتبسيط الدروس',
      'إتقان المهارات الرقمية والوسائل التعليمية (PowerPoint, Word)',
      'العلاج والمرافقة للطلاب المتعثرين وخلق مناخ من الثقة',
      'التواصل الفعال مع أولياء الأمور',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'المهارات', Icons.star),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: skills
              .map((skill) => Chip(
                    label: Text(skill),
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildLanguagesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'اللغات', Icons.language),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildLanguageCard(
                context,
                'اللغة العربية',
                'اللغة الأم',
                1.0,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildLanguageCard(
                context,
                'اللغة الفرنسية',
                'مستوى متوسط',
                0.6,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLanguageCard(
    BuildContext context,
    String lang,
    String level,
    double proficiency,
  ) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lang,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              level,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: proficiency,
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      ),
    );
  }
}
