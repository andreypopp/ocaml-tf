(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_alias__routing_strategy
type aws_gamelift_alias

val aws_gamelift_alias :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  routing_strategy:aws_gamelift_alias__routing_strategy list ->
  string ->
  unit
