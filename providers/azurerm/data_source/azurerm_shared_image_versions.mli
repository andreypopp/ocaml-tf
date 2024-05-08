(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type images__target_region = {
  name : string prop;  (** name *)
  regional_replica_count : float prop;  (** regional_replica_count *)
  storage_account_type : string prop;  (** storage_account_type *)
}

type images = {
  exclude_from_latest : bool prop;  (** exclude_from_latest *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  managed_image_id : string prop;  (** managed_image_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list;  (** tags *)
  target_region : images__target_region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target_region *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_shared_image_versions

val azurerm_shared_image_versions :
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_shared_image_versions

val yojson_of_azurerm_shared_image_versions :
  azurerm_shared_image_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  images : images list prop;
  resource_group_name : string prop;
  tags_filter : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags_filter:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
