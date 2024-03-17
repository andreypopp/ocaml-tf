(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_maintenance_window_target__targets
type aws_ssm_maintenance_window_target

val aws_ssm_maintenance_window_target :
  ?description:string ->
  ?name:string ->
  ?owner_information:string ->
  resource_type:string ->
  window_id:string ->
  targets:aws_ssm_maintenance_window_target__targets list ->
  string ->
  unit
