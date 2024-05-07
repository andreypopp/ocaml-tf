(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type linux

val linux :
  ?classification_included:string prop ->
  ?classifications_included:string prop list ->
  ?excluded_packages:string prop list ->
  ?included_packages:string prop list ->
  ?reboot:string prop ->
  unit ->
  linux

type post_task

val post_task :
  ?parameters:(string * string prop) list ->
  ?source:string prop ->
  unit ->
  post_task

type pre_task

val pre_task :
  ?parameters:(string * string prop) list ->
  ?source:string prop ->
  unit ->
  pre_task

type schedule__monthly_occurrence

val schedule__monthly_occurrence :
  day:string prop ->
  occurrence:float prop ->
  unit ->
  schedule__monthly_occurrence

type schedule

val schedule :
  ?advanced_month_days:float prop list ->
  ?advanced_week_days:string prop list ->
  ?description:string prop ->
  ?expiry_time:string prop ->
  ?expiry_time_offset_minutes:float prop ->
  ?interval:float prop ->
  ?is_enabled:bool prop ->
  ?next_run:string prop ->
  ?next_run_offset_minutes:float prop ->
  ?start_time:string prop ->
  ?start_time_offset_minutes:float prop ->
  ?time_zone:string prop ->
  ?monthly_occurrence:schedule__monthly_occurrence list ->
  frequency:string prop ->
  unit ->
  schedule

type target__azure_query__tags

val target__azure_query__tags :
  tag:string prop ->
  values:string prop list ->
  unit ->
  target__azure_query__tags

type target__azure_query

val target__azure_query :
  ?locations:string prop list ->
  ?scope:string prop list ->
  ?tag_filter:string prop ->
  ?tags:target__azure_query__tags list ->
  unit ->
  target__azure_query

type target__non_azure_query

val target__non_azure_query :
  ?function_alias:string prop ->
  ?workspace_id:string prop ->
  unit ->
  target__non_azure_query

type target

val target :
  ?azure_query:target__azure_query list ->
  ?non_azure_query:target__non_azure_query list ->
  unit ->
  target

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type windows

val windows :
  ?classification_included:string prop ->
  ?classifications_included:string prop list ->
  ?excluded_knowledge_base_numbers:string prop list ->
  ?included_knowledge_base_numbers:string prop list ->
  ?reboot:string prop ->
  unit ->
  windows

type azurerm_automation_software_update_configuration

val azurerm_automation_software_update_configuration :
  ?duration:string prop ->
  ?id:string prop ->
  ?non_azure_computer_names:string prop list ->
  ?operating_system:string prop ->
  ?virtual_machine_ids:string prop list ->
  ?linux:linux list ->
  ?post_task:post_task list ->
  ?pre_task:pre_task list ->
  ?target:target list ->
  ?timeouts:timeouts ->
  ?windows:windows list ->
  automation_account_id:string prop ->
  name:string prop ->
  schedule:schedule list ->
  unit ->
  azurerm_automation_software_update_configuration

val yojson_of_azurerm_automation_software_update_configuration :
  azurerm_automation_software_update_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_id : string prop;
  duration : string prop;
  error_code : string prop;
  error_meesage : string prop;
  error_message : string prop;
  id : string prop;
  name : string prop;
  non_azure_computer_names : string list prop;
  operating_system : string prop;
  virtual_machine_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?duration:string prop ->
  ?id:string prop ->
  ?non_azure_computer_names:string prop list ->
  ?operating_system:string prop ->
  ?virtual_machine_ids:string prop list ->
  ?linux:linux list ->
  ?post_task:post_task list ->
  ?pre_task:pre_task list ->
  ?target:target list ->
  ?timeouts:timeouts ->
  ?windows:windows list ->
  automation_account_id:string prop ->
  name:string prop ->
  schedule:schedule list ->
  string ->
  t

val make :
  ?duration:string prop ->
  ?id:string prop ->
  ?non_azure_computer_names:string prop list ->
  ?operating_system:string prop ->
  ?virtual_machine_ids:string prop list ->
  ?linux:linux list ->
  ?post_task:post_task list ->
  ?pre_task:pre_task list ->
  ?target:target list ->
  ?timeouts:timeouts ->
  ?windows:windows list ->
  automation_account_id:string prop ->
  name:string prop ->
  schedule:schedule list ->
  string ->
  t Tf_core.resource
