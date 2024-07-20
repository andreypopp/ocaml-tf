(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type features__api_management = {
  purge_soft_delete_on_destroy : bool prop option; [@option]
  recover_soft_deleted : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__api_management) -> ()

let yojson_of_features__api_management =
  (function
   | {
       purge_soft_delete_on_destroy = v_purge_soft_delete_on_destroy;
       recover_soft_deleted = v_recover_soft_deleted;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recover_soft_deleted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_delete_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_soft_delete_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__api_management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__api_management

[@@@deriving.end]

type features__app_configuration = {
  purge_soft_delete_on_destroy : bool prop option; [@option]
  recover_soft_deleted : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__app_configuration) -> ()

let yojson_of_features__app_configuration =
  (function
   | {
       purge_soft_delete_on_destroy = v_purge_soft_delete_on_destroy;
       recover_soft_deleted = v_recover_soft_deleted;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recover_soft_deleted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_delete_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_soft_delete_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__app_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__app_configuration

[@@@deriving.end]

type features__application_insights = {
  disable_generated_rule : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__application_insights) -> ()

let yojson_of_features__application_insights =
  (function
   | { disable_generated_rule = v_disable_generated_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disable_generated_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_generated_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__application_insights ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__application_insights

[@@@deriving.end]

type features__cognitive_account = {
  purge_soft_delete_on_destroy : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__cognitive_account) -> ()

let yojson_of_features__cognitive_account =
  (function
   | {
       purge_soft_delete_on_destroy = v_purge_soft_delete_on_destroy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_purge_soft_delete_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_soft_delete_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__cognitive_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__cognitive_account

[@@@deriving.end]

type features__key_vault = {
  purge_soft_delete_on_destroy : bool prop option; [@option]
  purge_soft_deleted_certificates_on_destroy : bool prop option;
      [@option]
  purge_soft_deleted_hardware_security_module_keys_on_destroy :
    bool prop option;
      [@option]
  purge_soft_deleted_hardware_security_modules_on_destroy :
    bool prop option;
      [@option]
  purge_soft_deleted_keys_on_destroy : bool prop option; [@option]
  purge_soft_deleted_secrets_on_destroy : bool prop option; [@option]
  recover_soft_deleted_certificates : bool prop option; [@option]
  recover_soft_deleted_hardware_security_module_keys :
    bool prop option;
      [@option]
  recover_soft_deleted_key_vaults : bool prop option; [@option]
  recover_soft_deleted_keys : bool prop option; [@option]
  recover_soft_deleted_secrets : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__key_vault) -> ()

let yojson_of_features__key_vault =
  (function
   | {
       purge_soft_delete_on_destroy = v_purge_soft_delete_on_destroy;
       purge_soft_deleted_certificates_on_destroy =
         v_purge_soft_deleted_certificates_on_destroy;
       purge_soft_deleted_hardware_security_module_keys_on_destroy =
         v_purge_soft_deleted_hardware_security_module_keys_on_destroy;
       purge_soft_deleted_hardware_security_modules_on_destroy =
         v_purge_soft_deleted_hardware_security_modules_on_destroy;
       purge_soft_deleted_keys_on_destroy =
         v_purge_soft_deleted_keys_on_destroy;
       purge_soft_deleted_secrets_on_destroy =
         v_purge_soft_deleted_secrets_on_destroy;
       recover_soft_deleted_certificates =
         v_recover_soft_deleted_certificates;
       recover_soft_deleted_hardware_security_module_keys =
         v_recover_soft_deleted_hardware_security_module_keys;
       recover_soft_deleted_key_vaults =
         v_recover_soft_deleted_key_vaults;
       recover_soft_deleted_keys = v_recover_soft_deleted_keys;
       recover_soft_deleted_secrets = v_recover_soft_deleted_secrets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recover_soft_deleted_secrets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted_secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recover_soft_deleted_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recover_soft_deleted_key_vaults with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted_key_vaults", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_recover_soft_deleted_hardware_security_module_keys
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "recover_soft_deleted_hardware_security_module_keys",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_recover_soft_deleted_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recover_soft_deleted_certificates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_deleted_secrets_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "purge_soft_deleted_secrets_on_destroy", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_deleted_keys_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_soft_deleted_keys_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_purge_soft_deleted_hardware_security_modules_on_destroy
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "purge_soft_deleted_hardware_security_modules_on_destroy",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_purge_soft_deleted_hardware_security_module_keys_on_destroy
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "purge_soft_deleted_hardware_security_module_keys_on_destroy",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_deleted_certificates_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "purge_soft_deleted_certificates_on_destroy", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_purge_soft_delete_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_soft_delete_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__key_vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__key_vault

[@@@deriving.end]

type features__log_analytics_workspace = {
  permanently_delete_on_destroy : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__log_analytics_workspace) -> ()

let yojson_of_features__log_analytics_workspace =
  (function
   | {
       permanently_delete_on_destroy =
         v_permanently_delete_on_destroy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permanently_delete_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permanently_delete_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__log_analytics_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__log_analytics_workspace

[@@@deriving.end]

type features__machine_learning = {
  purge_soft_deleted_workspace_on_destroy : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__machine_learning) -> ()

let yojson_of_features__machine_learning =
  (function
   | {
       purge_soft_deleted_workspace_on_destroy =
         v_purge_soft_deleted_workspace_on_destroy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_purge_soft_deleted_workspace_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "purge_soft_deleted_workspace_on_destroy", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : features__machine_learning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__machine_learning

[@@@deriving.end]

type features__managed_disk = {
  expand_without_downtime : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__managed_disk) -> ()

let yojson_of_features__managed_disk =
  (function
   | { expand_without_downtime = v_expand_without_downtime } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expand_without_downtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expand_without_downtime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__managed_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__managed_disk

[@@@deriving.end]

type features__postgresql_flexible_server = {
  restart_server_on_configuration_value_change : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__postgresql_flexible_server) -> ()

let yojson_of_features__postgresql_flexible_server =
  (function
   | {
       restart_server_on_configuration_value_change =
         v_restart_server_on_configuration_value_change;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restart_server_on_configuration_value_change with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "restart_server_on_configuration_value_change", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : features__postgresql_flexible_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__postgresql_flexible_server

[@@@deriving.end]

type features__recovery_service = {
  purge_protected_items_from_vault_on_destroy : bool prop option;
      [@option]
  vm_backup_stop_protection_and_retain_data_on_destroy :
    bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__recovery_service) -> ()

let yojson_of_features__recovery_service =
  (function
   | {
       purge_protected_items_from_vault_on_destroy =
         v_purge_protected_items_from_vault_on_destroy;
       vm_backup_stop_protection_and_retain_data_on_destroy =
         v_vm_backup_stop_protection_and_retain_data_on_destroy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match
           v_vm_backup_stop_protection_and_retain_data_on_destroy
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "vm_backup_stop_protection_and_retain_data_on_destroy",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_purge_protected_items_from_vault_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "purge_protected_items_from_vault_on_destroy", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : features__recovery_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__recovery_service

[@@@deriving.end]

type features__recovery_services_vaults = {
  recover_soft_deleted_backup_protected_vm : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__recovery_services_vaults) -> ()

let yojson_of_features__recovery_services_vaults =
  (function
   | {
       recover_soft_deleted_backup_protected_vm =
         v_recover_soft_deleted_backup_protected_vm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recover_soft_deleted_backup_protected_vm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "recover_soft_deleted_backup_protected_vm", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : features__recovery_services_vaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__recovery_services_vaults

[@@@deriving.end]

type features__resource_group = {
  prevent_deletion_if_contains_resources : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__resource_group) -> ()

let yojson_of_features__resource_group =
  (function
   | {
       prevent_deletion_if_contains_resources =
         v_prevent_deletion_if_contains_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prevent_deletion_if_contains_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "prevent_deletion_if_contains_resources", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : features__resource_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__resource_group

[@@@deriving.end]

type features__subscription = {
  prevent_cancellation_on_destroy : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__subscription) -> ()

let yojson_of_features__subscription =
  (function
   | {
       prevent_cancellation_on_destroy =
         v_prevent_cancellation_on_destroy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prevent_cancellation_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prevent_cancellation_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__subscription

[@@@deriving.end]

type features__template_deployment = {
  delete_nested_items_during_deletion : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__template_deployment) -> ()

let yojson_of_features__template_deployment =
  (function
   | {
       delete_nested_items_during_deletion =
         v_delete_nested_items_during_deletion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_delete_nested_items_during_deletion
         in
         ("delete_nested_items_during_deletion", arg) :: bnds
       in
       `Assoc bnds
    : features__template_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__template_deployment

[@@@deriving.end]

type features__virtual_machine = {
  delete_os_disk_on_deletion : bool prop option; [@option]
  detach_implicit_data_disk_on_deletion : bool prop option; [@option]
  graceful_shutdown : bool prop option; [@option]
  skip_shutdown_and_force_delete : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__virtual_machine) -> ()

let yojson_of_features__virtual_machine =
  (function
   | {
       delete_os_disk_on_deletion = v_delete_os_disk_on_deletion;
       detach_implicit_data_disk_on_deletion =
         v_detach_implicit_data_disk_on_deletion;
       graceful_shutdown = v_graceful_shutdown;
       skip_shutdown_and_force_delete =
         v_skip_shutdown_and_force_delete;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_shutdown_and_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_shutdown_and_force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_graceful_shutdown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "graceful_shutdown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detach_implicit_data_disk_on_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "detach_implicit_data_disk_on_deletion", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_os_disk_on_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_os_disk_on_deletion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__virtual_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__virtual_machine

[@@@deriving.end]

type features__virtual_machine_scale_set = {
  force_delete : bool prop option; [@option]
  reimage_on_manual_upgrade : bool prop option; [@option]
  roll_instances_when_required : bool prop option; [@option]
  scale_to_zero_before_deletion : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__virtual_machine_scale_set) -> ()

let yojson_of_features__virtual_machine_scale_set =
  (function
   | {
       force_delete = v_force_delete;
       reimage_on_manual_upgrade = v_reimage_on_manual_upgrade;
       roll_instances_when_required = v_roll_instances_when_required;
       scale_to_zero_before_deletion =
         v_scale_to_zero_before_deletion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scale_to_zero_before_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scale_to_zero_before_deletion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_roll_instances_when_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "roll_instances_when_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reimage_on_manual_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reimage_on_manual_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : features__virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__virtual_machine_scale_set

[@@@deriving.end]

type features = {
  api_management : features__api_management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  app_configuration : features__app_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  application_insights : features__application_insights list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cognitive_account : features__cognitive_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_vault : features__key_vault list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_analytics_workspace : features__log_analytics_workspace list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  machine_learning : features__machine_learning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_disk : features__managed_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql_flexible_server :
    features__postgresql_flexible_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recovery_service : features__recovery_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recovery_services_vaults : features__recovery_services_vaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_group : features__resource_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscription : features__subscription list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template_deployment : features__template_deployment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_machine : features__virtual_machine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_machine_scale_set :
    features__virtual_machine_scale_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features) -> ()

let yojson_of_features =
  (function
   | {
       api_management = v_api_management;
       app_configuration = v_app_configuration;
       application_insights = v_application_insights;
       cognitive_account = v_cognitive_account;
       key_vault = v_key_vault;
       log_analytics_workspace = v_log_analytics_workspace;
       machine_learning = v_machine_learning;
       managed_disk = v_managed_disk;
       postgresql_flexible_server = v_postgresql_flexible_server;
       recovery_service = v_recovery_service;
       recovery_services_vaults = v_recovery_services_vaults;
       resource_group = v_resource_group;
       subscription = v_subscription;
       template_deployment = v_template_deployment;
       virtual_machine = v_virtual_machine;
       virtual_machine_scale_set = v_virtual_machine_scale_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine_scale_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_features__virtual_machine_scale_set)
               v_virtual_machine_scale_set
           in
           let bnd = "virtual_machine_scale_set", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__virtual_machine)
               v_virtual_machine
           in
           let bnd = "virtual_machine", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_template_deployment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__template_deployment)
               v_template_deployment
           in
           let bnd = "template_deployment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscription then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__subscription)
               v_subscription
           in
           let bnd = "subscription", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__resource_group)
               v_resource_group
           in
           let bnd = "resource_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recovery_services_vaults then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_features__recovery_services_vaults)
               v_recovery_services_vaults
           in
           let bnd = "recovery_services_vaults", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recovery_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__recovery_service)
               v_recovery_service
           in
           let bnd = "recovery_service", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_flexible_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_features__postgresql_flexible_server)
               v_postgresql_flexible_server
           in
           let bnd = "postgresql_flexible_server", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__managed_disk)
               v_managed_disk
           in
           let bnd = "managed_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_machine_learning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__machine_learning)
               v_machine_learning
           in
           let bnd = "machine_learning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_analytics_workspace then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_features__log_analytics_workspace)
               v_log_analytics_workspace
           in
           let bnd = "log_analytics_workspace", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_vault then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__key_vault)
               v_key_vault
           in
           let bnd = "key_vault", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cognitive_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__cognitive_account)
               v_cognitive_account
           in
           let bnd = "cognitive_account", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_insights then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__application_insights)
               v_application_insights
           in
           let bnd = "application_insights", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_app_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__app_configuration)
               v_app_configuration
           in
           let bnd = "app_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features__api_management)
               v_api_management
           in
           let bnd = "api_management", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features

[@@@deriving.end]

type azurerm = {
  auxiliary_tenant_ids : string prop list option; [@option]
  client_certificate : string prop option; [@option]
  client_certificate_password : string prop option; [@option]
  client_certificate_path : string prop option; [@option]
  client_id : string prop option; [@option]
  client_id_file_path : string prop option; [@option]
  client_secret : string prop option; [@option]
  client_secret_file_path : string prop option; [@option]
  disable_correlation_request_id : bool prop option; [@option]
  disable_terraform_partner_id : bool prop option; [@option]
  environment : string prop option; [@option]
  metadata_host : string prop option; [@option]
  msi_endpoint : string prop option; [@option]
  oidc_request_token : string prop option; [@option]
  oidc_request_url : string prop option; [@option]
  oidc_token : string prop option; [@option]
  oidc_token_file_path : string prop option; [@option]
  partner_id : string prop option; [@option]
  skip_provider_registration : bool prop option; [@option]
  storage_use_azuread : bool prop option; [@option]
  subscription_id : string prop option; [@option]
  tenant_id : string prop option; [@option]
  use_aks_workload_identity : bool prop option; [@option]
  use_cli : bool prop option; [@option]
  use_msi : bool prop option; [@option]
  use_oidc : bool prop option; [@option]
  features : features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm) -> ()

let yojson_of_azurerm =
  (function
   | {
       auxiliary_tenant_ids = v_auxiliary_tenant_ids;
       client_certificate = v_client_certificate;
       client_certificate_password = v_client_certificate_password;
       client_certificate_path = v_client_certificate_path;
       client_id = v_client_id;
       client_id_file_path = v_client_id_file_path;
       client_secret = v_client_secret;
       client_secret_file_path = v_client_secret_file_path;
       disable_correlation_request_id =
         v_disable_correlation_request_id;
       disable_terraform_partner_id = v_disable_terraform_partner_id;
       environment = v_environment;
       metadata_host = v_metadata_host;
       msi_endpoint = v_msi_endpoint;
       oidc_request_token = v_oidc_request_token;
       oidc_request_url = v_oidc_request_url;
       oidc_token = v_oidc_token;
       oidc_token_file_path = v_oidc_token_file_path;
       partner_id = v_partner_id;
       skip_provider_registration = v_skip_provider_registration;
       storage_use_azuread = v_storage_use_azuread;
       subscription_id = v_subscription_id;
       tenant_id = v_tenant_id;
       use_aks_workload_identity = v_use_aks_workload_identity;
       use_cli = v_use_cli;
       use_msi = v_use_msi;
       use_oidc = v_use_oidc;
       features = v_features;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_features then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features) v_features
           in
           let bnd = "features", arg in
           bnd :: bnds
       in
       let bnds =
         match v_use_oidc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_oidc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_msi with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_msi", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_cli with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_cli", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_aks_workload_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_aks_workload_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_use_azuread with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_use_azuread", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_provider_registration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_provider_registration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oidc_token_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oidc_token_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oidc_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oidc_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oidc_request_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oidc_request_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oidc_request_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oidc_request_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_msi_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "msi_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_terraform_partner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_terraform_partner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_correlation_request_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_correlation_request_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auxiliary_tenant_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "auxiliary_tenant_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm

[@@@deriving.end]

let features__api_management ?purge_soft_delete_on_destroy
    ?recover_soft_deleted () : features__api_management =
  { purge_soft_delete_on_destroy; recover_soft_deleted }

let features__app_configuration ?purge_soft_delete_on_destroy
    ?recover_soft_deleted () : features__app_configuration =
  { purge_soft_delete_on_destroy; recover_soft_deleted }

let features__application_insights ?disable_generated_rule () :
    features__application_insights =
  { disable_generated_rule }

let features__cognitive_account ?purge_soft_delete_on_destroy () :
    features__cognitive_account =
  { purge_soft_delete_on_destroy }

let features__key_vault ?purge_soft_delete_on_destroy
    ?purge_soft_deleted_certificates_on_destroy
    ?purge_soft_deleted_hardware_security_module_keys_on_destroy
    ?purge_soft_deleted_hardware_security_modules_on_destroy
    ?purge_soft_deleted_keys_on_destroy
    ?purge_soft_deleted_secrets_on_destroy
    ?recover_soft_deleted_certificates
    ?recover_soft_deleted_hardware_security_module_keys
    ?recover_soft_deleted_key_vaults ?recover_soft_deleted_keys
    ?recover_soft_deleted_secrets () : features__key_vault =
  {
    purge_soft_delete_on_destroy;
    purge_soft_deleted_certificates_on_destroy;
    purge_soft_deleted_hardware_security_module_keys_on_destroy;
    purge_soft_deleted_hardware_security_modules_on_destroy;
    purge_soft_deleted_keys_on_destroy;
    purge_soft_deleted_secrets_on_destroy;
    recover_soft_deleted_certificates;
    recover_soft_deleted_hardware_security_module_keys;
    recover_soft_deleted_key_vaults;
    recover_soft_deleted_keys;
    recover_soft_deleted_secrets;
  }

let features__log_analytics_workspace ?permanently_delete_on_destroy
    () : features__log_analytics_workspace =
  { permanently_delete_on_destroy }

let features__machine_learning
    ?purge_soft_deleted_workspace_on_destroy () :
    features__machine_learning =
  { purge_soft_deleted_workspace_on_destroy }

let features__managed_disk ?expand_without_downtime () :
    features__managed_disk =
  { expand_without_downtime }

let features__postgresql_flexible_server
    ?restart_server_on_configuration_value_change () :
    features__postgresql_flexible_server =
  { restart_server_on_configuration_value_change }

let features__recovery_service
    ?purge_protected_items_from_vault_on_destroy
    ?vm_backup_stop_protection_and_retain_data_on_destroy () :
    features__recovery_service =
  {
    purge_protected_items_from_vault_on_destroy;
    vm_backup_stop_protection_and_retain_data_on_destroy;
  }

let features__recovery_services_vaults
    ?recover_soft_deleted_backup_protected_vm () :
    features__recovery_services_vaults =
  { recover_soft_deleted_backup_protected_vm }

let features__resource_group ?prevent_deletion_if_contains_resources
    () : features__resource_group =
  { prevent_deletion_if_contains_resources }

let features__subscription ?prevent_cancellation_on_destroy () :
    features__subscription =
  { prevent_cancellation_on_destroy }

let features__template_deployment
    ~delete_nested_items_during_deletion () :
    features__template_deployment =
  { delete_nested_items_during_deletion }

let features__virtual_machine ?delete_os_disk_on_deletion
    ?detach_implicit_data_disk_on_deletion ?graceful_shutdown
    ?skip_shutdown_and_force_delete () : features__virtual_machine =
  {
    delete_os_disk_on_deletion;
    detach_implicit_data_disk_on_deletion;
    graceful_shutdown;
    skip_shutdown_and_force_delete;
  }

let features__virtual_machine_scale_set ?force_delete
    ?reimage_on_manual_upgrade ?roll_instances_when_required
    ?scale_to_zero_before_deletion () :
    features__virtual_machine_scale_set =
  {
    force_delete;
    reimage_on_manual_upgrade;
    roll_instances_when_required;
    scale_to_zero_before_deletion;
  }

let features ?(api_management = []) ?(app_configuration = [])
    ?(application_insights = []) ?(cognitive_account = [])
    ?(key_vault = []) ?(log_analytics_workspace = [])
    ?(machine_learning = []) ?(managed_disk = [])
    ?(postgresql_flexible_server = []) ?(recovery_service = [])
    ?(recovery_services_vaults = []) ?(resource_group = [])
    ?(subscription = []) ?(template_deployment = [])
    ?(virtual_machine = []) ?(virtual_machine_scale_set = []) () :
    features =
  {
    api_management;
    app_configuration;
    application_insights;
    cognitive_account;
    key_vault;
    log_analytics_workspace;
    machine_learning;
    managed_disk;
    postgresql_flexible_server;
    recovery_service;
    recovery_services_vaults;
    resource_group;
    subscription;
    template_deployment;
    virtual_machine;
    virtual_machine_scale_set;
  }

let azurerm ?auxiliary_tenant_ids ?client_certificate
    ?client_certificate_password ?client_certificate_path ?client_id
    ?client_id_file_path ?client_secret ?client_secret_file_path
    ?disable_correlation_request_id ?disable_terraform_partner_id
    ?environment ?metadata_host ?msi_endpoint ?oidc_request_token
    ?oidc_request_url ?oidc_token ?oidc_token_file_path ?partner_id
    ?skip_provider_registration ?storage_use_azuread ?subscription_id
    ?tenant_id ?use_aks_workload_identity ?use_cli ?use_msi ?use_oidc
    ~features () : azurerm =
  {
    auxiliary_tenant_ids;
    client_certificate;
    client_certificate_password;
    client_certificate_path;
    client_id;
    client_id_file_path;
    client_secret;
    client_secret_file_path;
    disable_correlation_request_id;
    disable_terraform_partner_id;
    environment;
    metadata_host;
    msi_endpoint;
    oidc_request_token;
    oidc_request_url;
    oidc_token;
    oidc_token_file_path;
    partner_id;
    skip_provider_registration;
    storage_use_azuread;
    subscription_id;
    tenant_id;
    use_aks_workload_identity;
    use_cli;
    use_msi;
    use_oidc;
    features;
  }

let make ?auxiliary_tenant_ids ?client_certificate
    ?client_certificate_password ?client_certificate_path ?client_id
    ?client_id_file_path ?client_secret ?client_secret_file_path
    ?disable_correlation_request_id ?disable_terraform_partner_id
    ?environment ?metadata_host ?msi_endpoint ?oidc_request_token
    ?oidc_request_url ?oidc_token ?oidc_token_file_path ?partner_id
    ?skip_provider_registration ?storage_use_azuread ?subscription_id
    ?tenant_id ?use_aks_workload_identity ?use_cli ?use_msi ?use_oidc
    ~features () =
  {
    Tf_core.id = "azurerm";
    json =
      yojson_of_azurerm
        (azurerm ?auxiliary_tenant_ids ?client_certificate
           ?client_certificate_password ?client_certificate_path
           ?client_id ?client_id_file_path ?client_secret
           ?client_secret_file_path ?disable_correlation_request_id
           ?disable_terraform_partner_id ?environment ?metadata_host
           ?msi_endpoint ?oidc_request_token ?oidc_request_url
           ?oidc_token ?oidc_token_file_path ?partner_id
           ?skip_provider_registration ?storage_use_azuread
           ?subscription_id ?tenant_id ?use_aks_workload_identity
           ?use_cli ?use_msi ?use_oidc ~features ());
  }

let register ?tf_module ?auxiliary_tenant_ids ?client_certificate
    ?client_certificate_password ?client_certificate_path ?client_id
    ?client_id_file_path ?client_secret ?client_secret_file_path
    ?disable_correlation_request_id ?disable_terraform_partner_id
    ?environment ?metadata_host ?msi_endpoint ?oidc_request_token
    ?oidc_request_url ?oidc_token ?oidc_token_file_path ?partner_id
    ?skip_provider_registration ?storage_use_azuread ?subscription_id
    ?tenant_id ?use_aks_workload_identity ?use_cli ?use_msi ?use_oidc
    ~features ~version () =
  let (p : Tf_core.provider) =
    make ?auxiliary_tenant_ids ?client_certificate
      ?client_certificate_password ?client_certificate_path
      ?client_id ?client_id_file_path ?client_secret
      ?client_secret_file_path ?disable_correlation_request_id
      ?disable_terraform_partner_id ?environment ?metadata_host
      ?msi_endpoint ?oidc_request_token ?oidc_request_url ?oidc_token
      ?oidc_token_file_path ?partner_id ?skip_provider_registration
      ?storage_use_azuread ?subscription_id ?tenant_id
      ?use_aks_workload_identity ?use_cli ?use_msi ?use_oidc
      ~features ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/hashicorp/azurerm";
        "version", `String version;
      ]);
  ()
