(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecommit_repository

val aws_codecommit_repository :
  ?default_branch:string ->
  ?description:string ->
  ?tags:(string * string) list ->
  repository_name:string ->
  string ->
  unit
