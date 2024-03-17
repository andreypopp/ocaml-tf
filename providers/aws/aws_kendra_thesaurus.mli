(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_thesaurus__source_s3_path
type aws_kendra_thesaurus__timeouts
type aws_kendra_thesaurus

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

val aws_kendra_thesaurus :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_kendra_thesaurus__timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:aws_kendra_thesaurus__source_s3_path list ->
  string ->
  t
