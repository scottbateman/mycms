<?php

//=============================================================================

namespace mycms;
require_once 'classes/content.php';
global $g;

//=============================================================================

class image extends content {

	public $ext	  = ["gif", "jpeg", "jpg", "png"];
	public $mime	 = ["image/gif", "image/jpeg", "image/jpg", "image/png"];
	public $max_size = 409600; // 400 * 1024;

	public $__table = 'mycms_image';		 // table name
	public $image_id;						// int(11)  not_null primary_key unique_key auto_increment
	public $image_filename;				  // string(250)  not_null

	public $displays = [
		'default' => [],
		'teaser'  => []
	];

	public function __construct() {
		parent::__construct('image');
	}
}
$g['content']['image'] = new image();

//=============================================================================

class video extends content {

	public $__table = 'mycms_video';		 // table name
	public $video_id;						// int(11)  not_null primary_key unique_key auto_increment
	public $video_filename;				  // string(250)  not_null

	public $displays = [
		'default' => [],
		'teaser'  => []
	];

	public function __construct() {
		parent::__construct('video');
	}
}
$g['content']['video'] = new video();

//=============================================================================

class doc extends content {

	public $__table = 'mycms_doc';		   // table name
	public $doc_id;						  // int(11)  not_null primary_key unique_key auto_increment
	public $doc_filename;					// string(250)  not_null

	public $displays = [
		'default' => [],
		'teaser'  => []
	];

	public function __construct() {
		parent::__construct('doc');
	}
}
$g['content']['doc'] = new doc();

//=============================================================================

/*

int:min,max
alphabetic
alphabetic-utf8
email
string:regex_pattern
enum:val1,val2...
date:string_format

*/

class people extends content {

	public $__table = 'mycms_people';	// table name
	public $people_id;					// int(11)  not_null primary_key unique_key auto_increment
	public $people_firstname;			// string(50)  not_null
	public $people_middlename;			// string(50)
	public $people_lastname;			// string(50)  not_null
	public $people_affiliation;			// string(100)
	public $people_email;				// string(50)
	public $people_bio;					// string(1000)
	public $people_group;				// string(21)  not_null enum
	public $people_start;				// date(10)  binary
	public $people_end;					// date(10)  binary

	public $field_type = [
		'people_id'		     => 'int:0,',
		'people_firstname'   => 'alphabetic',
		'people_middlename'  => 'alphabetic',
		'people_lastname'	 => 'alphabetic',
		'people_affiliation' => 'string',
		'people_email'	     => 'email',
		'people_bio'		 => 'string',
		'people_group'	     => 'enum:faculty,adjunct_faculty,researcher,graduate_student,undergraduate_student,alumni,recent_visitor',
		'people_start'	     => 'date:Y-m-d',
		'people_end'		 => 'date:Y-m-d'
	];

	public $references = [
		'image',
		'research',
		'publication'
	];

	public $displays = [
		'default' => [
			'image'	   => 'all',
			'research'	=> 'all',
			'publication' => 'all'],
		'teaser' => [
			'image' => 'max']
	];

	public $title_format = 'people_firstname people_middlename people_lastname';

	public function __construct() {
		parent::__construct('people');
	}
}
$g['content']['people'] = new people();

//=============================================================================

class research extends content {

	public $__table = 'mycms_research';	 // table name
	public $research_id;				 // int(11)  not_null primary_key unique_key auto_increment
	public $research_title;				 // string(150)  not_null
	public $research_summary;			 // string(300)
	public $research_description;		 // string(1500)
	public $research_status;			 // string(7)  not_null enum
	public $research_priority;			 // string(1)  not_null enum

    public $field_type = [
        'research_id'          => 'int:0,',
        'research_title'       => 'string',
        'research_summary'     => 'string',
        'research_description' => 'string',
        'research_status'      => 'enum:active,future,onhold,past,unknown',
        'research_priority'    => 'enum:1,2,3,4,5',
    ];

    public $references = [
        'image',
        'video',
        'people',
        'publication'
    ];

	public $displays = [
		'default' => [
			'image'	   => 'all',
			'video'	   => 'all',
			'people'	  => 'all',
			'publication' => 'all'],
		'teaser' => [
			'image' => 'max'],
		'tiny' => [
			'research_title',
			'image' => 'max']
	];

    public $title_format = 'research_title';

	public function __construct() {
		parent::__construct('research');
	}
}
$g['content']['research'] = new research();

//=============================================================================

class publication extends content {

	public $__table = 'mycms_publication';	// table name
	public $publication_id;				  // int(11)  not_null primary_key unique_key auto_increment
	public $publication_type;				// string(13)  not_null enum
	public $publication_title;			   // string(300)  not_null
	public $publication_booktitle;		   // string(300)
	public $publication_abstract;			// string(2000)  not_null
	public $publication_year;				// year(4)  not_null unsigned zerofill
	public $publication_month;			   // string(9)  enum
	public $publication_toappear;			// int(1)  not_null
	public $publication_volume;			  // int(11)
	public $publication_issuenum;			// int(11)
	public $publication_series;			  // string(30)
	public $publication_address;			 // string(50)
	public $publication_pages;			   // int(11)
	public $publication_doi_number;		  // string(20)
	public $publication_note;				// int(200)
	public $publication_journal;			 // string(200)
	public $publication_isbn;				// string(20)
	public $publication_edition;			 // int(11)
	public $publication_chapter;			 // int(11)
	public $publication_technumber;		  // string(20)
	public $publication_school;			  // string(50)
	public $publication_howpublished;		// string(50)
	public $publication_institution;		 // string(50)
	public $publication_organization;		// string(50)
	public $publication_publisher;		   // string(50)
	public $publication_url;				 // string(300)

	public $title_format = 'publication_title';

	public $displays = [
		'default' => [
			'image'	=> 'all',
			'video'	=> 'all',
			'doc'	  => 'all',
			'research' => 'all',
			'people'   => 'all'],
		'teaser' => [
			'doc'  => 'max',
			'video'  => 'max',
			'people' => 'all']
	];

	public function __construct() {
		parent::__construct('publication');
	}
}
$g['content']['publication'] = new publication();

//=============================================================================

class course extends content {

	public function __construct() {
		parent::__construct('course');
	}
}
$g['content']['course'] = new course();

//=============================================================================

class download extends content {

	public $displays = [
		'default' => [],
		'teaser' => []
	];

	public function __construct() {
		parent::__construct('download');
	}
}
$g['content']['download'] = new download();

//=============================================================================

