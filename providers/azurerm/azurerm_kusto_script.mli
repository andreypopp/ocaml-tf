(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kusto_script

val azurerm_kusto_script :
  ?continue_on_errors_enabled:bool prop ->
  ?force_an_update_when_value_changed:string prop ->
  ?id:string prop ->
  ?sas_token:string prop ->
  ?script_content:string prop ->
  ?url:string prop ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_kusto_script

val yojson_of_azurerm_kusto_script : azurerm_kusto_script -> json

(** RESOURCE REGISTRATION *)

type t = private {
  continue_on_errors_enabled : bool prop;
  database_id : string prop;
  force_an_update_when_value_changed : string prop;
  id : string prop;
  name : string prop;
  sas_token : string prop;
  script_content : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?continue_on_errors_enabled:bool prop ->
  ?force_an_update_when_value_changed:string prop ->
  ?id:string prop ->
  ?sas_token:string prop ->
  ?script_content:string prop ->
  ?url:string prop ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  name:string prop ->
  string ->
  t
