(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_type__field
type azurerm_automation_connection_type__timeouts
type azurerm_automation_connection_type

type t = private {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_automation_connection_type :
  ?id:string prop ->
  ?is_global:bool prop ->
  ?timeouts:azurerm_automation_connection_type__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  field:azurerm_automation_connection_type__field list ->
  string ->
  t
