(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_thesaurus__source_s3_path
type aws_kendra_thesaurus__timeouts
type aws_kendra_thesaurus

val aws_kendra_thesaurus :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_kendra_thesaurus__timeouts ->
  index_id:string ->
  name:string ->
  role_arn:string ->
  source_s3_path:aws_kendra_thesaurus__source_s3_path list ->
  string ->
  unit
