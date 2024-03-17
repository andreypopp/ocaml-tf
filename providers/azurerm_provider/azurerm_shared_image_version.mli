(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_shared_image_version__target_region
type azurerm_shared_image_version__timeouts
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
  ?timeouts:azurerm_shared_image_version__timeouts ->
  gallery_name:string prop ->
  image_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_region:azurerm_shared_image_version__target_region list ->
  string ->
  unit
