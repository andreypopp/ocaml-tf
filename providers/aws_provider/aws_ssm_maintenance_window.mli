(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_maintenance_window

val aws_ssm_maintenance_window :
  ?allow_unassociated_targets:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?end_date:string prop ->
  ?id:string prop ->
  ?schedule_offset:float prop ->
  ?schedule_timezone:string prop ->
  ?start_date:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cutoff:float prop ->
  duration:float prop ->
  name:string prop ->
  schedule:string prop ->
  string ->
  unit
