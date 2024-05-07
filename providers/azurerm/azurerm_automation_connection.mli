(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_connection

val azurerm_automation_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  values:(string * string prop) list ->
  unit ->
  azurerm_automation_connection

val yojson_of_azurerm_automation_connection :
  azurerm_automation_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  values : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  values:(string * string prop) list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  values:(string * string prop) list ->
  string ->
  t Tf_core.resource
