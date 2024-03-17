(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_python3_package__timeouts
type azurerm_automation_python3_package

type t = private {
  automation_account_name : string prop;
  content_uri : string prop;
  content_version : string prop;
  hash_algorithm : string prop;
  hash_value : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_automation_python3_package :
  ?content_version:string prop ->
  ?hash_algorithm:string prop ->
  ?hash_value:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_automation_python3_package__timeouts ->
  automation_account_name:string prop ->
  content_uri:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
