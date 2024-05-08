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

type persistent_disk = {
  mount_path : string prop;  (** mount_path *)
  size_in_gb : float prop;  (** size_in_gb *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_spring_cloud_app

val azurerm_spring_cloud_app :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  unit ->
  azurerm_spring_cloud_app

val yojson_of_azurerm_spring_cloud_app :
  azurerm_spring_cloud_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  https_only : bool prop;
  id : string prop;
  identity : identity list prop;
  is_public : bool prop;
  name : string prop;
  persistent_disk : persistent_disk list prop;
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
