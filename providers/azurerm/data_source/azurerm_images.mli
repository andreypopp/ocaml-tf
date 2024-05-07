(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type images__os_disk = {
  blob_uri : string prop;  (** blob_uri *)
  caching : string prop;  (** caching *)
  disk_encryption_set_id : string prop;
      (** disk_encryption_set_id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  os_state : string prop;  (** os_state *)
  os_type : string prop;  (** os_type *)
  size_gb : float prop;  (** size_gb *)
}

type images__data_disk = {
  blob_uri : string prop;  (** blob_uri *)
  caching : string prop;  (** caching *)
  lun : float prop;  (** lun *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  size_gb : float prop;  (** size_gb *)
}

type images = {
  data_disk : images__data_disk list;  (** data_disk *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  os_disk : images__os_disk list;  (** os_disk *)
  tags : (string * string prop) list;  (** tags *)
  zone_resilient : bool prop;  (** zone_resilient *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_images

val azurerm_images :
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  unit ->
  azurerm_images

val yojson_of_azurerm_images : azurerm_images -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  images : images list prop;
  resource_group_name : string prop;
  tags_filter : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
