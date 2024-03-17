(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
}

type aws_organizations_organizational_unit

val aws_organizations_organizational_unit :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  parent_id:string ->
  string ->
  unit
