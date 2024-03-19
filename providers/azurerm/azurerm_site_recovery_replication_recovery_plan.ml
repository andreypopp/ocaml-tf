(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azure_to_azure_settings = {
  primary_edge_zone : string prop option; [@option]
      (** primary_edge_zone *)
  primary_zone : string prop option; [@option]  (** primary_zone *)
  recovery_edge_zone : string prop option; [@option]
      (** recovery_edge_zone *)
  recovery_zone : string prop option; [@option]  (** recovery_zone *)
}
[@@deriving yojson_of]
(** azure_to_azure_settings *)

type boot_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** boot_recovery_group__post_action *)

type boot_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** boot_recovery_group__pre_action *)

type boot_recovery_group = {
  replicated_protected_items : string prop list option; [@option]
      (** replicated_protected_items *)
  post_action : boot_recovery_group__post_action list;
  pre_action : boot_recovery_group__pre_action list;
}
[@@deriving yojson_of]
(** boot_recovery_group *)

type failover_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** failover_recovery_group__post_action *)

type failover_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** failover_recovery_group__pre_action *)

type failover_recovery_group = {
  post_action : failover_recovery_group__post_action list;
  pre_action : failover_recovery_group__pre_action list;
}
[@@deriving yojson_of]
(** failover_recovery_group *)

type recovery_group__post_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** recovery_group__post_action *)

type recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** recovery_group__pre_action *)

type recovery_group = {
  replicated_protected_items : string prop list option; [@option]
      (** replicated_protected_items *)
  type_ : string prop; [@key "type"]  (** type *)
  post_action : recovery_group__post_action list;
  pre_action : recovery_group__pre_action list;
}
[@@deriving yojson_of]
(** recovery_group *)

type shutdown_recovery_group__post_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** shutdown_recovery_group__post_action *)

type shutdown_recovery_group__pre_action = {
  fabric_location : string prop option; [@option]
      (** fabric_location *)
  fail_over_directions : string prop list;
      (** fail_over_directions *)
  fail_over_types : string prop list;  (** fail_over_types *)
  manual_action_instruction : string prop option; [@option]
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop option; [@option]  (** runbook_id *)
  script_path : string prop option; [@option]  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** shutdown_recovery_group__pre_action *)

type shutdown_recovery_group = {
  post_action : shutdown_recovery_group__post_action list;
  pre_action : shutdown_recovery_group__pre_action list;
}
[@@deriving yojson_of]
(** shutdown_recovery_group *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_replication_recovery_plan = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  source_recovery_fabric_id : string prop;
      (** source_recovery_fabric_id *)
  target_recovery_fabric_id : string prop;
      (** target_recovery_fabric_id *)
  azure_to_azure_settings : azure_to_azure_settings list;
  boot_recovery_group : boot_recovery_group list;
  failover_recovery_group : failover_recovery_group list;
  recovery_group : recovery_group list;
  shutdown_recovery_group : shutdown_recovery_group list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replication_recovery_plan *)

let azure_to_azure_settings ?primary_edge_zone ?primary_zone
    ?recovery_edge_zone ?recovery_zone () : azure_to_azure_settings =
  {
    primary_edge_zone;
    primary_zone;
    recovery_edge_zone;
    recovery_zone;
  }

let boot_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    boot_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let boot_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    boot_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let boot_recovery_group ?replicated_protected_items ~post_action
    ~pre_action () : boot_recovery_group =
  { replicated_protected_items; post_action; pre_action }

let failover_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    failover_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let failover_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    failover_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let failover_recovery_group ~post_action ~pre_action () :
    failover_recovery_group =
  { post_action; pre_action }

let recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let recovery_group ?replicated_protected_items ~type_ ~post_action
    ~pre_action () : recovery_group =
  { replicated_protected_items; type_; post_action; pre_action }

let shutdown_recovery_group__post_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    shutdown_recovery_group__post_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let shutdown_recovery_group__pre_action ?fabric_location
    ?manual_action_instruction ?runbook_id ?script_path
    ~fail_over_directions ~fail_over_types ~name ~type_ () :
    shutdown_recovery_group__pre_action =
  {
    fabric_location;
    fail_over_directions;
    fail_over_types;
    manual_action_instruction;
    name;
    runbook_id;
    script_path;
    type_;
  }

let shutdown_recovery_group ~post_action ~pre_action () :
    shutdown_recovery_group =
  { post_action; pre_action }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_replication_recovery_plan ?id ?timeouts
    ~name ~recovery_vault_id ~source_recovery_fabric_id
    ~target_recovery_fabric_id ~azure_to_azure_settings
    ~boot_recovery_group ~failover_recovery_group ~recovery_group
    ~shutdown_recovery_group () :
    azurerm_site_recovery_replication_recovery_plan =
  {
    id;
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

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id
    ~source_recovery_fabric_id ~target_recovery_fabric_id
    ~azure_to_azure_settings ~boot_recovery_group
    ~failover_recovery_group ~recovery_group ~shutdown_recovery_group
    __resource_id =
  let __resource_type =
    "azurerm_site_recovery_replication_recovery_plan"
  in
  let __resource =
    azurerm_site_recovery_replication_recovery_plan ?id ?timeouts
      ~name ~recovery_vault_id ~source_recovery_fabric_id
      ~target_recovery_fabric_id ~azure_to_azure_settings
      ~boot_recovery_group ~failover_recovery_group ~recovery_group
      ~shutdown_recovery_group ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_replication_recovery_plan
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_vault_id =
         Prop.computed __resource_type __resource_id
           "recovery_vault_id";
       source_recovery_fabric_id =
         Prop.computed __resource_type __resource_id
           "source_recovery_fabric_id";
       target_recovery_fabric_id =
         Prop.computed __resource_type __resource_id
           "target_recovery_fabric_id";
     }
      : t)
  in
  __resource_attributes
