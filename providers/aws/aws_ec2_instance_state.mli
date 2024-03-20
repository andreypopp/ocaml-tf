(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ec2_instance_state

val aws_ec2_instance_state :
  ?force:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  state:string prop ->
  unit ->
  aws_ec2_instance_state

val yojson_of_aws_ec2_instance_state : aws_ec2_instance_state -> json

(** RESOURCE REGISTRATION *)

type t = private {
  force : bool prop;
  id : string prop;
  instance_id : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  state:string prop ->
  string ->
  t

val make :
  ?force:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_id:string prop ->
  state:string prop ->
  string ->
  t Tf_core.resource
