(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_scheduler_schedule_group__timeouts
type aws_scheduler_schedule_group

val aws_scheduler_schedule_group :
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_scheduler_schedule_group__timeouts ->
  string ->
  unit
