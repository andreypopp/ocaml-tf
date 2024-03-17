(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecrpublic_repository__catalog_data
type aws_ecrpublic_repository__timeouts
type aws_ecrpublic_repository

type t = private {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  registry_id : string prop;
  repository_name : string prop;
  repository_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ecrpublic_repository :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ecrpublic_repository__timeouts ->
  repository_name:string prop ->
  catalog_data:aws_ecrpublic_repository__catalog_data list ->
  string ->
  t
