(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku

val sku : ?tier:string prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_elastic_san

val azurerm_elastic_san :
  ?extended_size_in_tib:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  base_size_in_tib:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
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
  tags : (string * string) list prop;
  total_iops : float prop;
  total_mbps : float prop;
  total_size_in_tib : float prop;
  total_volume_size_in_gib : float prop;
  volume_group_count : float prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?extended_size_in_tib:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  base_size_in_tib:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?extended_size_in_tib:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  base_size_in_tib:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
