(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type actions__notification_property

val actions__notification_property :
  ?notify_delay_after:float prop ->
  unit ->
  actions__notification_property

type actions

val actions :
  ?arguments:(string * string prop) list ->
  ?crawler_name:string prop ->
  ?job_name:string prop ->
  ?security_configuration:string prop ->
  ?timeout:float prop ->
  notification_property:actions__notification_property list ->
  unit ->
  actions

type event_batching_condition

val event_batching_condition :
  ?batch_window:float prop ->
  batch_size:float prop ->
  unit ->
  event_batching_condition

type predicate__conditions

val predicate__conditions :
  ?crawl_state:string prop ->
  ?crawler_name:string prop ->
  ?job_name:string prop ->
  ?logical_operator:string prop ->
  ?state:string prop ->
  unit ->
  predicate__conditions

type predicate

val predicate :
  ?logical:string prop ->
  conditions:predicate__conditions list ->
  unit ->
  predicate

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_glue_trigger

val aws_glue_trigger :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?start_on_creation:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?workflow_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  actions:actions list ->
  event_batching_condition:event_batching_condition list ->
  predicate:predicate list ->
  unit ->
  aws_glue_trigger

val yojson_of_aws_glue_trigger : aws_glue_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  start_on_creation : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  workflow_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?start_on_creation:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?workflow_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  actions:actions list ->
  event_batching_condition:event_batching_condition list ->
  predicate:predicate list ->
  string ->
  t
