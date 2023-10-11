/// The data associated with users.
class HistoryData {
  HistoryData({
    required this.id,
    required this.date,
  });

  String id;
  String date;
}

/// Provides access to and operations on all defined users.
class HistoryDB {
  final List<HistoryData> _history = [
    HistoryData(
      id: 'history-001',
      date: '10/6',
    ),
    HistoryData(
      id: 'history-002',
      date: '10/5',
    ),
    HistoryData(
      id: 'history-003',
      date: '10/4',
    ),
    HistoryData(
      id: 'history-004',
      date: '10/3',
    ),
  ];

  HistoryData getHistory(String historyID) {
    return _history.firstWhere((historyData) => historyData.id == historyID);
  }
}

/// The singleton instance providing access to all user data for clients.
HistoryDB userDB = HistoryDB();