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

type azurerm_automation_dsc_configuration

val azurerm_automation_dsc_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?log_verbose:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_dsc_configuration

val yojson_of_azurerm_automation_dsc_configuration :
  azurerm_automation_dsc_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  content_embedded : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?log_verbose:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?log_verbose:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
