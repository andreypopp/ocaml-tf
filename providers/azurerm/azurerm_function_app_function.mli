(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type file

val file : content:string prop -> name:string prop -> unit -> file

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_function_app_function

val azurerm_function_app_function :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?test_data:string prop ->
  ?timeouts:timeouts ->
  config_json:string prop ->
  function_app_id:string prop ->
  name:string prop ->
  file:file list ->
  unit ->
  azurerm_function_app_function

val yojson_of_azurerm_function_app_function :
  azurerm_function_app_function -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?test_data:string prop ->
  ?timeouts:timeouts ->
  config_json:string prop ->
  function_app_id:string prop ->
  name:string prop ->
  file:file list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?test_data:string prop ->
  ?timeouts:timeouts ->
  config_json:string prop ->
  function_app_id:string prop ->
  name:string prop ->
  file:file list ->
  string ->
  t Tf_core.resource
