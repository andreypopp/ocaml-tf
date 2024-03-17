(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_shared_image_version__target_region
type azurerm_shared_image_version__timeouts
type azurerm_shared_image_version

val azurerm_shared_image_version :
  ?blob_uri:string ->
  ?deletion_of_replicated_locations_enabled:bool ->
  ?end_of_life_date:string ->
  ?exclude_from_latest:bool ->
  ?managed_image_id:string ->
  ?os_disk_snapshot_id:string ->
  ?replication_mode:string ->
  ?storage_account_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_shared_image_version__timeouts ->
  gallery_name:string ->
  image_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  target_region:azurerm_shared_image_version__target_region list ->
  string ->
  unit
