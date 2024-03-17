(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automanage_configuration__antimalware__exclusions = {
  extensions : string prop option; [@option]  (** extensions *)
  paths : string prop option; [@option]  (** paths *)
  processes : string prop option; [@option]  (** processes *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__antimalware__exclusions *)

type azurerm_automanage_configuration__antimalware = {
  real_time_protection_enabled : bool prop option; [@option]
      (** real_time_protection_enabled *)
  scheduled_scan_day : float prop option; [@option]
      (** scheduled_scan_day *)
  scheduled_scan_enabled : bool prop option; [@option]
      (** scheduled_scan_enabled *)
  scheduled_scan_time_in_minutes : float prop option; [@option]
      (** scheduled_scan_time_in_minutes *)
  scheduled_scan_type : string prop option; [@option]
      (** scheduled_scan_type *)
  exclusions :
    azurerm_automanage_configuration__antimalware__exclusions list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__antimalware *)

type azurerm_automanage_configuration__azure_security_baseline = {
  assignment_type : string prop option; [@option]
      (** assignment_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__azure_security_baseline *)

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration = {
  count : float prop option; [@option]  (** count *)
  duration_type : string prop option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration *)

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule = {
  retention_times : string prop list option; [@option]
      (** retention_times *)
  retention_duration :
    azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration
    list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__daily_schedule *)

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration = {
  count : float prop option; [@option]  (** count *)
  duration_type : string prop option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration *)

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule = {
  retention_times : string prop list option; [@option]
      (** retention_times *)
  retention_duration :
    azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration
    list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__retention_policy__weekly_schedule *)

type azurerm_automanage_configuration__backup__retention_policy = {
  retention_policy_type : string prop option; [@option]
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
  schedule_policy_type : string prop option; [@option]
      (** schedule_policy_type *)
  schedule_run_days : string prop list option; [@option]
      (** schedule_run_days *)
  schedule_run_frequency : string prop option; [@option]
      (** schedule_run_frequency *)
  schedule_run_times : string prop list option; [@option]
      (** schedule_run_times *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup__schedule_policy *)

type azurerm_automanage_configuration__backup = {
  instant_rp_retention_range_in_days : float prop option; [@option]
      (** instant_rp_retention_range_in_days *)
  policy_name : string prop option; [@option]  (** policy_name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  retention_policy :
    azurerm_automanage_configuration__backup__retention_policy list;
  schedule_policy :
    azurerm_automanage_configuration__backup__schedule_policy list;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__backup *)

type azurerm_automanage_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration__timeouts *)

type azurerm_automanage_configuration = {
  automation_account_enabled : bool prop option; [@option]
      (** automation_account_enabled *)
  boot_diagnostics_enabled : bool prop option; [@option]
      (** boot_diagnostics_enabled *)
  defender_for_cloud_enabled : bool prop option; [@option]
      (** defender_for_cloud_enabled *)
  guest_configuration_enabled : bool prop option; [@option]
      (** guest_configuration_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  log_analytics_enabled : bool prop option; [@option]
      (** log_analytics_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  status_change_alert_enabled : bool prop option; [@option]
      (** status_change_alert_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
    ?guest_configuration_enabled ?id ?log_analytics_enabled
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
      id;
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
