import '../data_providers/gitSearchDataProviders.dart';
import '../models/gitsearchModels.dart';

class GitSearchRepository {
  final GitSearchDataProvider dataProvider;
  GitSearchRepository(this.dataProvider);

  Future<GitSearch> fetchByUsername(String username) async {
    return dataProvider.fetchByUsername(username);
  }
}
