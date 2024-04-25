(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_filter__group_labels

val instance_filter__group_labels :
  labels:(string * string prop) list ->
  unit ->
  instance_filter__group_labels

type instance_filter

val instance_filter :
  ?all:bool prop ->
  ?instance_name_prefixes:string prop list ->
  ?instances:string prop list ->
  ?zones:string prop list ->
  ?group_labels:instance_filter__group_labels list ->
  unit ->
  instance_filter

type one_time_schedule

val one_time_schedule :
  execute_time:string prop -> unit -> one_time_schedule

type patch_config__apt

val patch_config__apt :
  ?excludes:string prop list ->
  ?exclusive_packages:string prop list ->
  ?type_:string prop ->
  unit ->
  patch_config__apt

type patch_config__goo

val patch_config__goo :
  enabled:bool prop -> unit -> patch_config__goo

type patch_config__post_step__linux_exec_step_config__gcs_object

val patch_config__post_step__linux_exec_step_config__gcs_object :
  bucket:string prop ->
  generation_number:string prop ->
  object_:string prop ->
  unit ->
  patch_config__post_step__linux_exec_step_config__gcs_object

type patch_config__post_step__linux_exec_step_config

val patch_config__post_step__linux_exec_step_config :
  ?allowed_success_codes:float prop list ->
  ?interpreter:string prop ->
  ?local_path:string prop ->
  ?gcs_object:
    patch_config__post_step__linux_exec_step_config__gcs_object list ->
  unit ->
  patch_config__post_step__linux_exec_step_config

type patch_config__post_step__windows_exec_step_config__gcs_object

val patch_config__post_step__windows_exec_step_config__gcs_object :
  bucket:string prop ->
  generation_number:string prop ->
  object_:string prop ->
  unit ->
  patch_config__post_step__windows_exec_step_config__gcs_object

type patch_config__post_step__windows_exec_step_config

val patch_config__post_step__windows_exec_step_config :
  ?allowed_success_codes:float prop list ->
  ?interpreter:string prop ->
  ?local_path:string prop ->
  ?gcs_object:
    patch_config__post_step__windows_exec_step_config__gcs_object
    list ->
  unit ->
  patch_config__post_step__windows_exec_step_config

type patch_config__post_step

val patch_config__post_step :
  ?linux_exec_step_config:
    patch_config__post_step__linux_exec_step_config list ->
  ?windows_exec_step_config:
    patch_config__post_step__windows_exec_step_config list ->
  unit ->
  patch_config__post_step

type patch_config__pre_step__linux_exec_step_config__gcs_object

val patch_config__pre_step__linux_exec_step_config__gcs_object :
  bucket:string prop ->
  generation_number:string prop ->
  object_:string prop ->
  unit ->
  patch_config__pre_step__linux_exec_step_config__gcs_object

type patch_config__pre_step__linux_exec_step_config

val patch_config__pre_step__linux_exec_step_config :
  ?allowed_success_codes:float prop list ->
  ?interpreter:string prop ->
  ?local_path:string prop ->
  ?gcs_object:
    patch_config__pre_step__linux_exec_step_config__gcs_object list ->
  unit ->
  patch_config__pre_step__linux_exec_step_config

type patch_config__pre_step__windows_exec_step_config__gcs_object

val patch_config__pre_step__windows_exec_step_config__gcs_object :
  bucket:string prop ->
  generation_number:string prop ->
  object_:string prop ->
  unit ->
  patch_config__pre_step__windows_exec_step_config__gcs_object

type patch_config__pre_step__windows_exec_step_config

val patch_config__pre_step__windows_exec_step_config :
  ?allowed_success_codes:float prop list ->
  ?interpreter:string prop ->
  ?local_path:string prop ->
  ?gcs_object:
    patch_config__pre_step__windows_exec_step_config__gcs_object list ->
  unit ->
  patch_config__pre_step__windows_exec_step_config

type patch_config__pre_step

val patch_config__pre_step :
  ?linux_exec_step_config:
    patch_config__pre_step__linux_exec_step_config list ->
  ?windows_exec_step_config:
    patch_config__pre_step__windows_exec_step_config list ->
  unit ->
  patch_config__pre_step

type patch_config__windows_update

val patch_config__windows_update :
  ?classifications:string prop list ->
  ?excludes:string prop list ->
  ?exclusive_patches:string prop list ->
  unit ->
  patch_config__windows_update

type patch_config__yum

val patch_config__yum :
  ?excludes:string prop list ->
  ?exclusive_packages:string prop list ->
  ?minimal:bool prop ->
  ?security:bool prop ->
  unit ->
  patch_config__yum

type patch_config__zypper

val patch_config__zypper :
  ?categories:string prop list ->
  ?excludes:string prop list ->
  ?exclusive_patches:string prop list ->
  ?severities:string prop list ->
  ?with_optional:bool prop ->
  ?with_update:bool prop ->
  unit ->
  patch_config__zypper

type patch_config

val patch_config :
  ?mig_instances_allowed:bool prop ->
  ?reboot_config:string prop ->
  ?apt:patch_config__apt list ->
  ?goo:patch_config__goo list ->
  ?post_step:patch_config__post_step list ->
  ?pre_step:patch_config__pre_step list ->
  ?windows_update:patch_config__windows_update list ->
  ?yum:patch_config__yum list ->
  ?zypper:patch_config__zypper list ->
  unit ->
  patch_config

type recurring_schedule__monthly__week_day_of_month

val recurring_schedule__monthly__week_day_of_month :
  ?day_offset:float prop ->
  day_of_week:string prop ->
  week_ordinal:float prop ->
  unit ->
  recurring_schedule__monthly__week_day_of_month

type recurring_schedule__monthly

val recurring_schedule__monthly :
  ?month_day:float prop ->
  ?week_day_of_month:
    recurring_schedule__monthly__week_day_of_month list ->
  unit ->
  recurring_schedule__monthly

type recurring_schedule__time_of_day

val recurring_schedule__time_of_day :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  recurring_schedule__time_of_day

type recurring_schedule__time_zone

val recurring_schedule__time_zone :
  ?version:string prop ->
  id:string prop ->
  unit ->
  recurring_schedule__time_zone

type recurring_schedule__weekly

val recurring_schedule__weekly :
  day_of_week:string prop -> unit -> recurring_schedule__weekly

type recurring_schedule

val recurring_schedule :
  ?end_time:string prop ->
  ?start_time:string prop ->
  ?monthly:recurring_schedule__monthly list ->
  ?weekly:recurring_schedule__weekly list ->
  time_of_day:recurring_schedule__time_of_day list ->
  time_zone:recurring_schedule__time_zone list ->
  unit ->
  recurring_schedule

type rollout__disruption_budget

val rollout__disruption_budget :
  ?fixed:float prop ->
  ?percentage:float prop ->
  unit ->
  rollout__disruption_budget

type rollout

val rollout :
  mode:string prop ->
  disruption_budget:rollout__disruption_budget list ->
  unit ->
  rollout

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_os_config_patch_deployment

val google_os_config_patch_deployment :
  ?description:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?one_time_schedule:one_time_schedule list ->
  ?patch_config:patch_config list ->
  ?recurring_schedule:recurring_schedule list ->
  ?rollout:rollout list ->
  ?timeouts:timeouts ->
  patch_deployment_id:string prop ->
  instance_filter:instance_filter list ->
  unit ->
  google_os_config_patch_deployment

val yojson_of_google_os_config_patch_deployment :
  google_os_config_patch_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?one_time_schedule:one_time_schedule list ->
  ?patch_config:patch_config list ->
  ?recurring_schedule:recurring_schedule list ->
  ?rollout:rollout list ->
  ?timeouts:timeouts ->
  patch_deployment_id:string prop ->
  instance_filter:instance_filter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?one_time_schedule:one_time_schedule list ->
  ?patch_config:patch_config list ->
  ?recurring_schedule:recurring_schedule list ->
  ?rollout:rollout list ->
  ?timeouts:timeouts ->
  patch_deployment_id:string prop ->
  instance_filter:instance_filter list ->
  string ->
  t Tf_core.resource
