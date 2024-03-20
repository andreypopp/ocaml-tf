(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type plan

val plan :
  ?promotion_code:string prop ->
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  version:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_managed_application

val azurerm_managed_application :
  ?application_definition_id:string prop ->
  ?id:string prop ->
  ?parameter_values:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  managed_resource_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  unit ->
  azurerm_managed_application

val yojson_of_azurerm_managed_application :
  azurerm_managed_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_definition_id : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameter_values : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_definition_id:string prop ->
  ?id:string prop ->
  ?parameter_values:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  managed_resource_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  string ->
  t

val make :
  ?application_definition_id:string prop ->
  ?id:string prop ->
  ?parameter_values:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  managed_resource_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  string ->
  t Tf_core.resource
