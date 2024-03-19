(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_redshift_snapshot_schedule

val aws_redshift_snapshot_schedule :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  definitions:string prop list ->
  unit ->
  aws_redshift_snapshot_schedule

val yojson_of_aws_redshift_snapshot_schedule :
  aws_redshift_snapshot_schedule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
