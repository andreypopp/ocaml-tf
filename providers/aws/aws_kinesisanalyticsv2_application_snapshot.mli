(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_kinesisanalyticsv2_application_snapshot

val aws_kinesisanalyticsv2_application_snapshot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_name:string prop ->
  snapshot_name:string prop ->
  unit ->
  aws_kinesisanalyticsv2_application_snapshot

val yojson_of_aws_kinesisanalyticsv2_application_snapshot :
  aws_kinesisanalyticsv2_application_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_name : string prop;
  application_version_id : float prop;
  id : string prop;
  snapshot_creation_timestamp : string prop;
  snapshot_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t Tf_core.resource
