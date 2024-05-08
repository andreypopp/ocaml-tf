(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_to_azure_settings = {
  primary_edge_zone : string prop;  (** primary_edge_zone *)
  primary_zone : string prop;  (** primary_zone *)
  recovery_edge_zone : string prop;  (** recovery_edge_zone *)
  recovery_zone : string prop;  (** recovery_zone *)
}

type recovery_group__pre_action = {
  fabric_location : string prop;  (** fabric_location *)
  fail_over_directions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** fail_over_directions *)
  fail_over_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** fail_over_types *)
  manual_action_instruction : string prop;
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop;  (** runbook_id *)
  script_path : string prop;  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}

type recovery_group__post_action = {
  fabric_location : string prop;  (** fabric_location *)
  fail_over_directions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** fail_over_directions *)
  fail_over_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** fail_over_types *)
  manual_action_instruction : string prop;
      (** manual_action_instruction *)
  name : string prop;  (** name *)
  runbook_id : string prop;  (** runbook_id *)
  script_path : string prop;  (** script_path *)
  type_ : string prop; [@key "type"]  (** type *)
}

type recovery_group = {
  post_action : recovery_group__post_action list list;
      [@default []] [@yojson_drop_default ( = )]
      (** post_action *)
  pre_action : recovery_group__pre_action list list;
      [@default []] [@yojson_drop_default ( = )]
      (** pre_action *)
  replicated_protected_items : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** replicated_protected_items *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_site_recovery_replication_recovery_plan

val azurerm_site_recovery_replication_recovery_plan :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  unit ->
  azurerm_site_recovery_replication_recovery_plan

val yojson_of_azurerm_site_recovery_replication_recovery_plan :
  azurerm_site_recovery_replication_recovery_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  azure_to_azure_settings : azure_to_azure_settings list prop;
  failover_deployment_model : string prop;
  id : string prop;
  name : string prop;
  recovery_group : recovery_group list prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t Tf_core.resource
