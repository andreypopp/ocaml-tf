(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_volume_attachment

val aws_volume_attachment :
  ?force_detach:bool prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?stop_instance_before_detaching:bool prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  instance_id:string prop ->
  volume_id:string prop ->
  unit ->
  aws_volume_attachment

val yojson_of_aws_volume_attachment : aws_volume_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_name : string prop;
  force_detach : bool prop;
  id : string prop;
  instance_id : string prop;
  skip_destroy : bool prop;
  stop_instance_before_detaching : bool prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_detach:bool prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?stop_instance_before_detaching:bool prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  instance_id:string prop ->
  volume_id:string prop ->
  string ->
  t

val make :
  ?force_detach:bool prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?stop_instance_before_detaching:bool prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  instance_id:string prop ->
  volume_id:string prop ->
  string ->
  t Tf_core.resource
