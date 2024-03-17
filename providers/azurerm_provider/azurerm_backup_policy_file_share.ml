(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_backup_policy_file_share__backup__hourly = {
  interval : float;  (** interval *)
  start_time : string;  (** start_time *)
  window_duration : float;  (** window_duration *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__backup__hourly *)

type azurerm_backup_policy_file_share__backup = {
  frequency : string;  (** frequency *)
  time : string option; [@option]  (** time *)
  hourly : azurerm_backup_policy_file_share__backup__hourly list;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__backup *)

type azurerm_backup_policy_file_share__retention_daily = {
  count : float;  (** count *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_daily *)

type azurerm_backup_policy_file_share__retention_monthly = {
  count : float;  (** count *)
  days : float list option; [@option]  (** days *)
  include_last_days : bool option; [@option]
      (** include_last_days *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_monthly *)

type azurerm_backup_policy_file_share__retention_weekly = {
  count : float;  (** count *)
  weekdays : string list;  (** weekdays *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_weekly *)

type azurerm_backup_policy_file_share__retention_yearly = {
  count : float;  (** count *)
  days : float list option; [@option]  (** days *)
  include_last_days : bool option; [@option]
      (** include_last_days *)
  months : string list;  (** months *)
  weekdays : string list option; [@option]  (** weekdays *)
  weeks : string list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__retention_yearly *)

type azurerm_backup_policy_file_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share__timeouts *)

type azurerm_backup_policy_file_share = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  timezone : string option; [@option]  (** timezone *)
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

let azurerm_backup_policy_file_share ?id ?timezone ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly __resource_id =
  let __resource_type = "azurerm_backup_policy_file_share" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_file_share __resource);
  ()
