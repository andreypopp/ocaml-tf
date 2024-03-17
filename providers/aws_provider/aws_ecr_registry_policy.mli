(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_registry_policy

type t = private {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
}

val aws_ecr_registry_policy :
  ?id:string prop -> policy:string prop -> string -> t
