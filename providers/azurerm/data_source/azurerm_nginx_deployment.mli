(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scale_profile = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
  name : string prop;  (** name *)
}

type frontend_private = {
  allocation_method : string prop;  (** allocation_method *)
  ip_address : string prop;  (** ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type frontend_public = {
  ip_address : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_address *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type logging_storage_account = {
  container_name : string prop;  (** container_name *)
  name : string prop;  (** name *)
}

type network_interface = {
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_nginx_deployment

val azurerm_nginx_deployment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_nginx_deployment

val yojson_of_azurerm_nginx_deployment :
  azurerm_nginx_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_scale_profile : auto_scale_profile list prop;
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  frontend_private : frontend_private list prop;
  frontend_public : frontend_public list prop;
  id : string prop;
  identity : identity list prop;
  ip_address : string prop;
  location : string prop;
  logging_storage_account : logging_storage_account list prop;
  managed_resource_group : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
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
