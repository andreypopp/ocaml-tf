(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_os_config_patch_deployment__instance_filter__group_labels = {
  labels : (string * string) list;
      (** Compute Engine instance labels that must be present for a VM instance to be targeted by this filter *)
}
[@@deriving yojson_of]
(** Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances. *)

type google_os_config_patch_deployment__instance_filter = {
  all : bool option; [@option]
      (** Target all VM instances in the project. If true, no other criteria is permitted. *)
  instance_name_prefixes : string list option; [@option]
      (** Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
VMs when targeting configs, for example prefix=prod-. *)
  instances : string list option; [@option]
      (** Targets any of the VM instances specified. Instances are specified by their URI in the 'form zones/{{zone}}/instances/{{instance_name}}',
'projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}', or
'https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}' *)
  zones : string list option; [@option]
      (** Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone. *)
  group_labels :
    google_os_config_patch_deployment__instance_filter__group_labels
    list;
}
[@@deriving yojson_of]
(** VM instances to patch. *)

type google_os_config_patch_deployment__one_time_schedule = {
  execute_time : string;
      (** The desired patch job execution time. A timestamp in RFC3339 UTC Zulu format,
accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
}
[@@deriving yojson_of]
(** Schedule a one-time execution. *)

type google_os_config_patch_deployment__patch_config__apt = {
  excludes : string list option; [@option]
      (** List of packages to exclude from update. These packages will be excluded. *)
  exclusive_packages : string list option; [@option]
      (** An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. *)
  type_ : string option; [@option] [@key "type"]
      (** By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead. Possible values: [DIST, UPGRADE] *)
}
[@@deriving yojson_of]
(** Apt update settings. Use this setting to override the default apt patch rules. *)

type google_os_config_patch_deployment__patch_config__goo = {
  enabled : bool;
      (** goo update settings. Use this setting to override the default goo patch rules. *)
}
[@@deriving yojson_of]
(** goo update settings. Use this setting to override the default goo patch rules. *)

type google_os_config_patch_deployment__patch_config__post_step__linux_exec_step_config__gcs_object = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation_number : string;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type google_os_config_patch_deployment__patch_config__post_step__linux_exec_step_config = {
  allowed_success_codes : float list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    google_os_config_patch_deployment__patch_config__post_step__linux_exec_step_config__gcs_object
    list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Linux VMs targeted by the PatchJob. *)

type google_os_config_patch_deployment__patch_config__post_step__windows_exec_step_config__gcs_object = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation_number : string;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type google_os_config_patch_deployment__patch_config__post_step__windows_exec_step_config = {
  allowed_success_codes : float list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    google_os_config_patch_deployment__patch_config__post_step__windows_exec_step_config__gcs_object
    list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Windows VMs targeted by the PatchJob. *)

type google_os_config_patch_deployment__patch_config__post_step = {
  linux_exec_step_config :
    google_os_config_patch_deployment__patch_config__post_step__linux_exec_step_config
    list;
  windows_exec_step_config :
    google_os_config_patch_deployment__patch_config__post_step__windows_exec_step_config
    list;
}
[@@deriving yojson_of]
(** The ExecStep to run after the patch update. *)

type google_os_config_patch_deployment__patch_config__pre_step__linux_exec_step_config__gcs_object = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation_number : string;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type google_os_config_patch_deployment__patch_config__pre_step__linux_exec_step_config = {
  allowed_success_codes : float list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    google_os_config_patch_deployment__patch_config__pre_step__linux_exec_step_config__gcs_object
    list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Linux VMs targeted by the PatchJob. *)

type google_os_config_patch_deployment__patch_config__pre_step__windows_exec_step_config__gcs_object = {
  bucket : string;  (** Bucket of the Cloud Storage object. *)
  generation_number : string;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type google_os_config_patch_deployment__patch_config__pre_step__windows_exec_step_config = {
  allowed_success_codes : float list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    google_os_config_patch_deployment__patch_config__pre_step__windows_exec_step_config__gcs_object
    list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Windows VMs targeted by the PatchJob. *)

type google_os_config_patch_deployment__patch_config__pre_step = {
  linux_exec_step_config :
    google_os_config_patch_deployment__patch_config__pre_step__linux_exec_step_config
    list;
  windows_exec_step_config :
    google_os_config_patch_deployment__patch_config__pre_step__windows_exec_step_config
    list;
}
[@@deriving yojson_of]
(** The ExecStep to run before the patch update. *)

type google_os_config_patch_deployment__patch_config__windows_update = {
  classifications : string list option; [@option]
      (** Only apply updates of these windows update classifications. If empty, all updates are applied. Possible values: [CRITICAL, SECURITY, DEFINITION, DRIVER, FEATURE_PACK, SERVICE_PACK, TOOL, UPDATE_ROLLUP, UPDATE] *)
  excludes : string list option; [@option]
      (** List of KBs to exclude from update. *)
  exclusive_patches : string list option; [@option]
      (** An exclusive list of kbs to be updated. These are the only patches that will be updated.
This field must not be used with other patch configurations. *)
}
[@@deriving yojson_of]
(** Windows update settings. Use this setting to override the default Windows patch rules. *)

type google_os_config_patch_deployment__patch_config__yum = {
  excludes : string list option; [@option]
      (** List of packages to exclude from update. These packages will be excluded. *)
  exclusive_packages : string list option; [@option]
      (** An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. *)
  minimal : bool option; [@option]
      (** Will cause patch to run yum update-minimal instead. *)
  security : bool option; [@option]
      (** Adds the --security flag to yum update. Not supported on all platforms. *)
}
[@@deriving yojson_of]
(** Yum update settings. Use this setting to override the default yum patch rules. *)

type google_os_config_patch_deployment__patch_config__zypper = {
  categories : string list option; [@option]
      (** Install only patches with these categories. Common categories include security, recommended, and feature. *)
  excludes : string list option; [@option]
      (** List of packages to exclude from update. *)
  exclusive_patches : string list option; [@option]
      (** An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command.
This field must not be used with any other patch configuration fields. *)
  severities : string list option; [@option]
      (** Install only patches with these severities. Common severities include critical, important, moderate, and low. *)
  with_optional : bool option; [@option]
      (** Adds the --with-optional flag to zypper patch. *)
  with_update : bool option; [@option]
      (** Adds the --with-update flag, to zypper patch. *)
}
[@@deriving yojson_of]
(** zypper update settings. Use this setting to override the default zypper patch rules. *)

type google_os_config_patch_deployment__patch_config = {
  mig_instances_allowed : bool option; [@option]
      (** Allows the patch job to run on Managed instance groups (MIGs). *)
  reboot_config : string option; [@option]
      (** Post-patch reboot settings. Possible values: [DEFAULT, ALWAYS, NEVER] *)
  apt : google_os_config_patch_deployment__patch_config__apt list;
  goo : google_os_config_patch_deployment__patch_config__goo list;
  post_step :
    google_os_config_patch_deployment__patch_config__post_step list;
  pre_step :
    google_os_config_patch_deployment__patch_config__pre_step list;
  windows_update :
    google_os_config_patch_deployment__patch_config__windows_update
    list;
  yum : google_os_config_patch_deployment__patch_config__yum list;
  zypper :
    google_os_config_patch_deployment__patch_config__zypper list;
}
[@@deriving yojson_of]
(** Patch configuration that is applied. *)

type google_os_config_patch_deployment__recurring_schedule__monthly__week_day_of_month = {
  day_of_week : string;
      (** A day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  day_offset : float option; [@option]
      (** Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. *)
  week_ordinal : float;
      (** Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month. *)
}
[@@deriving yojson_of]
(** Week day in a month. *)

type google_os_config_patch_deployment__recurring_schedule__monthly = {
  month_day : float option; [@option]
      (** One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
Months without the target day will be skipped. For example, a schedule to run every month on the 31st
will not run in February, April, June, etc. *)
  week_day_of_month :
    google_os_config_patch_deployment__recurring_schedule__monthly__week_day_of_month
    list;
}
[@@deriving yojson_of]
(** Schedule with monthly executions. *)

type google_os_config_patch_deployment__recurring_schedule__time_of_day = {
  hours : float option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Time of the day to run a recurring deployment. *)

type google_os_config_patch_deployment__recurring_schedule__time_zone = {
  id : string;
      (** IANA Time Zone Database time zone, e.g. America/New_York. *)
  version : string option; [@option]
      (** IANA Time Zone Database version number, e.g. 2019a. *)
}
[@@deriving yojson_of]
(** Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
determined by the chosen time zone. *)

type google_os_config_patch_deployment__recurring_schedule__weekly = {
  day_of_week : string;
      (** IANA Time Zone Database time zone, e.g. America/New_York. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
}
[@@deriving yojson_of]
(** Schedule with weekly executions. *)

type google_os_config_patch_deployment__recurring_schedule = {
  end_time : string option; [@option]
      (** The end time at which a recurring patch deployment schedule is no longer active.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  last_execute_time : string;
      (** The time the last patch job ran successfully.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  next_execute_time : string;
      (** The time the next patch job is scheduled to run.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  start_time : string option; [@option]
      (** The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  monthly :
    google_os_config_patch_deployment__recurring_schedule__monthly
    list;
  time_of_day :
    google_os_config_patch_deployment__recurring_schedule__time_of_day
    list;
  time_zone :
    google_os_config_patch_deployment__recurring_schedule__time_zone
    list;
  weekly :
    google_os_config_patch_deployment__recurring_schedule__weekly
    list;
}
[@@deriving yojson_of]
(** Schedule recurring executions. *)

type google_os_config_patch_deployment__rollout__disruption_budget = {
  fixed : float option; [@option]  (** Specifies a fixed value. *)
  percentage : float option; [@option]
      (** Specifies the relative value defined as a percentage, which will be multiplied by a reference value. *)
}
[@@deriving yojson_of]
(** The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.
During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps.
A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget.
For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone.
For example, if the disruption budget has a fixed value of 10, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops. *)

type google_os_config_patch_deployment__rollout = {
  mode : string;
      (** Mode of the patch rollout. Possible values: [ZONE_BY_ZONE, CONCURRENT_ZONES] *)
  disruption_budget :
    google_os_config_patch_deployment__rollout__disruption_budget
    list;
}
[@@deriving yojson_of]
(** Rollout strategy of the patch job. *)

type google_os_config_patch_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_os_config_patch_deployment__timeouts *)

type google_os_config_patch_deployment = {
  description : string option; [@option]
      (** Description of the patch deployment. Length of the description is limited to 1024 characters. *)
  duration : string option; [@option]
      (** Duration of the patch. After the duration ends, the patch times out.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s *)
  id : string option; [@option]  (** id *)
  patch_deployment_id : string;
      (** A name for the patch deployment in the project. When creating a name the following rules apply:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project. *)
  project : string option; [@option]  (** project *)
  instance_filter :
    google_os_config_patch_deployment__instance_filter list;
  one_time_schedule :
    google_os_config_patch_deployment__one_time_schedule list;
  patch_config :
    google_os_config_patch_deployment__patch_config list;
  recurring_schedule :
    google_os_config_patch_deployment__recurring_schedule list;
  rollout : google_os_config_patch_deployment__rollout list;
  timeouts : google_os_config_patch_deployment__timeouts option;
}
[@@deriving yojson_of]
(** google_os_config_patch_deployment *)

let google_os_config_patch_deployment ?description ?duration ?id
    ?project ?timeouts ~patch_deployment_id ~instance_filter
    ~one_time_schedule ~patch_config ~recurring_schedule ~rollout
    __resource_id =
  let __resource_type = "google_os_config_patch_deployment" in
  let __resource =
    {
      description;
      duration;
      id;
      patch_deployment_id;
      project;
      instance_filter;
      one_time_schedule;
      patch_config;
      recurring_schedule;
      rollout;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_os_config_patch_deployment __resource);
  ()
