(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automanage_configuration__antimalware__exclusions = {
  extensions : string option; [@option]  (** extensions *)
  paths : string option; [@option]  (** paths *)
  processes : string option; [@option]  (** processes *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__antimalware__exclusions *)

type azurerm_automanage_configuration__antimalware = {
  real_time_protection_enabled : bool option; [@option]
      (** real_time_protection_enabled *)
  scheduled_scan_day : float option; [@option]
      (** scheduled_scan_day *)
  scheduled_scan_enabled : bool option; [@option]
      (** scheduled_scan_enabled *)
  scheduled_scan_time_in_minutes : float option; [@option]
      (** scheduled_scan_time_in_minutes *)
  scheduled_scan_type : string option; [@option]
      (** scheduled_scan_type *)
  exclusions :
    azurerm_automanage_configuration__antimalware__exclusions list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__antimalware *)

type azurerm_automanage_configuration__azure_security_baseline = {
  assignment_type : string option; [@option]  (** assignment_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__azure_security_baseline *)

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration = {
  count : float option; [@option]  (** count *)
  duration_type : string option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration *)

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule = {
  retention_times : string list option; [@option]
      (** retention_times *)
  retention_duration :
    azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration
    list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__daily_schedule *)

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration = {
  count : float option; [@option]  (** count *)
  duration_type : string option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration *)

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule = {
  retention_times : string list option; [@option]
      (** retention_times *)
  retention_duration :
    azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration
    list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__weekly_schedule *)

type azurerm_automanage_configuration__backup__retention_policy = {
  retention_policy_type : string option; [@option]
      (** retention_policy_type *)
  daily_schedule :
    azurerm_automanage_configuration__backup__retention_policy__daily_schedule
    list;
  weekly_schedule :
    azurerm_automanage_configuration__backup__retention_policy__weekly_schedule
    list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy *)

type azurerm_automanage_configuration__backup__schedule_policy = {
  schedule_policy_type : string option; [@option]
      (** schedule_policy_type *)
  schedule_run_days : string list option; [@option]
      (** schedule_run_days *)
  schedule_run_frequency : string option; [@option]
      (** schedule_run_frequency *)
  schedule_run_times : string list option; [@option]
      (** schedule_run_times *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__schedule_policy *)

type azurerm_automanage_configuration__backup = {
  instant_rp_retention_range_in_days : float option; [@option]
      (** instant_rp_retention_range_in_days *)
  policy_name : string option; [@option]  (** policy_name *)
  time_zone : string option; [@option]  (** time_zone *)
  retention_policy :
    azurerm_automanage_configuration__backup__retention_policy list;
  schedule_policy :
    azurerm_automanage_configuration__backup__schedule_policy list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup *)

type azurerm_automanage_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__timeouts *)

type azurerm_automanage_configuration = {
  automation_account_enabled : bool option; [@option]
      (** automation_account_enabled *)
  boot_diagnostics_enabled : bool option; [@option]
      (** boot_diagnostics_enabled *)
  defender_for_cloud_enabled : bool option; [@option]
      (** defender_for_cloud_enabled *)
  guest_configuration_enabled : bool option; [@option]
      (** guest_configuration_enabled *)
  location : string;  (** location *)
  log_analytics_enabled : bool option; [@option]
      (** log_analytics_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  status_change_alert_enabled : bool option; [@option]
      (** status_change_alert_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  antimalware : azurerm_automanage_configuration__antimalware list;
  azure_security_baseline :
    azurerm_automanage_configuration__azure_security_baseline list;
  backup : azurerm_automanage_configuration__backup list;
  timeouts : azurerm_automanage_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration *)

let azurerm_automanage_configuration ?automation_account_enabled
    ?boot_diagnostics_enabled ?defender_for_cloud_enabled
    ?guest_configuration_enabled ?log_analytics_enabled
    ?status_change_alert_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~antimalware ~azure_security_baseline
    ~backup __resource_id =
  let __resource_type = "azurerm_automanage_configuration" in
  let __resource =
    {
      automation_account_enabled;
      boot_diagnostics_enabled;
      defender_for_cloud_enabled;
      guest_configuration_enabled;
      location;
      log_analytics_enabled;
      name;
      resource_group_name;
      status_change_alert_enabled;
      tags;
      antimalware;
      azure_security_baseline;
      backup;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automanage_configuration __resource);
  ()
