(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_organizations_organizational_unit

val aws_organizations_organizational_unit :
  ?tags:(string * string) list ->
  name:string ->
  parent_id:string ->
  string ->
  unit
