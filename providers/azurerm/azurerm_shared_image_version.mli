(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type target_region

val target_region :
  ?disk_encryption_set_id:string prop ->
  ?exclude_from_latest_enabled:bool prop ->
  ?storage_account_type:string prop ->
  name:string prop ->
  regional_replica_count:float prop ->
  unit ->
  target_region

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_shared_image_version

val azurerm_shared_image_version :
  ?blob_uri:string prop ->
  ?deletion_of_replicated_locations_enabled:bool prop ->
  ?end_of_life_date:string prop ->
  ?exclude_from_latest:bool prop ->
  ?id:string prop ->
  ?managed_image_id:string prop ->
  ?os_disk_snapshot_id:string prop ->
  ?replication_mode:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_region:target_region list ->
  unit ->
  azurerm_shared_image_version

val yojson_of_azurerm_shared_image_version :
  azurerm_shared_image_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blob_uri : string prop;
  deletion_of_replicated_locations_enabled : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  os_disk_snapshot_id : string prop;
  replication_mode : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?blob_uri:string prop ->
  ?deletion_of_replicated_locations_enabled:bool prop ->
  ?end_of_life_date:string prop ->
  ?exclude_from_latest:bool prop ->
  ?id:string prop ->
  ?managed_image_id:string prop ->
  ?os_disk_snapshot_id:string prop ->
  ?replication_mode:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_region:target_region list ->
  string ->
  t
