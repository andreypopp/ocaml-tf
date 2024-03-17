(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_organizations_organizational_unit

type t = private {
  accounts :
    aws_organizations_organizational_unit__accounts list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_organizations_organizational_unit :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  parent_id:string prop ->
  string ->
  t
