(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_billing_service_account

val aws_billing_service_account :
  ?id:string prop -> unit -> aws_billing_service_account

val yojson_of_aws_billing_service_account :
  aws_billing_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private { arn : string prop; id : string prop }

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
