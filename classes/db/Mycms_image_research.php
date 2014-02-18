<?php
/**
 * Table Definition for mycms_image_research
 */
require_once 'DB/DataObject.php';

class Mycms_image_research extends DB_DataObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'mycms_image_research';    // table name
    public $image_id;                        // int(11)  not_null primary_key
    public $research_id;                     // int(11)  not_null primary_key
    public $image_order;                     // int(11)  
    public $research_order;                  // int(11)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
