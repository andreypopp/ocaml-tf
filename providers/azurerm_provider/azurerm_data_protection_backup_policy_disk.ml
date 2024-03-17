(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_policy_disk__retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
      (** absolute_criteria *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_disk__retention_rule__criteria *)

type azurerm_data_protection_backup_policy_disk__retention_rule = {
  duration : string prop;  (** duration *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  criteria :
    azurerm_data_protection_backup_policy_disk__retention_rule__criteria
    list;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_disk__retention_rule *)

type azurerm_data_protection_backup_policy_disk__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_disk__timeouts *)

type azurerm_data_protection_backup_policy_disk = {
  backup_repeating_time_intervals : string prop list;
      (** backup_repeating_time_intervals *)
  default_retention_duration : string prop;
      (** default_retention_duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  vault_id : string prop;  (** vault_id *)
  retention_rule :
    azurerm_data_protection_backup_policy_disk__retention_rule list;
  timeouts :
    azurerm_data_protection_backup_policy_disk__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_disk *)

let azurerm_data_protection_backup_policy_disk ?id ?time_zone
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~vault_id ~retention_rule
    __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_disk"
  in
  let __resource =
    {
      backup_repeating_time_intervals;
      default_retention_duration;
      id;
      name;
      time_zone;
      vault_id;
      retention_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_disk __resource);
  ()
