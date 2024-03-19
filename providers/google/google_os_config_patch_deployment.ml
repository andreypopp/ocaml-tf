(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type instance_filter__group_labels = {
  labels : (string * string prop) list;
      (** Compute Engine instance labels that must be present for a VM instance to be targeted by this filter *)
}
[@@deriving yojson_of]
(** Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances. *)

type instance_filter = {
  all : bool prop option; [@option]
      (** Target all VM instances in the project. If true, no other criteria is permitted. *)
  instance_name_prefixes : string prop list option; [@option]
      (** Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
VMs when targeting configs, for example prefix=prod-. *)
  instances : string prop list option; [@option]
      (** Targets any of the VM instances specified. Instances are specified by their URI in the 'form zones/{{zone}}/instances/{{instance_name}}',
'projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}', or
'https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}' *)
  zones : string prop list option; [@option]
      (** Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone. *)
  group_labels : instance_filter__group_labels list;
}
[@@deriving yojson_of]
(** VM instances to patch. *)

type one_time_schedule = {
  execute_time : string prop;
      (** The desired patch job execution time. A timestamp in RFC3339 UTC Zulu format,
accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
}
[@@deriving yojson_of]
(** Schedule a one-time execution. *)

type patch_config__apt = {
  excludes : string prop list option; [@option]
      (** List of packages to exclude from update. These packages will be excluded. *)
  exclusive_packages : string prop list option; [@option]
      (** An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. *)
  type_ : string prop option; [@option] [@key "type"]
      (** By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead. Possible values: [DIST, UPGRADE] *)
}
[@@deriving yojson_of]
(** Apt update settings. Use this setting to override the default apt patch rules. *)

type patch_config__goo = {
  enabled : bool prop;
      (** goo update settings. Use this setting to override the default goo patch rules. *)
}
[@@deriving yojson_of]
(** goo update settings. Use this setting to override the default goo patch rules. *)

type patch_config__post_step__linux_exec_step_config__gcs_object = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation_number : string prop;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type patch_config__post_step__linux_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string prop option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string prop option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    patch_config__post_step__linux_exec_step_config__gcs_object list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Linux VMs targeted by the PatchJob. *)

type patch_config__post_step__windows_exec_step_config__gcs_object = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation_number : string prop;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type patch_config__post_step__windows_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string prop option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string prop option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    patch_config__post_step__windows_exec_step_config__gcs_object
    list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Windows VMs targeted by the PatchJob. *)

type patch_config__post_step = {
  linux_exec_step_config :
    patch_config__post_step__linux_exec_step_config list;
  windows_exec_step_config :
    patch_config__post_step__windows_exec_step_config list;
}
[@@deriving yojson_of]
(** The ExecStep to run after the patch update. *)

type patch_config__pre_step__linux_exec_step_config__gcs_object = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation_number : string prop;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type patch_config__pre_step__linux_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string prop option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string prop option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    patch_config__pre_step__linux_exec_step_config__gcs_object list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Linux VMs targeted by the PatchJob. *)

type patch_config__pre_step__windows_exec_step_config__gcs_object = {
  bucket : string prop;  (** Bucket of the Cloud Storage object. *)
  generation_number : string prop;
      (** Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change. *)
  object_ : string prop; [@key "object"]
      (** Name of the Cloud Storage object. *)
}
[@@deriving yojson_of]
(** A Cloud Storage object containing the executable. *)

type patch_config__pre_step__windows_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
      (** Defaults to [0]. A list of possible return values that the execution can return to indicate a success. *)
  interpreter : string prop option; [@option]
      (** The script interpreter to use to run the script. If no interpreter is specified the script will
be executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [SHELL, POWERSHELL] *)
  local_path : string prop option; [@option]
      (** An absolute path to the executable on the VM. *)
  gcs_object :
    patch_config__pre_step__windows_exec_step_config__gcs_object list;
}
[@@deriving yojson_of]
(** The ExecStepConfig for all Windows VMs targeted by the PatchJob. *)

type patch_config__pre_step = {
  linux_exec_step_config :
    patch_config__pre_step__linux_exec_step_config list;
  windows_exec_step_config :
    patch_config__pre_step__windows_exec_step_config list;
}
[@@deriving yojson_of]
(** The ExecStep to run before the patch update. *)

type patch_config__windows_update = {
  classifications : string prop list option; [@option]
      (** Only apply updates of these windows update classifications. If empty, all updates are applied. Possible values: [CRITICAL, SECURITY, DEFINITION, DRIVER, FEATURE_PACK, SERVICE_PACK, TOOL, UPDATE_ROLLUP, UPDATE] *)
  excludes : string prop list option; [@option]
      (** List of KBs to exclude from update. *)
  exclusive_patches : string prop list option; [@option]
      (** An exclusive list of kbs to be updated. These are the only patches that will be updated.
This field must not be used with other patch configurations. *)
}
[@@deriving yojson_of]
(** Windows update settings. Use this setting to override the default Windows patch rules. *)

type patch_config__yum = {
  excludes : string prop list option; [@option]
      (** List of packages to exclude from update. These packages will be excluded. *)
  exclusive_packages : string prop list option; [@option]
      (** An exclusive list of packages to be updated. These are the only packages that will be updated.
If these packages are not installed, they will be ignored. This field cannot be specified with
any other patch configuration fields. *)
  minimal : bool prop option; [@option]
      (** Will cause patch to run yum update-minimal instead. *)
  security : bool prop option; [@option]
      (** Adds the --security flag to yum update. Not supported on all platforms. *)
}
[@@deriving yojson_of]
(** Yum update settings. Use this setting to override the default yum patch rules. *)

type patch_config__zypper = {
  categories : string prop list option; [@option]
      (** Install only patches with these categories. Common categories include security, recommended, and feature. *)
  excludes : string prop list option; [@option]
      (** List of packages to exclude from update. *)
  exclusive_patches : string prop list option; [@option]
      (** An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command.
This field must not be used with any other patch configuration fields. *)
  severities : string prop list option; [@option]
      (** Install only patches with these severities. Common severities include critical, important, moderate, and low. *)
  with_optional : bool prop option; [@option]
      (** Adds the --with-optional flag to zypper patch. *)
  with_update : bool prop option; [@option]
      (** Adds the --with-update flag, to zypper patch. *)
}
[@@deriving yojson_of]
(** zypper update settings. Use this setting to override the default zypper patch rules. *)

type patch_config = {
  mig_instances_allowed : bool prop option; [@option]
      (** Allows the patch job to run on Managed instance groups (MIGs). *)
  reboot_config : string prop option; [@option]
      (** Post-patch reboot settings. Possible values: [DEFAULT, ALWAYS, NEVER] *)
  apt : patch_config__apt list;
  goo : patch_config__goo list;
  post_step : patch_config__post_step list;
  pre_step : patch_config__pre_step list;
  windows_update : patch_config__windows_update list;
  yum : patch_config__yum list;
  zypper : patch_config__zypper list;
}
[@@deriving yojson_of]
(** Patch configuration that is applied. *)

type recurring_schedule__monthly__week_day_of_month = {
  day_of_week : string prop;
      (** A day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  day_offset : float prop option; [@option]
      (** Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. *)
  week_ordinal : float prop;
      (** Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month. *)
}
[@@deriving yojson_of]
(** Week day in a month. *)

type recurring_schedule__monthly = {
  month_day : float prop option; [@option]
      (** One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
Months without the target day will be skipped. For example, a schedule to run every month on the 31st
will not run in February, April, June, etc. *)
  week_day_of_month :
    recurring_schedule__monthly__week_day_of_month list;
}
[@@deriving yojson_of]
(** Schedule with monthly executions. *)

type recurring_schedule__time_of_day = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Time of the day to run a recurring deployment. *)

type recurring_schedule__time_zone = {
  id : string prop;
      (** IANA Time Zone Database time zone, e.g. America/New_York. *)
  version : string prop option; [@option]
      (** IANA Time Zone Database version number, e.g. 2019a. *)
}
[@@deriving yojson_of]
(** Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
determined by the chosen time zone. *)

type recurring_schedule__weekly = {
  day_of_week : string prop;
      (** IANA Time Zone Database time zone, e.g. America/New_York. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
}
[@@deriving yojson_of]
(** Schedule with weekly executions. *)

type recurring_schedule = {
  end_time : string prop option; [@option]
      (** The end time at which a recurring patch deployment schedule is no longer active.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  start_time : string prop option; [@option]
      (** The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  monthly : recurring_schedule__monthly list;
  time_of_day : recurring_schedule__time_of_day list;
  time_zone : recurring_schedule__time_zone list;
  weekly : recurring_schedule__weekly list;
}
[@@deriving yojson_of]
(** Schedule recurring executions. *)

type rollout__disruption_budget = {
  fixed : float prop option; [@option]
      (** Specifies a fixed value. *)
  percentage : float prop option; [@option]
      (** Specifies the relative value defined as a percentage, which will be multiplied by a reference value. *)
}
[@@deriving yojson_of]
(** The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.
During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps.
A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget.
For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone.
For example, if the disruption budget has a fixed value of 10, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops. *)

type rollout = {
  mode : string prop;
      (** Mode of the patch rollout. Possible values: [ZONE_BY_ZONE, CONCURRENT_ZONES] *)
  disruption_budget : rollout__disruption_budget list;
}
[@@deriving yojson_of]
(** Rollout strategy of the patch job. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_os_config_patch_deployment = {
  description : string prop option; [@option]
      (** Description of the patch deployment. Length of the description is limited to 1024 characters. *)
  duration : string prop option; [@option]
      (** Duration of the patch. After the duration ends, the patch times out.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s *)
  id : string prop option; [@option]  (** id *)
  patch_deployment_id : string prop;
      (** A name for the patch deployment in the project. When creating a name the following rules apply:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project. *)
  project : string prop option; [@option]  (** project *)
  instance_filter : instance_filter list;
  one_time_schedule : one_time_schedule list;
  patch_config : patch_config list;
  recurring_schedule : recurring_schedule list;
  rollout : rollout list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_os_config_patch_deployment *)

let instance_filter__group_labels ~labels () :
    instance_filter__group_labels =
  { labels }

let instance_filter ?all ?instance_name_prefixes ?instances ?zones
    ~group_labels () : instance_filter =
  { all; instance_name_prefixes; instances; zones; group_labels }

let one_time_schedule ~execute_time () : one_time_schedule =
  { execute_time }

let patch_config__apt ?excludes ?exclusive_packages ?type_ () :
    patch_config__apt =
  { excludes; exclusive_packages; type_ }

let patch_config__goo ~enabled () : patch_config__goo = { enabled }

let patch_config__post_step__linux_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__post_step__linux_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__post_step__linux_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path ~gcs_object () :
    patch_config__post_step__linux_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__post_step__windows_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__post_step__windows_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__post_step__windows_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path ~gcs_object () :
    patch_config__post_step__windows_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__post_step ~linux_exec_step_config
    ~windows_exec_step_config () : patch_config__post_step =
  { linux_exec_step_config; windows_exec_step_config }

let patch_config__pre_step__linux_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__pre_step__linux_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__pre_step__linux_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path ~gcs_object () :
    patch_config__pre_step__linux_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__pre_step__windows_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__pre_step__windows_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__pre_step__windows_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path ~gcs_object () :
    patch_config__pre_step__windows_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__pre_step ~linux_exec_step_config
    ~windows_exec_step_config () : patch_config__pre_step =
  { linux_exec_step_config; windows_exec_step_config }

let patch_config__windows_update ?classifications ?excludes
    ?exclusive_patches () : patch_config__windows_update =
  { classifications; excludes; exclusive_patches }

let patch_config__yum ?excludes ?exclusive_packages ?minimal
    ?security () : patch_config__yum =
  { excludes; exclusive_packages; minimal; security }

let patch_config__zypper ?categories ?excludes ?exclusive_patches
    ?severities ?with_optional ?with_update () : patch_config__zypper
    =
  {
    categories;
    excludes;
    exclusive_patches;
    severities;
    with_optional;
    with_update;
  }

let patch_config ?mig_instances_allowed ?reboot_config ~apt ~goo
    ~post_step ~pre_step ~windows_update ~yum ~zypper () :
    patch_config =
  {
    mig_instances_allowed;
    reboot_config;
    apt;
    goo;
    post_step;
    pre_step;
    windows_update;
    yum;
    zypper;
  }

let recurring_schedule__monthly__week_day_of_month ?day_offset
    ~day_of_week ~week_ordinal () :
    recurring_schedule__monthly__week_day_of_month =
  { day_of_week; day_offset; week_ordinal }

let recurring_schedule__monthly ?month_day ~week_day_of_month () :
    recurring_schedule__monthly =
  { month_day; week_day_of_month }

let recurring_schedule__time_of_day ?hours ?minutes ?nanos ?seconds
    () : recurring_schedule__time_of_day =
  { hours; minutes; nanos; seconds }

let recurring_schedule__time_zone ?version ~id () :
    recurring_schedule__time_zone =
  { id; version }

let recurring_schedule__weekly ~day_of_week () :
    recurring_schedule__weekly =
  { day_of_week }

let recurring_schedule ?end_time ?start_time ~monthly ~time_of_day
    ~time_zone ~weekly () : recurring_schedule =
  { end_time; start_time; monthly; time_of_day; time_zone; weekly }

let rollout__disruption_budget ?fixed ?percentage () :
    rollout__disruption_budget =
  { fixed; percentage }

let rollout ~mode ~disruption_budget () : rollout =
  { mode; disruption_budget }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_os_config_patch_deployment ?description ?duration ?id
    ?project ?timeouts ~patch_deployment_id ~instance_filter
    ~one_time_schedule ~patch_config ~recurring_schedule ~rollout ()
    : google_os_config_patch_deployment =
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

type t = {
  create_time : string prop;
  description : string prop;
  duration : string prop;
  id : string prop;
  last_execute_time : string prop;
  name : string prop;
  patch_deployment_id : string prop;
  project : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?duration ?id ?project ?timeouts
    ~patch_deployment_id ~instance_filter ~one_time_schedule
    ~patch_config ~recurring_schedule ~rollout __resource_id =
  let __resource_type = "google_os_config_patch_deployment" in
  let __resource =
    google_os_config_patch_deployment ?description ?duration ?id
      ?project ?timeouts ~patch_deployment_id ~instance_filter
      ~one_time_schedule ~patch_config ~recurring_schedule ~rollout
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_os_config_patch_deployment __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       id = Prop.computed __resource_type __resource_id "id";
       last_execute_time =
         Prop.computed __resource_type __resource_id
           "last_execute_time";
       name = Prop.computed __resource_type __resource_id "name";
       patch_deployment_id =
         Prop.computed __resource_type __resource_id
           "patch_deployment_id";
       project =
         Prop.computed __resource_type __resource_id "project";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
