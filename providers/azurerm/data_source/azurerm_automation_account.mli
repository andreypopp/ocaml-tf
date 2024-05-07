(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_automation_account

val azurerm_automation_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_account

val yojson_of_azurerm_automation_account :
  azurerm_automation_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint : string prop;
  hybrid_service_url : string prop;
  id : string prop;
  identity : identity list prop;
  name : string prop;
  primary_key : string prop;
  private_endpoint_connection :
    private_endpoint_connection list prop;
  resource_group_name : string prop;
  secondary_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
