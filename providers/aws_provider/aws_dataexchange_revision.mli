(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dataexchange_revision

type t = private {
  arn : string prop;
  comment : string prop;
  data_set_id : string prop;
  id : string prop;
  revision_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_dataexchange_revision :
  ?comment:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_set_id:string prop ->
  string ->
  t
