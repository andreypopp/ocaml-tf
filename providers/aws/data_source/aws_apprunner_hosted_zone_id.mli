(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apprunner_hosted_zone_id

val aws_apprunner_hosted_zone_id :
  ?region:string prop -> unit -> aws_apprunner_hosted_zone_id

val yojson_of_aws_apprunner_hosted_zone_id :
  aws_apprunner_hosted_zone_id -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module -> ?region:string prop -> string -> t

val make : ?region:string prop -> string -> t Tf_core.resource
