(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_maintenance_window_target__targets
type aws_ssm_maintenance_window_target

val aws_ssm_maintenance_window_target :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_information:string prop ->
  resource_type:string prop ->
  window_id:string prop ->
  targets:aws_ssm_maintenance_window_target__targets list ->
  string ->
  unit
