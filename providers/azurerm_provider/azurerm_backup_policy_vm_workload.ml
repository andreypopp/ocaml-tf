(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_policy_vm_workload__protection_policy__backup = {
  frequency : string option; [@option]  (** frequency *)
  frequency_in_minutes : float option; [@option]
      (** frequency_in_minutes *)
  time : string option; [@option]  (** time *)
  weekdays : string list option; [@option]  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__backup *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_daily = {
  count : float;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_daily *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_monthly = {
  count : float;  (** count *)
  format_type : string;  (** format_type *)
  monthdays : float list option; [@option]  (** monthdays *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_monthly *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_weekly = {
  count : float;  (** count *)
  weekdays : string list;  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_weekly *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_yearly = {
  count : float;  (** count *)
  format_type : string;  (** format_type *)
  monthdays : float list option; [@option]  (** monthdays *)
  months : string list;  (** months *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_yearly *)

type azurerm_backup_policy_vm_workload__protection_policy__simple_retention = {
  count : float;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__simple_retention *)

type azurerm_backup_policy_vm_workload__protection_policy = {
  policy_type : string;  (** policy_type *)
  backup :
    azurerm_backup_policy_vm_workload__protection_policy__backup list;
  retention_daily :
    azurerm_backup_policy_vm_workload__protection_policy__retention_daily
    list;
  retention_monthly :
    azurerm_backup_policy_vm_workload__protection_policy__retention_monthly
    list;
  retention_weekly :
    azurerm_backup_policy_vm_workload__protection_policy__retention_weekly
    list;
  retention_yearly :
    azurerm_backup_policy_vm_workload__protection_policy__retention_yearly
    list;
  simple_retention :
    azurerm_backup_policy_vm_workload__protection_policy__simple_retention
    list;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy *)

type azurerm_backup_policy_vm_workload__settings = {
  compression_enabled : bool option; [@option]
      (** compression_enabled *)
  time_zone : string;  (** time_zone *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__settings *)

type azurerm_backup_policy_vm_workload__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__timeouts *)

type azurerm_backup_policy_vm_workload = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  workload_type : string;  (** workload_type *)
  protection_policy :
    azurerm_backup_policy_vm_workload__protection_policy list;
  settings : azurerm_backup_policy_vm_workload__settings list;
  timeouts : azurerm_backup_policy_vm_workload__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload *)

let azurerm_backup_policy_vm_workload ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~workload_type
    ~protection_policy ~settings __resource_id =
  let __resource_type = "azurerm_backup_policy_vm_workload" in
  let __resource =
    {
      id;
      name;
      recovery_vault_name;
      resource_group_name;
      workload_type;
      protection_policy;
      settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_vm_workload __resource);
  ()
