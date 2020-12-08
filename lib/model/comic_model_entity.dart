import 'package:flutter_my_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_my_app/generated/json/base/json_field.dart';

class ComicModelEntity with JsonConvert<ComicModelEntity> {
	int id;
	int islong;
	int direction;
	String title;
	@JSONField(name: "is_dmzj")
	int isDmzj;
	String cover;
	String description;
	@JSONField(name: "last_updatetime")
	int lastUpdatetime;
	@JSONField(name: "last_update_chapter_name")
	String lastUpdateChapterName;
	int copyright;
	@JSONField(name: "first_letter")
	String firstLetter;
	@JSONField(name: "comic_py")
	String comicPy;
	int hidden;
	@JSONField(name: "hot_num")
	int hotNum;
	@JSONField(name: "hit_num")
	int hitNum;
	dynamic uid;
	@JSONField(name: "is_lock")
	int isLock;
	@JSONField(name: "last_update_chapter_id")
	int lastUpdateChapterId;
	List<ComicModelType> types;
	List<ComicModelStatu> status;
	List<ComicModelAuthor> authors;
	@JSONField(name: "subscribe_num")
	int subscribeNum;
	List<ComicModelChapter> chapters;
	ComicModelComment comment;
	@JSONField(name: "is_need_login")
	int isNeedLogin;
	@JSONField(name: "url_links")
	List<dynamic> urlLinks;
	String isHideChapter;
	@JSONField(name: "dh_url_links")
	List<ComicModelDhUrlLink> dhUrlLinks;
	@JSONField(name: "is_dot")
	String isDot;
}

class ComicModelType with JsonConvert<ComicModelType> {
	@JSONField(name: "tag_id")
	int tagId;
	@JSONField(name: "tag_name")
	String tagName;
}

class ComicModelStatu with JsonConvert<ComicModelStatu> {
	@JSONField(name: "tag_id")
	int tagId;
	@JSONField(name: "tag_name")
	String tagName;
}

class ComicModelAuthor with JsonConvert<ComicModelAuthor> {
	@JSONField(name: "tag_id")
	int tagId;
	@JSONField(name: "tag_name")
	String tagName;
}

class ComicModelChapter with JsonConvert<ComicModelChapter> {
	String title;
	List<ComicModelChaptersData> data;
}

class ComicModelChaptersData with JsonConvert<ComicModelChaptersData> {
	@JSONField(name: "chapter_id")
	int chapterId;
	@JSONField(name: "chapter_title")
	String chapterTitle;
	int updatetime;
	int filesize;
	@JSONField(name: "chapter_order")
	int chapterOrder;
}

class ComicModelComment with JsonConvert<ComicModelComment> {
	@JSONField(name: "comment_count")
	int commentCount;
	@JSONField(name: "latest_comment")
	List<ComicModelCommantLatestCommant> latestComment;
}

class ComicModelCommantLatestCommant with JsonConvert<ComicModelCommantLatestCommant> {
	@JSONField(name: "comment_id")
	int commentId;
	int uid;
	String content;
	int createtime;
	String nickname;
	String avatar;
}

class ComicModelDhUrlLink with JsonConvert<ComicModelDhUrlLink> {
	String title;
	@JSONField(name: "list")
	List<dynamic> xList;
}
