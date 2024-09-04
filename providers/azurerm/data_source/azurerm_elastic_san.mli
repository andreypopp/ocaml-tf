(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku = {
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_elastic_san

val azurerm_elastic_san :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_elastic_san

val yojson_of_azurerm_elastic_san : azurerm_elastic_san -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_size_in_tib : float prop;
  extended_size_in_tib : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : sku list prop;
  tags : string Tf_core.assoc prop;
  total_iops : float prop;
  total_mbps : float prop;
  total_size_in_tib : float prop;
  total_volume_size_in_gib : float prop;
  volume_group_count : float prop;
  zones : string list prop;
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
