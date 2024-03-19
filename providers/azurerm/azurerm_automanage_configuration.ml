(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type antimalware__exclusions = {
  extensions : string prop option; [@option]  (** extensions *)
  paths : string prop option; [@option]  (** paths *)
  processes : string prop option; [@option]  (** processes *)
}
[@@deriving yojson_of]
(** antimalware__exclusions *)

type antimalware = {
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
  exclusions : antimalware__exclusions list;
}
[@@deriving yojson_of]
(** antimalware *)

type azure_security_baseline = {
  assignment_type : string prop option; [@option]
      (** assignment_type *)
}
[@@deriving yojson_of]
(** azure_security_baseline *)

type backup__retention_policy__daily_schedule__retention_duration = {
  count : float prop option; [@option]  (** count *)
  duration_type : string prop option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** backup__retention_policy__daily_schedule__retention_duration *)

type backup__retention_policy__daily_schedule = {
  retention_times : string prop list option; [@option]
      (** retention_times *)
  retention_duration :
    backup__retention_policy__daily_schedule__retention_duration list;
}
[@@deriving yojson_of]
(** backup__retention_policy__daily_schedule *)

type backup__retention_policy__weekly_schedule__retention_duration = {
  count : float prop option; [@option]  (** count *)
  duration_type : string prop option; [@option]  (** duration_type *)
}
[@@deriving yojson_of]
(** backup__retention_policy__weekly_schedule__retention_duration *)

type backup__retention_policy__weekly_schedule = {
  retention_times : string prop list option; [@option]
      (** retention_times *)
  retention_duration :
    backup__retention_policy__weekly_schedule__retention_duration
    list;
}
[@@deriving yojson_of]
(** backup__retention_policy__weekly_schedule *)

type backup__retention_policy = {
  retention_policy_type : string prop option; [@option]
      (** retention_policy_type *)
  daily_schedule : backup__retention_policy__daily_schedule list;
  weekly_schedule : backup__retention_policy__weekly_schedule list;
}
[@@deriving yojson_of]
(** backup__retention_policy *)

type backup__schedule_policy = {
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
(** backup__schedule_policy *)

type backup = {
  instant_rp_retention_range_in_days : float prop option; [@option]
      (** instant_rp_retention_range_in_days *)
  policy_name : string prop option; [@option]  (** policy_name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  retention_policy : backup__retention_policy list;
  schedule_policy : backup__schedule_policy list;
}
[@@deriving yojson_of]
(** backup *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  antimalware : antimalware list;
  azure_security_baseline : azure_security_baseline list;
  backup : backup list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automanage_configuration *)

let antimalware__exclusions ?extensions ?paths ?processes () :
    antimalware__exclusions =
  { extensions; paths; processes }

let antimalware ?real_time_protection_enabled ?scheduled_scan_day
    ?scheduled_scan_enabled ?scheduled_scan_time_in_minutes
    ?scheduled_scan_type ~exclusions () : antimalware =
  {
    real_time_protection_enabled;
    scheduled_scan_day;
    scheduled_scan_enabled;
    scheduled_scan_time_in_minutes;
    scheduled_scan_type;
    exclusions;
  }

let azure_security_baseline ?assignment_type () :
    azure_security_baseline =
  { assignment_type }

let backup__retention_policy__daily_schedule__retention_duration
    ?count ?duration_type () :
    backup__retention_policy__daily_schedule__retention_duration =
  { count; duration_type }

let backup__retention_policy__daily_schedule ?retention_times
    ~retention_duration () : backup__retention_policy__daily_schedule
    =
  { retention_times; retention_duration }

let backup__retention_policy__weekly_schedule__retention_duration
    ?count ?duration_type () :
    backup__retention_policy__weekly_schedule__retention_duration =
  { count; duration_type }

let backup__retention_policy__weekly_schedule ?retention_times
    ~retention_duration () :
    backup__retention_policy__weekly_schedule =
  { retention_times; retention_duration }

let backup__retention_policy ?retention_policy_type ~daily_schedule
    ~weekly_schedule () : backup__retention_policy =
  { retention_policy_type; daily_schedule; weekly_schedule }

let backup__schedule_policy ?schedule_policy_type ?schedule_run_days
    ?schedule_run_frequency ?schedule_run_times () :
    backup__schedule_policy =
  {
    schedule_policy_type;
    schedule_run_days;
    schedule_run_frequency;
    schedule_run_times;
  }

let backup ?instant_rp_retention_range_in_days ?policy_name
    ?time_zone ~retention_policy ~schedule_policy () : backup =
  {
    instant_rp_retention_range_in_days;
    policy_name;
    time_zone;
    retention_policy;
    schedule_policy;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automanage_configuration ?automation_account_enabled
    ?boot_diagnostics_enabled ?defender_for_cloud_enabled
    ?guest_configuration_enabled ?id ?log_analytics_enabled
    ?status_change_alert_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~antimalware ~azure_security_baseline
    ~backup () : azurerm_automanage_configuration =
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

type t = {
  automation_account_enabled : bool prop;
  boot_diagnostics_enabled : bool prop;
  defender_for_cloud_enabled : bool prop;
  guest_configuration_enabled : bool prop;
  id : string prop;
  location : string prop;
  log_analytics_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  status_change_alert_enabled : bool prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?automation_account_enabled
    ?boot_diagnostics_enabled ?defender_for_cloud_enabled
    ?guest_configuration_enabled ?id ?log_analytics_enabled
    ?status_change_alert_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~antimalware ~azure_security_baseline
    ~backup __resource_id =
  let __resource_type = "azurerm_automanage_configuration" in
  let __resource =
    azurerm_automanage_configuration ?automation_account_enabled
      ?boot_diagnostics_enabled ?defender_for_cloud_enabled
      ?guest_configuration_enabled ?id ?log_analytics_enabled
      ?status_change_alert_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~antimalware ~azure_security_baseline
      ~backup ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automanage_configuration __resource);
  let __resource_attributes =
    ({
       automation_account_enabled =
         Prop.computed __resource_type __resource_id
           "automation_account_enabled";
       boot_diagnostics_enabled =
         Prop.computed __resource_type __resource_id
           "boot_diagnostics_enabled";
       defender_for_cloud_enabled =
         Prop.computed __resource_type __resource_id
           "defender_for_cloud_enabled";
       guest_configuration_enabled =
         Prop.computed __resource_type __resource_id
           "guest_configuration_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       log_analytics_enabled =
         Prop.computed __resource_type __resource_id
           "log_analytics_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       status_change_alert_enabled =
         Prop.computed __resource_type __resource_id
           "status_change_alert_enabled";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
