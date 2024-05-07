(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_region = {
  name : string prop;  (** name *)
  regional_replica_count : float prop;  (** regional_replica_count *)
  storage_account_type : string prop;  (** storage_account_type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_shared_image_version

val azurerm_shared_image_version :
  ?id:string prop ->
  ?sort_versions_by_semver:bool prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_shared_image_version

val yojson_of_azurerm_shared_image_version :
  azurerm_shared_image_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  exclude_from_latest : bool prop;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  os_disk_image_size_gb : float prop;
  os_disk_snapshot_id : string prop;
  resource_group_name : string prop;
  sort_versions_by_semver : bool prop;
  tags : (string * string) list prop;
  target_region : target_region list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sort_versions_by_semver:bool prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sort_versions_by_semver:bool prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
