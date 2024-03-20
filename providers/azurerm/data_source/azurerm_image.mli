(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_disk = {
  blob_uri : string prop;  (** blob_uri *)
  caching : string prop;  (** caching *)
  lun : float prop;  (** lun *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  size_gb : float prop;  (** size_gb *)
}

type os_disk = {
  blob_uri : string prop;  (** blob_uri *)
  caching : string prop;  (** caching *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  os_state : string prop;  (** os_state *)
  os_type : string prop;  (** os_type *)
  size_gb : float prop;  (** size_gb *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_image

val azurerm_image :
  ?id:string prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?sort_descending:bool prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  unit ->
  azurerm_image

val yojson_of_azurerm_image : azurerm_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_disk : data_disk list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  name_regex : string prop;
  os_disk : os_disk list prop;
  resource_group_name : string prop;
  sort_descending : bool prop;
  tags : (string * string) list prop;
  zone_resilient : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?sort_descending:bool prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?sort_descending:bool prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
