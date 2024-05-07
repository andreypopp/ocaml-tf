(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_serial_console_access

val aws_ec2_serial_console_access :
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_ec2_serial_console_access

val yojson_of_aws_ec2_serial_console_access :
  aws_ec2_serial_console_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
