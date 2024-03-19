(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type field

val field :
  ?is_encrypted:bool prop ->
  ?is_optional:bool prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  field

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_automation_connection_type

val azurerm_automation_connection_type :
  ?id:string prop ->
  ?is_global:bool prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  field:field list ->
  unit ->
  azurerm_automation_connection_type

val yojson_of_azurerm_automation_connection_type :
  azurerm_automation_connection_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_global:bool prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  field:field list ->
  string ->
  t
