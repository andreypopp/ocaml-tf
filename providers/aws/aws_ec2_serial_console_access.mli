(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_serial_console_access

val aws_ec2_serial_console_access :
  ?enabled:bool prop ->
  ?id:string prop ->
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
  ?enabled:bool prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
