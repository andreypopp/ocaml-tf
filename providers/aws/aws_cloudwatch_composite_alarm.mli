(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type actions_suppressor

val actions_suppressor :
  alarm:string prop ->
  extension_period:float prop ->
  wait_period:float prop ->
  unit ->
  actions_suppressor

type aws_cloudwatch_composite_alarm

val aws_cloudwatch_composite_alarm :
  ?actions_enabled:bool prop ->
  ?alarm_actions:string prop list ->
  ?alarm_description:string prop ->
  ?id:string prop ->
  ?insufficient_data_actions:string prop list ->
  ?ok_actions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?actions_suppressor:actions_suppressor list ->
  alarm_name:string prop ->
  alarm_rule:string prop ->
  unit ->
  aws_cloudwatch_composite_alarm

val yojson_of_aws_cloudwatch_composite_alarm :
  aws_cloudwatch_composite_alarm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  actions_enabled : bool prop;
  alarm_actions : string list prop;
  alarm_description : string prop;
  alarm_name : string prop;
  alarm_rule : string prop;
  arn : string prop;
  id : string prop;
  insufficient_data_actions : string list prop;
  ok_actions : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?actions_enabled:bool prop ->
  ?alarm_actions:string prop list ->
  ?alarm_description:string prop ->
  ?id:string prop ->
  ?insufficient_data_actions:string prop list ->
  ?ok_actions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?actions_suppressor:actions_suppressor list ->
  alarm_name:string prop ->
  alarm_rule:string prop ->
  string ->
  t

val make :
  ?actions_enabled:bool prop ->
  ?alarm_actions:string prop list ->
  ?alarm_description:string prop ->
  ?id:string prop ->
  ?insufficient_data_actions:string prop list ->
  ?ok_actions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?actions_suppressor:actions_suppressor list ->
  alarm_name:string prop ->
  alarm_rule:string prop ->
  string ->
  t Tf_core.resource
