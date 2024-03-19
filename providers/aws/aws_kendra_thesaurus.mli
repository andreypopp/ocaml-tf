(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  arn : string prop;
  description : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thesaurus_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:source_s3_path list ->
  string ->
  t
