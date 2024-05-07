(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type job_schedule = {
  job_schedule_id : string prop;  (** job_schedule_id *)
  parameters : (string * string prop) list;  (** parameters *)
  run_on : string prop;  (** run_on *)
  schedule_name : string prop;  (** schedule_name *)
}

type draft__content_link__hash

val draft__content_link__hash :
  algorithm:string prop ->
  value:string prop ->
  unit ->
  draft__content_link__hash

type draft__content_link

val draft__content_link :
  ?version:string prop ->
  ?hash:draft__content_link__hash list ->
  uri:string prop ->
  unit ->
  draft__content_link

type draft__parameters

val draft__parameters :
  ?default_value:string prop ->
  ?mandatory:bool prop ->
  ?position:float prop ->
  key:string prop ->
  type_:string prop ->
  unit ->
  draft__parameters

type draft

val draft :
  ?edit_mode_enabled:bool prop ->
  ?output_types:string prop list ->
  ?content_link:draft__content_link list ->
  ?parameters:draft__parameters list ->
  unit ->
  draft

type publish_content_link__hash

val publish_content_link__hash :
  algorithm:string prop ->
  value:string prop ->
  unit ->
  publish_content_link__hash

type publish_content_link

val publish_content_link :
  ?version:string prop ->
  ?hash:publish_content_link__hash list ->
  uri:string prop ->
  unit ->
  publish_content_link

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_runbook

val azurerm_automation_runbook :
  ?content:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?job_schedule:job_schedule list ->
  ?log_activity_trace_level:float prop ->
  ?tags:(string * string prop) list ->
  ?draft:draft list ->
  ?publish_content_link:publish_content_link list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  location:string prop ->
  log_progress:bool prop ->
  log_verbose:bool prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_type:string prop ->
  unit ->
  azurerm_automation_runbook

val yojson_of_azurerm_automation_runbook :
  azurerm_automation_runbook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  job_schedule : job_schedule list prop;
  location : string prop;
  log_activity_trace_level : float prop;
  log_progress : bool prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  runbook_type : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?content:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?job_schedule:job_schedule list ->
  ?log_activity_trace_level:float prop ->
  ?tags:(string * string prop) list ->
  ?draft:draft list ->
  ?publish_content_link:publish_content_link list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  location:string prop ->
  log_progress:bool prop ->
  log_verbose:bool prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_type:string prop ->
  string ->
  t

val make :
  ?content:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?job_schedule:job_schedule list ->
  ?log_activity_trace_level:float prop ->
  ?tags:(string * string prop) list ->
  ?draft:draft list ->
  ?publish_content_link:publish_content_link list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  location:string prop ->
  log_progress:bool prop ->
  log_verbose:bool prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_type:string prop ->
  string ->
  t Tf_core.resource
