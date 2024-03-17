(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_database__timeouts
type aws_finspace_kx_database

val aws_finspace_kx_database :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_database__timeouts ->
  environment_id:string prop ->
  name:string prop ->
  string ->
  unit
