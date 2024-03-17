(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_maintenance_window

val aws_ssm_maintenance_window :
  ?allow_unassociated_targets:bool ->
  ?description:string ->
  ?enabled:bool ->
  ?end_date:string ->
  ?id:string ->
  ?schedule_offset:float ->
  ?schedule_timezone:string ->
  ?start_date:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  cutoff:float ->
  duration:float ->
  name:string ->
  schedule:string ->
  string ->
  unit
