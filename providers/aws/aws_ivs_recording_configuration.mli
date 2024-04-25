(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_configuration__s3

val destination_configuration__s3 :
  bucket_name:string prop -> unit -> destination_configuration__s3

type destination_configuration

val destination_configuration :
  s3:destination_configuration__s3 list ->
  unit ->
  destination_configuration

type thumbnail_configuration

val thumbnail_configuration :
  ?recording_mode:string prop ->
  ?target_interval_seconds:float prop ->
  unit ->
  thumbnail_configuration

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ivs_recording_configuration

val aws_ivs_recording_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?recording_reconnect_window_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?thumbnail_configuration:thumbnail_configuration list ->
  ?timeouts:timeouts ->
  destination_configuration:destination_configuration list ->
  unit ->
  aws_ivs_recording_configuration

val yojson_of_aws_ivs_recording_configuration :
  aws_ivs_recording_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  recording_reconnect_window_seconds : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?recording_reconnect_window_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?thumbnail_configuration:thumbnail_configuration list ->
  ?timeouts:timeouts ->
  destination_configuration:destination_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?recording_reconnect_window_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?thumbnail_configuration:thumbnail_configuration list ->
  ?timeouts:timeouts ->
  destination_configuration:destination_configuration list ->
  string ->
  t Tf_core.resource
