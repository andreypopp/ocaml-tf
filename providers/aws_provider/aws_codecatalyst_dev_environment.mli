(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecatalyst_dev_environment__ides
type aws_codecatalyst_dev_environment__persistent_storage
type aws_codecatalyst_dev_environment__repositories
type aws_codecatalyst_dev_environment__timeouts
type aws_codecatalyst_dev_environment

val aws_codecatalyst_dev_environment :
  ?alias:string ->
  ?id:string ->
  ?inactivity_timeout_minutes:float ->
  ?timeouts:aws_codecatalyst_dev_environment__timeouts ->
  instance_type:string ->
  project_name:string ->
  space_name:string ->
  ides:aws_codecatalyst_dev_environment__ides list ->
  persistent_storage:
    aws_codecatalyst_dev_environment__persistent_storage list ->
  repositories:aws_codecatalyst_dev_environment__repositories list ->
  string ->
  unit
