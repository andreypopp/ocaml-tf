(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_database__timeouts
type aws_finspace_kx_database

val aws_finspace_kx_database :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_finspace_kx_database__timeouts ->
  environment_id:string ->
  name:string ->
  string ->
  unit
