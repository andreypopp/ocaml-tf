(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__filters__match_blob_index_tag = {
  name : string prop;  (** name *)
  operation : string prop;  (** operation *)
  value : string prop;  (** value *)
}

type rule__filters = {
  blob_types : string prop list;  (** blob_types *)
  match_blob_index_tag : rule__filters__match_blob_index_tag list;
      (** match_blob_index_tag *)
  prefix_match : string prop list;  (** prefix_match *)
}

type rule__actions__version = {
  change_tier_to_archive_after_days_since_creation : float prop;
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop;
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation : float prop;
      (** delete_after_days_since_creation *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than : float prop;
      (** tier_to_cold_after_days_since_creation_greater_than *)
}

type rule__actions__snapshot = {
  change_tier_to_archive_after_days_since_creation : float prop;
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop;
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation_greater_than : float prop;
      (** delete_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than : float prop;
      (** tier_to_cold_after_days_since_creation_greater_than *)
}

type rule__actions__base_blob = {
  auto_tier_to_hot_from_cool_enabled : bool prop;
      (** auto_tier_to_hot_from_cool_enabled *)
  delete_after_days_since_creation_greater_than : float prop;
      (** delete_after_days_since_creation_greater_than *)
  delete_after_days_since_last_access_time_greater_than : float prop;
      (** delete_after_days_since_last_access_time_greater_than *)
  delete_after_days_since_modification_greater_than : float prop;
      (** delete_after_days_since_modification_greater_than *)
  tier_to_archive_after_days_since_creation_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_access_time_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_last_access_time_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_archive_after_days_since_modification_greater_than :
    float prop;
      (** tier_to_archive_after_days_since_modification_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than : float prop;
      (** tier_to_cold_after_days_since_creation_greater_than *)
  tier_to_cold_after_days_since_last_access_time_greater_than :
    float prop;
      (** tier_to_cold_after_days_since_last_access_time_greater_than *)
  tier_to_cold_after_days_since_modification_greater_than :
    float prop;
      (** tier_to_cold_after_days_since_modification_greater_than *)
  tier_to_cool_after_days_since_creation_greater_than : float prop;
      (** tier_to_cool_after_days_since_creation_greater_than *)
  tier_to_cool_after_days_since_last_access_time_greater_than :
    float prop;
      (** tier_to_cool_after_days_since_last_access_time_greater_than *)
  tier_to_cool_after_days_since_modification_greater_than :
    float prop;
      (** tier_to_cool_after_days_since_modification_greater_than *)
}

type rule__actions = {
  base_blob : rule__actions__base_blob list;  (** base_blob *)
  snapshot : rule__actions__snapshot list;  (** snapshot *)
  version : rule__actions__version list;  (** version *)
}

type rule = {
  actions : rule__actions list;  (** actions *)
  enabled : bool prop;  (** enabled *)
  filters : rule__filters list;  (** filters *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_management_policy

val azurerm_storage_management_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_management_policy

val yojson_of_azurerm_storage_management_policy :
  azurerm_storage_management_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  rule : rule list prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
