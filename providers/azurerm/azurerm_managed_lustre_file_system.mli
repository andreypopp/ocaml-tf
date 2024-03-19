(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type encryption_key

val encryption_key :
  key_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  encryption_key

type hsm_setting

val hsm_setting :
  ?import_prefix:string prop ->
  container_id:string prop ->
  logging_container_id:string prop ->
  unit ->
  hsm_setting

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type maintenance_window

val maintenance_window :
  day_of_week:string prop ->
  time_of_day_in_utc:string prop ->
  unit ->
  maintenance_window

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_managed_lustre_file_system

val azurerm_managed_lustre_file_system :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_capacity_in_tb:float prop ->
  subnet_id:string prop ->
  zones:string prop list ->
  encryption_key:encryption_key list ->
  hsm_setting:hsm_setting list ->
  identity:identity list ->
  maintenance_window:maintenance_window list ->
  unit ->
  azurerm_managed_lustre_file_system

val yojson_of_azurerm_managed_lustre_file_system :
  azurerm_managed_lustre_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  mgs_address : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_capacity_in_tb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_capacity_in_tb:float prop ->
  subnet_id:string prop ->
  zones:string prop list ->
  encryption_key:encryption_key list ->
  hsm_setting:hsm_setting list ->
  identity:identity list ->
  maintenance_window:maintenance_window list ->
  string ->
  t
