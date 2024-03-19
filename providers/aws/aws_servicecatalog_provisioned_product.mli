(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type outputs = {
  description : string prop;  (** description *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type provisioning_parameters

val provisioning_parameters :
  ?use_previous_value:bool prop ->
  ?value:string prop ->
  key:string prop ->
  unit ->
  provisioning_parameters

type stack_set_provisioning_preferences

val stack_set_provisioning_preferences :
  ?accounts:string prop list ->
  ?failure_tolerance_count:float prop ->
  ?failure_tolerance_percentage:float prop ->
  ?max_concurrency_count:float prop ->
  ?max_concurrency_percentage:float prop ->
  ?regions:string prop list ->
  unit ->
  stack_set_provisioning_preferences

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_provisioned_product

val aws_servicecatalog_provisioned_product :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?notification_arns:string prop list ->
  ?path_id:string prop ->
  ?path_name:string prop ->
  ?product_id:string prop ->
  ?product_name:string prop ->
  ?provisioning_artifact_id:string prop ->
  ?provisioning_artifact_name:string prop ->
  ?retain_physical_resources:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  provisioning_parameters:provisioning_parameters list ->
  stack_set_provisioning_preferences:
    stack_set_provisioning_preferences list ->
  unit ->
  aws_servicecatalog_provisioned_product

val yojson_of_aws_servicecatalog_provisioned_product :
  aws_servicecatalog_provisioned_product -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  arn : string prop;
  cloudwatch_dashboard_names : string list prop;
  created_time : string prop;
  id : string prop;
  ignore_errors : bool prop;
  last_provisioning_record_id : string prop;
  last_record_id : string prop;
  last_successful_provisioning_record_id : string prop;
  launch_role_arn : string prop;
  name : string prop;
  notification_arns : string list prop;
  outputs : outputs list prop;
  path_id : string prop;
  path_name : string prop;
  product_id : string prop;
  product_name : string prop;
  provisioning_artifact_id : string prop;
  provisioning_artifact_name : string prop;
  retain_physical_resources : bool prop;
  status : string prop;
  status_message : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?id:string prop ->
  ?ignore_errors:bool prop ->
  ?notification_arns:string prop list ->
  ?path_id:string prop ->
  ?path_name:string prop ->
  ?product_id:string prop ->
  ?product_name:string prop ->
  ?provisioning_artifact_id:string prop ->
  ?provisioning_artifact_name:string prop ->
  ?retain_physical_resources:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  provisioning_parameters:provisioning_parameters list ->
  stack_set_provisioning_preferences:
    stack_set_provisioning_preferences list ->
  string ->
  t
