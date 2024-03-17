(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecrpublic_repository__catalog_data
type aws_ecrpublic_repository__timeouts
type aws_ecrpublic_repository

val aws_ecrpublic_repository :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ecrpublic_repository__timeouts ->
  repository_name:string prop ->
  catalog_data:aws_ecrpublic_repository__catalog_data list ->
  string ->
  unit
