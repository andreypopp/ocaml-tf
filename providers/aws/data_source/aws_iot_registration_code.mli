(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_registration_code

val aws_iot_registration_code :
  ?id:string prop -> unit -> aws_iot_registration_code

val yojson_of_aws_iot_registration_code :
  aws_iot_registration_code -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  registration_code : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
