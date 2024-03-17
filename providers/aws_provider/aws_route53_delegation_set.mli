(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_delegation_set

type t = private {
  arn : string prop;
  id : string prop;
  name_servers : string list prop;
  reference_name : string prop;
}

val aws_route53_delegation_set :
  ?id:string prop -> ?reference_name:string prop -> string -> t
