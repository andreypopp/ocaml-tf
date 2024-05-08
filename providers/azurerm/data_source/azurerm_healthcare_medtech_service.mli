(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_healthcare_medtech_service

val azurerm_healthcare_medtech_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_healthcare_medtech_service

val yojson_of_azurerm_healthcare_medtech_service :
  azurerm_healthcare_medtech_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop;
  identity : identity list prop;
  name : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
