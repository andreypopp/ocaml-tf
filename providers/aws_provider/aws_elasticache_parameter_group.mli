(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_parameter_group__parameter
type aws_elasticache_parameter_group

val aws_elasticache_parameter_group :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  family:string ->
  name:string ->
  parameter:aws_elasticache_parameter_group__parameter list ->
  string ->
  unit
