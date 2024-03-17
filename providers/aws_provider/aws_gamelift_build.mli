(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_build__storage_location
type aws_gamelift_build

val aws_gamelift_build :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?version:string ->
  name:string ->
  operating_system:string ->
  storage_location:aws_gamelift_build__storage_location list ->
  string ->
  unit
