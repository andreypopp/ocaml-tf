(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_subnet_group

val aws_docdb_subnet_group :
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  subnet_ids:string list ->
  string ->
  unit
