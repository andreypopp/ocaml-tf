(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_python3_package__timeouts
type azurerm_automation_python3_package

val azurerm_automation_python3_package :
  ?content_version:string ->
  ?hash_algorithm:string ->
  ?hash_value:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automation_python3_package__timeouts ->
  automation_account_name:string ->
  content_uri:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
