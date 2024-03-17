(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule__life_cycle = {
  data_store_type : string;  (** data_store_type *)
  duration : string;  (** duration *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule__life_cycle *)

type azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule = {
  life_cycle :
    azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule__life_cycle
    list;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule *)

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__criteria = {
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
(** azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__criteria *)

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__life_cycle = {
  data_store_type : string;  (** data_store_type *)
  duration : string;  (** duration *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__life_cycle *)

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule = {
  name : string;  (** name *)
  priority : float;  (** priority *)
  criteria :
    azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__criteria
    list;
  life_cycle :
    azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__life_cycle
    list;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule *)

type azurerm_data_protection_backup_policy_kubernetes_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster__timeouts *)

type azurerm_data_protection_backup_policy_kubernetes_cluster = {
  backup_repeating_time_intervals : string list;
      (** backup_repeating_time_intervals *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  time_zone : string option; [@option]  (** time_zone *)
  vault_name : string;  (** vault_name *)
  default_retention_rule :
    azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule
    list;
  retention_rule :
    azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule
    list;
  timeouts :
    azurerm_data_protection_backup_policy_kubernetes_cluster__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster *)

let azurerm_data_protection_backup_policy_kubernetes_cluster ?id
    ?time_zone ?timeouts ~backup_repeating_time_intervals ~name
    ~resource_group_name ~vault_name ~default_retention_rule
    ~retention_rule __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_kubernetes_cluster"
  in
  let __resource =
    {
      backup_repeating_time_intervals;
      id;
      name;
      resource_group_name;
      time_zone;
      vault_name;
      default_retention_rule;
      retention_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_kubernetes_cluster
       __resource);
  ()
