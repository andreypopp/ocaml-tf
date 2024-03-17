(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_parameter_group__parameter
type aws_memorydb_parameter_group

val aws_memorydb_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  parameter:aws_memorydb_parameter_group__parameter list ->
  string ->
  unit
