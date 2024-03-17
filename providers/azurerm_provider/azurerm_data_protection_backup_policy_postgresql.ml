(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria = {
  absolute_criteria : string option; [@option]
      (** absolute_criteria *)
  days_of_week : string list option; [@option]  (** days_of_week *)
  months_of_year : string list option; [@option]
      (** months_of_year *)
  scheduled_backup_times : string list option; [@option]
      (** scheduled_backup_times *)
  weeks_of_month : string list option; [@option]
      (** weeks_of_month *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria *)

type azurerm_data_protection_backup_policy_postgresql__retention_rule = {
  duration : string;  (** duration *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  criteria :
    azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria
    list;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__retention_rule *)

type azurerm_data_protection_backup_policy_postgresql__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__timeouts *)

type azurerm_data_protection_backup_policy_postgresql = {
  backup_repeating_time_intervals : string list;
      (** backup_repeating_time_intervals *)
  default_retention_duration : string;
      (** default_retention_duration *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  time_zone : string option; [@option]  (** time_zone *)
  vault_name : string;  (** vault_name *)
  retention_rule :
    azurerm_data_protection_backup_policy_postgresql__retention_rule
    list;
  timeouts :
    azurerm_data_protection_backup_policy_postgresql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql *)

let azurerm_data_protection_backup_policy_postgresql ?time_zone
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name ~retention_rule __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_postgresql"
  in
  let __resource =
    {
      backup_repeating_time_intervals;
      default_retention_duration;
      name;
      resource_group_name;
      time_zone;
      vault_name;
      retention_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_postgresql
       __resource);
  ()
