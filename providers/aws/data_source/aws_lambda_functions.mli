(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_functions

val aws_lambda_functions :
  ?id:string prop -> unit -> aws_lambda_functions

val yojson_of_aws_lambda_functions : aws_lambda_functions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  function_arns : string list prop;
  function_names : string list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
