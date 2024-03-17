(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_schemas_discoverer

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  source_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_schemas_discoverer :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  source_arn:string prop ->
  string ->
  t
