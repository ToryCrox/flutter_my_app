import 'package:flutter_my_app/model/comic_model_entity.dart';

comicModelEntityFromJson(ComicModelEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['islong'] != null) {
		data.islong = json['islong']?.toInt();
	}
	if (json['direction'] != null) {
		data.direction = json['direction']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['is_dmzj'] != null) {
		data.isDmzj = json['is_dmzj']?.toInt();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['last_updatetime'] != null) {
		data.lastUpdatetime = json['last_updatetime']?.toInt();
	}
	if (json['last_update_chapter_name'] != null) {
		data.lastUpdateChapterName = json['last_update_chapter_name']?.toString();
	}
	if (json['copyright'] != null) {
		data.copyright = json['copyright']?.toInt();
	}
	if (json['first_letter'] != null) {
		data.firstLetter = json['first_letter']?.toString();
	}
	if (json['comic_py'] != null) {
		data.comicPy = json['comic_py']?.toString();
	}
	if (json['hidden'] != null) {
		data.hidden = json['hidden']?.toInt();
	}
	if (json['hot_num'] != null) {
		data.hotNum = json['hot_num']?.toInt();
	}
	if (json['hit_num'] != null) {
		data.hitNum = json['hit_num']?.toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid'];
	}
	if (json['is_lock'] != null) {
		data.isLock = json['is_lock']?.toInt();
	}
	if (json['last_update_chapter_id'] != null) {
		data.lastUpdateChapterId = json['last_update_chapter_id']?.toInt();
	}
	if (json['types'] != null) {
		data.types = new List<ComicModelType>();
		(json['types'] as List).forEach((v) {
			data.types.add(new ComicModelType().fromJson(v));
		});
	}
	if (json['status'] != null) {
		data.status = new List<ComicModelStatu>();
		(json['status'] as List).forEach((v) {
			data.status.add(new ComicModelStatu().fromJson(v));
		});
	}
	if (json['authors'] != null) {
		data.authors = new List<ComicModelAuthor>();
		(json['authors'] as List).forEach((v) {
			data.authors.add(new ComicModelAuthor().fromJson(v));
		});
	}
	if (json['subscribe_num'] != null) {
		data.subscribeNum = json['subscribe_num']?.toInt();
	}
	if (json['chapters'] != null) {
		data.chapters = new List<ComicModelChapter>();
		(json['chapters'] as List).forEach((v) {
			data.chapters.add(new ComicModelChapter().fromJson(v));
		});
	}
	if (json['comment'] != null) {
		data.comment = new ComicModelComment().fromJson(json['comment']);
	}
	if (json['is_need_login'] != null) {
		data.isNeedLogin = json['is_need_login']?.toInt();
	}
	if (json['url_links'] != null) {
		data.urlLinks = new List<dynamic>();
		data.urlLinks.addAll(json['url_links']);
	}
	if (json['isHideChapter'] != null) {
		data.isHideChapter = json['isHideChapter']?.toString();
	}
	if (json['dh_url_links'] != null) {
		data.dhUrlLinks = new List<ComicModelDhUrlLink>();
		(json['dh_url_links'] as List).forEach((v) {
			data.dhUrlLinks.add(new ComicModelDhUrlLink().fromJson(v));
		});
	}
	if (json['is_dot'] != null) {
		data.isDot = json['is_dot']?.toString();
	}
	return data;
}

Map<String, dynamic> comicModelEntityToJson(ComicModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['islong'] = entity.islong;
	data['direction'] = entity.direction;
	data['title'] = entity.title;
	data['is_dmzj'] = entity.isDmzj;
	data['cover'] = entity.cover;
	data['description'] = entity.description;
	data['last_updatetime'] = entity.lastUpdatetime;
	data['last_update_chapter_name'] = entity.lastUpdateChapterName;
	data['copyright'] = entity.copyright;
	data['first_letter'] = entity.firstLetter;
	data['comic_py'] = entity.comicPy;
	data['hidden'] = entity.hidden;
	data['hot_num'] = entity.hotNum;
	data['hit_num'] = entity.hitNum;
	data['uid'] = entity.uid;
	data['is_lock'] = entity.isLock;
	data['last_update_chapter_id'] = entity.lastUpdateChapterId;
	if (entity.types != null) {
		data['types'] =  entity.types.map((v) => v.toJson()).toList();
	}
	if (entity.status != null) {
		data['status'] =  entity.status.map((v) => v.toJson()).toList();
	}
	if (entity.authors != null) {
		data['authors'] =  entity.authors.map((v) => v.toJson()).toList();
	}
	data['subscribe_num'] = entity.subscribeNum;
	if (entity.chapters != null) {
		data['chapters'] =  entity.chapters.map((v) => v.toJson()).toList();
	}
	if (entity.comment != null) {
		data['comment'] = entity.comment.toJson();
	}
	data['is_need_login'] = entity.isNeedLogin;
	if (entity.urlLinks != null) {
		data['url_links'] =  [];
	}
	data['isHideChapter'] = entity.isHideChapter;
	if (entity.dhUrlLinks != null) {
		data['dh_url_links'] =  entity.dhUrlLinks.map((v) => v.toJson()).toList();
	}
	data['is_dot'] = entity.isDot;
	return data;
}

comicModelTypeFromJson(ComicModelType data, Map<String, dynamic> json) {
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['tag_name'] != null) {
		data.tagName = json['tag_name']?.toString();
	}
	return data;
}

Map<String, dynamic> comicModelTypeToJson(ComicModelType entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	return data;
}

comicModelStatuFromJson(ComicModelStatu data, Map<String, dynamic> json) {
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['tag_name'] != null) {
		data.tagName = json['tag_name']?.toString();
	}
	return data;
}

Map<String, dynamic> comicModelStatuToJson(ComicModelStatu entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	return data;
}

comicModelAuthorFromJson(ComicModelAuthor data, Map<String, dynamic> json) {
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['tag_name'] != null) {
		data.tagName = json['tag_name']?.toString();
	}
	return data;
}

Map<String, dynamic> comicModelAuthorToJson(ComicModelAuthor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	return data;
}

comicModelChapterFromJson(ComicModelChapter data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<ComicModelChaptersData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new ComicModelChaptersData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> comicModelChapterToJson(ComicModelChapter entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

comicModelChaptersDataFromJson(ComicModelChaptersData data, Map<String, dynamic> json) {
	if (json['chapter_id'] != null) {
		data.chapterId = json['chapter_id']?.toInt();
	}
	if (json['chapter_title'] != null) {
		data.chapterTitle = json['chapter_title']?.toString();
	}
	if (json['updatetime'] != null) {
		data.updatetime = json['updatetime']?.toInt();
	}
	if (json['filesize'] != null) {
		data.filesize = json['filesize']?.toInt();
	}
	if (json['chapter_order'] != null) {
		data.chapterOrder = json['chapter_order']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicModelChaptersDataToJson(ComicModelChaptersData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['chapter_id'] = entity.chapterId;
	data['chapter_title'] = entity.chapterTitle;
	data['updatetime'] = entity.updatetime;
	data['filesize'] = entity.filesize;
	data['chapter_order'] = entity.chapterOrder;
	return data;
}

comicModelCommentFromJson(ComicModelComment data, Map<String, dynamic> json) {
	if (json['comment_count'] != null) {
		data.commentCount = json['comment_count']?.toInt();
	}
	if (json['latest_comment'] != null) {
		data.latestComment = new List<ComicModelCommantLatestCommant>();
		(json['latest_comment'] as List).forEach((v) {
			data.latestComment.add(new ComicModelCommantLatestCommant().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> comicModelCommentToJson(ComicModelComment entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comment_count'] = entity.commentCount;
	if (entity.latestComment != null) {
		data['latest_comment'] =  entity.latestComment.map((v) => v.toJson()).toList();
	}
	return data;
}

comicModelCommantLatestCommantFromJson(ComicModelCommantLatestCommant data, Map<String, dynamic> json) {
	if (json['comment_id'] != null) {
		data.commentId = json['comment_id']?.toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid']?.toInt();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['createtime'] != null) {
		data.createtime = json['createtime']?.toInt();
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	return data;
}

Map<String, dynamic> comicModelCommantLatestCommantToJson(ComicModelCommantLatestCommant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comment_id'] = entity.commentId;
	data['uid'] = entity.uid;
	data['content'] = entity.content;
	data['createtime'] = entity.createtime;
	data['nickname'] = entity.nickname;
	data['avatar'] = entity.avatar;
	return data;
}

comicModelDhUrlLinkFromJson(ComicModelDhUrlLink data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['list'] != null) {
		data.xList = new List<dynamic>();
		data.xList.addAll(json['list']);
	}
	return data;
}

Map<String, dynamic> comicModelDhUrlLinkToJson(ComicModelDhUrlLink entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	if (entity.xList != null) {
		data['list'] =  [];
	}
	return data;
}