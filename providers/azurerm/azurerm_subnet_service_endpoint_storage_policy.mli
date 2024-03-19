(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type definition

val definition :
  ?description:string prop ->
  ?service:string prop ->
  name:string prop ->
  service_resources:string prop list ->
  unit ->
  definition

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_subnet_service_endpoint_storage_policy

val azurerm_subnet_service_endpoint_storage_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  definition:definition list ->
  unit ->
  azurerm_subnet_service_endpoint_storage_policy

val yojson_of_azurerm_subnet_service_endpoint_storage_policy :
  azurerm_subnet_service_endpoint_storage_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  definition:definition list ->
  string ->
  t
