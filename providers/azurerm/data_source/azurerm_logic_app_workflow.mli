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

type azurerm_logic_app_workflow

val azurerm_logic_app_workflow :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_workflow

val yojson_of_azurerm_logic_app_workflow :
  azurerm_logic_app_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_endpoint : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  logic_app_integration_account_id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
  workflow_schema : string prop;
  workflow_version : string prop;
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
