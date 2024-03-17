(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_policy_vm_workload__protection_policy__backup = {
  frequency : string prop option; [@option]  (** frequency *)
  frequency_in_minutes : float prop option; [@option]
      (** frequency_in_minutes *)
  time : string prop option; [@option]  (** time *)
  weekdays : string prop list option; [@option]  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__backup *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_daily = {
  count : float prop;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_daily *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_monthly = {
  count : float prop;  (** count *)
  format_type : string prop;  (** format_type *)
  monthdays : float prop list option; [@option]  (** monthdays *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_monthly *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_weekly = {
  count : float prop;  (** count *)
  weekdays : string prop list;  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_weekly *)

type azurerm_backup_policy_vm_workload__protection_policy__retention_yearly = {
  count : float prop;  (** count *)
  format_type : string prop;  (** format_type *)
  monthdays : float prop list option; [@option]  (** monthdays *)
  months : string prop list;  (** months *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__retention_yearly *)

type azurerm_backup_policy_vm_workload__protection_policy__simple_retention = {
  count : float prop;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__protection_policy__simple_retention *)

type azurerm_backup_policy_vm_workload__protection_policy = {
  policy_type : string prop;  (** policy_type *)
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
  compression_enabled : bool prop option; [@option]
      (** compression_enabled *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__settings *)

type azurerm_backup_policy_vm_workload__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload__timeouts *)

type azurerm_backup_policy_vm_workload = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workload_type : string prop;  (** workload_type *)
  protection_policy :
    azurerm_backup_policy_vm_workload__protection_policy list;
  settings : azurerm_backup_policy_vm_workload__settings list;
  timeouts : azurerm_backup_policy_vm_workload__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload *)

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  workload_type : string prop;
}

let azurerm_backup_policy_vm_workload ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~workload_type
    ~protection_policy ~settings __resource_id =
  let __resource_type = "azurerm_backup_policy_vm_workload" in
  let __resource =
    ({
       id;
       name;
       recovery_vault_name;
       resource_group_name;
       workload_type;
       protection_policy;
       settings;
       timeouts;
     }
      : azurerm_backup_policy_vm_workload)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_vm_workload __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       workload_type =
         Prop.computed __resource_type __resource_id "workload_type";
     }
      : t)
  in
  __resource_attributes
