import 'package:bbb_app/src/connect/meeting/meeting_info.dart';

/// Updater for the loading status.
typedef void StatusUpdater(bool isWaitingRoom);

/// Loader for meeting infos.
abstract class MeetingInfoLoader {
  /// Load meeting info for the passed [meetingUrl], [password] and [name].
  Future<MeetingInfo> load(
    String meetingUrl,
    String password,
    String name, {
    StatusUpdater statusUpdater,
  });
}
