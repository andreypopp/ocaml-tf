(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_hours_of_operation__config__end_time
type aws_connect_hours_of_operation__config__start_time
type aws_connect_hours_of_operation__config
type aws_connect_hours_of_operation

val aws_connect_hours_of_operation :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  time_zone:string prop ->
  config:aws_connect_hours_of_operation__config list ->
  string ->
  unit
