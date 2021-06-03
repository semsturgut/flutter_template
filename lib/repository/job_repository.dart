import 'package:flutter_template/models/job.dart';
import 'package:flutter_template/network/network_manager.dart';

class JobRepository {
  Future<List<Job>> getJobs() async {
    return await NetworkManager.instance.getJobList();
  }
}
