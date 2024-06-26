
class Modelclass {
  String? checklistId;
  String? name;
  String? chklstStatus;
  String? supervisorId;
  String? supervisorName;
  String? supervisorDesg;
  String? dateOfCreation;
  String? planMonth;
  String? totalVisits;
  String? planStatus;
  String? planDate;
  String? actualDate;
  String? planId;
  String? visitId;
  String? programName;
  String? fatype;
  String? fatypeId;
  String? facName;
  String? facId;
  String? hcptype;
  String? entrytype;
  String? hcptypeName;
  String? hcptypeId;
  String? hcpId;
  String? hcpName;
  String? version;
  int? sortOrder;
  FormSchema? formSchema;
  Modelclass({
    this.checklistId,
    this.name,
    this.chklstStatus,
    this.supervisorId,
    this.supervisorName,
    this.supervisorDesg,
    this.dateOfCreation,
    this.planMonth,
    this.totalVisits,
    this.planStatus,
    this.planDate,
    this.actualDate,
    this.planId,
    this.visitId,
    this.programName,
    this.fatype,
    this.fatypeId,
    this.facName,
    this.facId,
    this.hcptype,
    this.entrytype,
    this.hcptypeName,
    this.hcptypeId,
    this.hcpId,
    this.hcpName,
    this.version,
    this.sortOrder,
    this.formSchema,
  });
  Modelclass.fromJson(Map<String, dynamic> json) {
    checklistId = json['checklist_id'];
    name = json['name'];
    chklstStatus = json['chklst_status'];
    supervisorId = json['supervisor_id'];
    supervisorName = json['supervisor_name'];
    supervisorDesg = json['supervisor_desg'];
    dateOfCreation = json['date_of_creation'];
    planMonth = json['plan_month'];
    totalVisits = json['total_visits'];
    planStatus = json['plan_status'];
    planDate = json['plan_date'];
    actualDate = json['actual_date'];
    planId = json['plan_id'];
    visitId = json['visit_id'];
    programName = json['program_name'];
    fatype = json['fatype'];
    fatypeId = json['fatype_id'];
    facName = json['fac_name'];
    facId = json['fac_id'];
    hcptype = json['hcptype'];
    entrytype = json['entrytype'];
    hcptypeName = json['hcptype_name'];
    hcptypeId = json['hcptype_id'];
    hcpId = json['hcp_id'];
    hcpName = json['hcp_name'];
    version = json['version'];
    sortOrder = json['sort_order'];
    formSchema = json['form_schema'] != null ? FormSchema.fromJson(json['form_schema']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['checklist_id'] = checklistId;
    data['name'] = name;
    data['chklst_status'] = chklstStatus;
    data['supervisor_id'] =supervisorId;
    data['supervisor_name'] = supervisorName;
    data['supervisor_desg'] = supervisorDesg;
    data['date_of_creation'] = dateOfCreation;
    data['plan_month'] = planMonth;
    data['total_visits'] = totalVisits;
    data['plan_status'] = planStatus;
    data['plan_date'] = planDate;
    data['actual_date'] = actualDate;
    data['plan_id'] = planId;
    data['visit_id'] = visitId;
    data['program_name'] = programName;
    data['fatype'] = fatype;
    data['fatype_id'] = fatypeId;
    data['fac_name'] = facName;
    data['fac_id'] = facId;
    data['hcptype'] = hcptype;
    data['entrytype'] = entrytype;
    data['hcptype_name'] = hcptypeName;
    data['hcptype_id'] = hcptypeId;
    data['hcp_id'] = hcpId;
    data['hcp_name'] = hcpName;
    data['version'] = version;
    data['sort_order'] = sortOrder;
    if (formSchema != null) {
      data['form_schema'] =formSchema!.toJson();
    }
    return data;
  }
}
class FormSchema {
  List<FormFields>? formFields;

  FormSchema({this.formFields});

  FormSchema.fromJson(Map<String, dynamic> json) {
    if (json['form_fields'] != null) {
      formFields = [];
      json['form_fields'].forEach((v) {
        formFields!.add(FormFields.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (formFields != null) {
      data['form_fields'] = formFields!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FormFields {
  String? name;
  String? type;
  String? label;
  bool? visibility;
  int? status;
  int? level;
  String? order;
  List<Fields>? fields;
  FormFields({
    this.name,
    this.type,
    this.label,
    this.visibility,
    this.status,
    this.level,
    this.order,
    this.fields,
  });

  FormFields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    label = json['label'];
    visibility = json['visibility'];
    status = json['status'];
    level = json['level'];
    order = json['order'];
    if (json['fields'] != null) {
      fields = [];
      json['fields'].forEach((v) {
        fields!.add(Fields.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['type'] = type;
    data['label'] = label;
    data['visibility'] = visibility;
    data['status'] = status;
    data['level'] = level;
    data['order'] = order;
    if (fields != null) {
      data['fields'] = fields!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Fields {
  String? name;
  String? type;
  String? label;
  bool? visibility;
  bool? required;
  dynamic ? defaultValue;
  bool? readOnly;
  String? referenceId;
  List<Dependent>? dependent;
  String? valueSetExpression;
  Data? data;
  String? hint;

  Fields({
    this.name,
    this.type,
    this.label,
    this.visibility,
    this.required,
    this.defaultValue,
    this.readOnly,
    this.referenceId,
    this.dependent,
    this.valueSetExpression,
    this.data,
    this.hint,
  });

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    label = json['label'];
    visibility = json['visibility'];
    required = json['required'];
    defaultValue = json['default'];
    readOnly = json['read_only'];
    referenceId = json['reference_id'];
    
    if (json['dependent'] != null) {
      dependent = [];
      json['dependent'];
    }
    valueSetExpression = json['value_set_expression'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    hint = json['hint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['type'] = type;
    data['label'] = label;
    data['visibility'] = visibility;
    data['required'] = required;
    data['default'] = defaultValue;
    data['read_only'] = readOnly;
    data['reference_id'] = referenceId;
    if (dependent != null) {
      data['dependent'] = dependent!.map((v) => v.toJson()).toList();
    }
    data['value_set_expression'] = valueSetExpression;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['hint'] = hint;
    return data;
  }
}
class Dependent {
  Dependent();
  Dependent.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}
class Data {
  String? heading;
  bool? divider;
  Data({this.heading, this.divider});
  Data.fromJson(Map<String, dynamic> json) {
    heading = json['heading'];
    divider = json['divider'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['heading'] = heading;
    data['divider'] = divider;
    return data;
  }
}

// class ModelClass {
//   List<Message>? message;

//   ModelClass({this.message});

//   ModelClass.fromJson(Map<String, dynamic> json) {
//     if (json['message'] != null) {
//       message = [];
//       json['message'].forEach((v) {
//         message!.add(Message.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     if (this.message != null) {
//       data['message'] = this.message!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
