(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_contact

type t = private {
  alias : string prop;
  arn : string prop;
  display_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_ssmcontacts_contact :
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  type_:string prop ->
  string ->
  t
