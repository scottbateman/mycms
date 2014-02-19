<?php

//-----------------------------------------------------------------------------

namespace mycms;

//-----------------------------------------------------------------------------

class error {

//-----------------------------------------------------------------------------

    private $errors = array();

//-----------------------------------------------------------------------------

    public function __construct()
    {
        if(!isset($_SESSION['error'])){
            $_SESSION['error'] = array();
        } else {
            $this->errors = array_merge($this->errors, $_SESSION['error']);
            $_SESSION['error'] = array();
        }
    }

//-----------------------------------------------------------------------------

    /**
     * $level could be "info", "warning", "error"
     **/
    public function push($msg, $level = 'info', $future = false)
    {
        global $g;

		if (in_array(gettype($msg), array('object', 'array'))) {
			ob_start();
			var_dump($msg);
			$msg = ob_get_clean();
		} else {
			$msg = nl2br($msg);
		}

        if($future){
            $_SESSION['error'][] = array('msg' => $msg, 'level' => $level);
        }else{
            $this->errors[] = array('msg' => $msg, 'level' => $level);
        }
    }

//-----------------------------------------------------------------------------

    public function get_all()
    {
        return $this->errors;
    }

//-----------------------------------------------------------------------------

}

//-----------------------------------------------------------------------------
