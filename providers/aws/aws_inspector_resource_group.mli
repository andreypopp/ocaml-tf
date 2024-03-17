(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector_resource_group

type t = private {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
}

val aws_inspector_resource_group :
  ?id:string prop -> tags:(string * string prop) list -> string -> t
