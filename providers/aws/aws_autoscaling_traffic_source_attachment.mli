(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type traffic_source

val traffic_source :
  identifier:string prop ->
  type_:string prop ->
  unit ->
  traffic_source

type aws_autoscaling_traffic_source_attachment

val aws_autoscaling_traffic_source_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ?traffic_source:traffic_source list ->
  autoscaling_group_name:string prop ->
  unit ->
  aws_autoscaling_traffic_source_attachment

val yojson_of_aws_autoscaling_traffic_source_attachment :
  aws_autoscaling_traffic_source_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  autoscaling_group_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  ?traffic_source:traffic_source list ->
  autoscaling_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ?traffic_source:traffic_source list ->
  autoscaling_group_name:string prop ->
  string ->
  t Tf_core.resource
