import 'package:flutter_my_app/model/dmzj_entity.dart';

dmzjEntityFromJson(DmzjEntity data, Map<String, dynamic> json) {
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['sub_title'] != null) {
		data.subTitle = json['sub_title']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['obj_id'] != null) {
		data.objId = json['obj_id']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	return data;
}

Map<String, dynamic> dmzjEntityToJson(DmzjEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['cover'] = entity.cover;
	data['title'] = entity.title;
	data['sub_title'] = entity.subTitle;
	data['type'] = entity.type;
	data['url'] = entity.url;
	data['obj_id'] = entity.objId;
	data['status'] = entity.status;
	return data;
}