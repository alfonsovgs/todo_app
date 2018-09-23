class Todo {
  int _id;
  String _tittle;
  String _description;
  String _date;
  int _priority;

  Todo(this._tittle, this._priority, this._date, [this._description]);
  Todo.withId(this._id, this._tittle, this._priority, this._date,
      [this._description]);

  int get id => _id;
  String get title => _tittle;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  set title(String newTitle) {
    if (newTitle.length <= 255) _tittle = newTitle;
  }

  set description(String newDescription) {
    _description = newDescription;
  }

  set date(String newDate) {
    if (newDate.length <= 255) _date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 0 && newPriority <= 3) _priority = newPriority;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['title'] = _tittle;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    if (_id != null) map['id'] = _id;

    return map;
  }

  Todo.fromObject(dynamic o) {
    this._id = o['id'];
    this._tittle = o['title'];
    this._description = o['description'];
    this._priority = o['priority'];
    this._date = o['date'];
  }
}
