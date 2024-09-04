(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_snapshot_schedule

val aws_redshift_snapshot_schedule :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  definitions:string prop list ->
  unit ->
  aws_redshift_snapshot_schedule

val yojson_of_aws_redshift_snapshot_schedule :
  aws_redshift_snapshot_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  definitions : string list prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  definitions:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  definitions:string prop list ->
  string ->
  t Tf_core.resource
