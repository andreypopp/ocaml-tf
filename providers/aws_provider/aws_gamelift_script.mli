(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_script__storage_location
type aws_gamelift_script

val aws_gamelift_script :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?version:string ->
  ?zip_file:string ->
  name:string ->
  storage_location:aws_gamelift_script__storage_location list ->
  string ->
  unit
