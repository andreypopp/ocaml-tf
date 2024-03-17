(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_hours_of_operation__config__end_time
type aws_connect_hours_of_operation__config__start_time
type aws_connect_hours_of_operation__config
type aws_connect_hours_of_operation

val aws_connect_hours_of_operation :
  ?description:string ->
  ?tags:(string * string) list ->
  instance_id:string ->
  name:string ->
  time_zone:string ->
  config:aws_connect_hours_of_operation__config list ->
  string ->
  unit
