(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validation_settings = { mode : string prop  (** mode *) }
type aws_verifiedpermissions_policy_store

val aws_verifiedpermissions_policy_store :
  id:string prop -> unit -> aws_verifiedpermissions_policy_store

val yojson_of_aws_verifiedpermissions_policy_store :
  aws_verifiedpermissions_policy_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  validation_settings : validation_settings list prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
