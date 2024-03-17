(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_backup_policy_vm__backup = {
  frequency : string;  (** frequency *)
  hour_duration : float option; [@option]  (** hour_duration *)
  hour_interval : float option; [@option]  (** hour_interval *)
  time : string;  (** time *)
  weekdays : string list option; [@option]  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__backup *)

type azurerm_backup_policy_vm__instant_restore_resource_group = {
  prefix : string;  (** prefix *)
  suffix : string option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__instant_restore_resource_group *)

type azurerm_backup_policy_vm__retention_daily = {
  count : float;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__retention_daily *)

type azurerm_backup_policy_vm__retention_monthly = {
  count : float;  (** count *)
  days : float list option; [@option]  (** days *)
  include_last_days : bool option; [@option]
      (** include_last_days *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__retention_monthly *)

type azurerm_backup_policy_vm__retention_weekly = {
  count : float;  (** count *)
  weekdays : string list;  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__retention_weekly *)

type azurerm_backup_policy_vm__retention_yearly = {
  count : float;  (** count *)
  days : float list option; [@option]  (** days *)
  include_last_days : bool option; [@option]
      (** include_last_days *)
  months : string list;  (** months *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__retention_yearly *)

type azurerm_backup_policy_vm__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm__timeouts *)

type azurerm_backup_policy_vm = {
  name : string;  (** name *)
  policy_type : string option; [@option]  (** policy_type *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  timezone : string option; [@option]  (** timezone *)
  backup : azurerm_backup_policy_vm__backup list;
  instant_restore_resource_group :
    azurerm_backup_policy_vm__instant_restore_resource_group list;
  retention_daily : azurerm_backup_policy_vm__retention_daily list;
  retention_monthly :
    azurerm_backup_policy_vm__retention_monthly list;
  retention_weekly : azurerm_backup_policy_vm__retention_weekly list;
  retention_yearly : azurerm_backup_policy_vm__retention_yearly list;
  timeouts : azurerm_backup_policy_vm__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm *)

let azurerm_backup_policy_vm ?policy_type ?timezone ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~instant_restore_resource_group ~retention_daily
    ~retention_monthly ~retention_weekly ~retention_yearly
    __resource_id =
  let __resource_type = "azurerm_backup_policy_vm" in
  let __resource =
    {
      name;
      policy_type;
      recovery_vault_name;
      resource_group_name;
      timezone;
      backup;
      instant_restore_resource_group;
      retention_daily;
      retention_monthly;
      retention_weekly;
      retention_yearly;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_vm __resource);
  ()
