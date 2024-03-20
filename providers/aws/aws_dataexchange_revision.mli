(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dataexchange_revision

val aws_dataexchange_revision :
  ?comment:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_set_id:string prop ->
  unit ->
  aws_dataexchange_revision

val yojson_of_aws_dataexchange_revision :
  aws_dataexchange_revision -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  comment : string prop;
  data_set_id : string prop;
  id : string prop;
  revision_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_set_id:string prop ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_set_id:string prop ->
  string ->
  t Tf_core.resource
