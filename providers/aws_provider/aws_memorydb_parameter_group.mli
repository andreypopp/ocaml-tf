(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_parameter_group__parameter
type aws_memorydb_parameter_group

val aws_memorydb_parameter_group :
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  family:string ->
  parameter:aws_memorydb_parameter_group__parameter list ->
  string ->
  unit
