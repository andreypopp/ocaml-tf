(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
      (** absolute_criteria *)
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  months_of_year : string prop list option; [@option]
      (** months_of_year *)
  scheduled_backup_times : string prop list option; [@option]
      (** scheduled_backup_times *)
  weeks_of_month : string prop list option; [@option]
      (** weeks_of_month *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria *)

type azurerm_data_protection_backup_policy_postgresql__retention_rule = {
  duration : string prop;  (** duration *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  criteria :
    azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria
    list;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__retention_rule *)

type azurerm_data_protection_backup_policy_postgresql__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql__timeouts *)

type azurerm_data_protection_backup_policy_postgresql = {
  backup_repeating_time_intervals : string prop list;
      (** backup_repeating_time_intervals *)
  default_retention_duration : string prop;
      (** default_retention_duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  vault_name : string prop;  (** vault_name *)
  retention_rule :
    azurerm_data_protection_backup_policy_postgresql__retention_rule
    list;
  timeouts :
    azurerm_data_protection_backup_policy_postgresql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql *)

type t = {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop;
  vault_name : string prop;
}

let azurerm_data_protection_backup_policy_postgresql ?id ?time_zone
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name ~retention_rule __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_postgresql"
  in
  let __resource =
    ({
       backup_repeating_time_intervals;
       default_retention_duration;
       id;
       name;
       resource_group_name;
       time_zone;
       vault_name;
       retention_rule;
       timeouts;
     }
      : azurerm_data_protection_backup_policy_postgresql)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_postgresql
       __resource);
  let __resource_attributes =
    ({
       backup_repeating_time_intervals =
         Prop.computed __resource_type __resource_id
           "backup_repeating_time_intervals";
       default_retention_duration =
         Prop.computed __resource_type __resource_id
           "default_retention_duration";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
       vault_name =
         Prop.computed __resource_type __resource_id "vault_name";
     }
      : t)
  in
  __resource_attributes
