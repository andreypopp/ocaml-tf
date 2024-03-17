(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_function__file
type azurerm_function_app_function__timeouts
type azurerm_function_app_function

type t = private {
  config_json : string prop;
  config_url : string prop;
  enabled : bool prop;
  function_app_id : string prop;
  id : string prop;
  invocation_url : string prop;
  language : string prop;
  name : string prop;
  script_root_path_url : string prop;
  script_url : string prop;
  secrets_file_url : string prop;
  test_data : string prop;
  test_data_url : string prop;
  url : string prop;
}

val azurerm_function_app_function :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?test_data:string prop ->
  ?timeouts:azurerm_function_app_function__timeouts ->
  config_json:string prop ->
  function_app_id:string prop ->
  name:string prop ->
  file:azurerm_function_app_function__file list ->
  string ->
  t
