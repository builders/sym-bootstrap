<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegroup extends Datasource{

		public $dsParamROOTELEMENT = 'group';

		

		

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Group',
				'author' => array(
					'name' => 'Stephen Bau',
					'website' => 'http://home/sym/bootstrap',
					'email' => 'bauhouse@gmail.com'),
				'version' => 'Symphony 2.2.3',
				'release-date' => '2011-09-27T04:13:28+00:00'
			);
		}

		public function getSource(){
			return 'static_xml';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$this->dsSTATIC = '<group>
  <item>1</item>
  <item>2</item>
  <item>3</item>
  <item>4</item>
  <item>5</item>
</group>';
include(TOOLKIT . '/data-sources/datasource.static.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
