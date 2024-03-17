(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_management_policy__rule__actions__base_blob = {
  auto_tier_to_hot_from_cool_enabled : bool prop option; [@option]
      (** auto_tier_to_hot_from_cool_enabled *)
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
      (** delete_after_days_since_creation_greater_than *)
  delete_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** delete_after_days_since_last_access_time_greater_than *)
  delete_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** delete_after_days_since_modification_greater_than *)
  tier_to_archive_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_access_time_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_archive_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_modification_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
  tier_to_cold_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_last_access_time_greater_than *)
  tier_to_cold_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_modification_greater_than *)
  tier_to_cool_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_creation_greater_than *)
  tier_to_cool_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_last_access_time_greater_than *)
  tier_to_cool_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_modification_greater_than *)
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__actions__base_blob *)

type azurerm_storage_management_policy__rule__actions__snapshot = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
      (** delete_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__actions__snapshot *)

type azurerm_storage_management_policy__rule__actions__version = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation : float prop option; [@option]
      (** delete_after_days_since_creation *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__actions__version *)

type azurerm_storage_management_policy__rule__actions = {
  base_blob :
    azurerm_storage_management_policy__rule__actions__base_blob list;
  snapshot :
    azurerm_storage_management_policy__rule__actions__snapshot list;
  version :
    azurerm_storage_management_policy__rule__actions__version list;
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__actions *)

type azurerm_storage_management_policy__rule__filters__match_blob_index_tag = {
  name : string prop;  (** name *)
  operation : string prop option; [@option]  (** operation *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__filters__match_blob_index_tag *)

type azurerm_storage_management_policy__rule__filters = {
  blob_types : string prop list;  (** blob_types *)
  prefix_match : string prop list option; [@option]
      (** prefix_match *)
  match_blob_index_tag :
    azurerm_storage_management_policy__rule__filters__match_blob_index_tag
    list;
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule__filters *)

type azurerm_storage_management_policy__rule = {
  enabled : bool prop;  (** enabled *)
  name : string prop;  (** name *)
  actions : azurerm_storage_management_policy__rule__actions list;
  filters : azurerm_storage_management_policy__rule__filters list;
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__rule *)

type azurerm_storage_management_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy__timeouts *)

type azurerm_storage_management_policy = {
  id : string prop option; [@option]  (** id *)
  storage_account_id : string prop;  (** storage_account_id *)
  rule : azurerm_storage_management_policy__rule list;
  timeouts : azurerm_storage_management_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy *)

let azurerm_storage_management_policy ?id ?timeouts
    ~storage_account_id ~rule __resource_id =
  let __resource_type = "azurerm_storage_management_policy" in
  let __resource = { id; storage_account_id; rule; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_management_policy __resource);
  ()
