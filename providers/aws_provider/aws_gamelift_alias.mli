(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_alias__routing_strategy
type aws_gamelift_alias

val aws_gamelift_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  routing_strategy:aws_gamelift_alias__routing_strategy list ->
  string ->
  unit
