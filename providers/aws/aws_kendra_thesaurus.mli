(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source_s3_path

val source_s3_path :
  bucket:string prop -> key:string prop -> unit -> source_s3_path

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kendra_thesaurus

val aws_kendra_thesaurus :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:source_s3_path list ->
  unit ->
  aws_kendra_thesaurus

val yojson_of_aws_kendra_thesaurus : aws_kendra_thesaurus -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  thesaurus_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:source_s3_path list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:source_s3_path list ->
  string ->
  t Tf_core.resource
