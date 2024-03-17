(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_policy_file_share__backup__hourly = {
  interval : float prop;  (** interval *)
  start_time : string prop;  (** start_time *)
  window_duration : float prop;  (** window_duration *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__backup__hourly *)

type azurerm_backup_policy_file_share__backup = {
  frequency : string prop;  (** frequency *)
  time : string prop option; [@option]  (** time *)
  hourly : azurerm_backup_policy_file_share__backup__hourly list;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__backup *)

type azurerm_backup_policy_file_share__retention_daily = {
  count : float prop;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_daily *)

type azurerm_backup_policy_file_share__retention_monthly = {
  count : float prop;  (** count *)
  days : float prop list option; [@option]  (** days *)
  include_last_days : bool prop option; [@option]
      (** include_last_days *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_monthly *)

type azurerm_backup_policy_file_share__retention_weekly = {
  count : float prop;  (** count *)
  weekdays : string prop list;  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_weekly *)

type azurerm_backup_policy_file_share__retention_yearly = {
  count : float prop;  (** count *)
  days : float prop list option; [@option]  (** days *)
  include_last_days : bool prop option; [@option]
      (** include_last_days *)
  months : string prop list;  (** months *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_yearly *)

type azurerm_backup_policy_file_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__timeouts *)

type azurerm_backup_policy_file_share = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timezone : string prop option; [@option]  (** timezone *)
  backup : azurerm_backup_policy_file_share__backup list;
  retention_daily :
    azurerm_backup_policy_file_share__retention_daily list;
  retention_monthly :
    azurerm_backup_policy_file_share__retention_monthly list;
  retention_weekly :
    azurerm_backup_policy_file_share__retention_weekly list;
  retention_yearly :
    azurerm_backup_policy_file_share__retention_yearly list;
  timeouts : azurerm_backup_policy_file_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share *)

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

let azurerm_backup_policy_file_share ?id ?timezone ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly __resource_id =
  let __resource_type = "azurerm_backup_policy_file_share" in
  let __resource =
    ({
       id;
       name;
       recovery_vault_name;
       resource_group_name;
       timezone;
       backup;
       retention_daily;
       retention_monthly;
       retention_weekly;
       retention_yearly;
       timeouts;
     }
      : azurerm_backup_policy_file_share)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_file_share __resource);
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
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
     }
      : t)
  in
  __resource_attributes
