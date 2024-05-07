(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type labels

val labels :
  ?description:string prop ->
  ?value_type:string prop ->
  key:string prop ->
  unit ->
  labels

type metadata

val metadata :
  ?ingest_delay:string prop ->
  ?sample_period:string prop ->
  unit ->
  metadata

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_metric_descriptor

val google_monitoring_metric_descriptor :
  ?id:string prop ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?unit:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  metric_kind:string prop ->
  type_:string prop ->
  value_type:string prop ->
  labels:labels list ->
  unit ->
  google_monitoring_metric_descriptor

val yojson_of_google_monitoring_metric_descriptor :
  google_monitoring_metric_descriptor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  launch_stage : string prop;
  metric_kind : string prop;
  monitored_resource_types : string list prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
  unit : string prop;
  value_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?unit:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  metric_kind:string prop ->
  type_:string prop ->
  value_type:string prop ->
  labels:labels list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?unit:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  metric_kind:string prop ->
  type_:string prop ->
  value_type:string prop ->
  labels:labels list ->
  string ->
  t Tf_core.resource
