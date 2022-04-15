part of '../surah_index_screen.dart';

class _SuraTile extends StatelessWidget {
  final Chapter? chapter;

  const _SuraTile({
    Key? key,
    this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      child: ListTile(
        minLeadingWidth: 15.0,
        leading: Text(chapter!.number!.toString()),
        title: Text(
          chapter!.name!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(chapter!.englishName!),
        trailing: Text(
          chapter!.name!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PageScreen(
                chapter: chapter,
              ),
            ),
          );
        },
        onLongPress: () => showDialog(
          context: context,
          builder: (context) => _SurahInformation(
            chapterData: chapter,
          ),
        ),
      ),
    );
  }
}
