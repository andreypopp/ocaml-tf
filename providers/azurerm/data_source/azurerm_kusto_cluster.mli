(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_kusto_cluster

val azurerm_kusto_cluster :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kusto_cluster

val yojson_of_azurerm_kusto_cluster : azurerm_kusto_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_ingestion_uri : string prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  uri : string prop;
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
