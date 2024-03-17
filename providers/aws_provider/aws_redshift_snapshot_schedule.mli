(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_snapshot_schedule

type t = private {
  arn : string prop;
  definitions : string list prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_redshift_snapshot_schedule :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  definitions:string prop list ->
  string ->
  t
