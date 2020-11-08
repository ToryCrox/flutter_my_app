import 'package:flutter_my_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_my_app/generated/json/base/json_field.dart';

class DmzjEntity with JsonConvert<DmzjEntity> {
	String cover;
	String title;
	@JSONField(name: "sub_title")
	String subTitle;
	int type;
	String url;
	@JSONField(name: "obj_id")
	int objId;
	String status;
}
