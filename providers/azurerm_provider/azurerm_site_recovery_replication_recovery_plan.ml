(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_site_recovery_replication_recovery_plan__azure_to_azure_settings = {
  primary_edge_zone : string option; [@option]
      (** primary_edge_zone *)
  primary_zone : string option; [@option]  (** primary_zone *)
  recovery_edge_zone : string option; [@option]
      (** recovery_edge_zone *)
  recovery_zone : string option; [@option]  (** recovery_zone *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__azure_to_azure_settings *)

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__post_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__post_action *)

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__pre_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__pre_action *)

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group = {
  replicated_protected_items : string list option; [@option]
      (** replicated_protected_items *)
  post_action :
    azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__post_action
    list;
  pre_action :
    azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__pre_action
    list;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__boot_recovery_group *)

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__post_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__post_action *)

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__pre_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__pre_action *)

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group = {
  post_action :
    azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__post_action
    list;
  pre_action :
    azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__pre_action
    list;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__failover_recovery_group *)

type azurerm_site_recovery_replication_recovery_plan__recovery_group__post_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__recovery_group__post_action *)

type azurerm_site_recovery_replication_recovery_plan__recovery_group__pre_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__recovery_group__pre_action *)

type azurerm_site_recovery_replication_recovery_plan__recovery_group = {
  replicated_protected_items : string list option; [@option]
      (** replicated_protected_items *)
  type_ : string; [@key "type"]  (** type *)
  post_action :
    azurerm_site_recovery_replication_recovery_plan__recovery_group__post_action
    list;
  pre_action :
    azurerm_site_recovery_replication_recovery_plan__recovery_group__pre_action
    list;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__recovery_group *)

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__post_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__post_action *)

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__pre_action = {
  fabric_location : string option; [@option]  (** fabric_location *)
  fail_over_directions : string list;  (** fail_over_directions *)
  fail_over_types : string list;  (** fail_over_types *)
  manual_action_instruction : string option; [@option]
      (** manual_action_instruction *)
  name : string;  (** name *)
  runbook_id : string option; [@option]  (** runbook_id *)
  script_path : string option; [@option]  (** script_path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__pre_action *)

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group = {
  post_action :
    azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__post_action
    list;
  pre_action :
    azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__pre_action
    list;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group *)

type azurerm_site_recovery_replication_recovery_plan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan__timeouts *)

type azurerm_site_recovery_replication_recovery_plan = {
  name : string;  (** name *)
  recovery_vault_id : string;  (** recovery_vault_id *)
  source_recovery_fabric_id : string;
      (** source_recovery_fabric_id *)
  target_recovery_fabric_id : string;
      (** target_recovery_fabric_id *)
  azure_to_azure_settings :
    azurerm_site_recovery_replication_recovery_plan__azure_to_azure_settings
    list;
  boot_recovery_group :
    azurerm_site_recovery_replication_recovery_plan__boot_recovery_group
    list;
  failover_recovery_group :
    azurerm_site_recovery_replication_recovery_plan__failover_recovery_group
    list;
  recovery_group :
    azurerm_site_recovery_replication_recovery_plan__recovery_group
    list;
  shutdown_recovery_group :
    azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group
    list;
  timeouts :
    azurerm_site_recovery_replication_recovery_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan *)

let azurerm_site_recovery_replication_recovery_plan ?timeouts ~name
    ~recovery_vault_id ~source_recovery_fabric_id
    ~target_recovery_fabric_id ~azure_to_azure_settings
    ~boot_recovery_group ~failover_recovery_group ~recovery_group
    ~shutdown_recovery_group __resource_id =
  let __resource_type =
    "azurerm_site_recovery_replication_recovery_plan"
  in
  let __resource =
    {
      name;
      recovery_vault_id;
      source_recovery_fabric_id;
      target_recovery_fabric_id;
      azure_to_azure_settings;
      boot_recovery_group;
      failover_recovery_group;
      recovery_group;
      shutdown_recovery_group;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_replication_recovery_plan
       __resource);
  ()
