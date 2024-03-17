(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appintegrations_data_integration__schedule_config
type aws_appintegrations_data_integration

val aws_appintegrations_data_integration :
  ?description:string ->
  ?tags:(string * string) list ->
  kms_key:string ->
  name:string ->
  source_uri:string ->
  schedule_config:
    aws_appintegrations_data_integration__schedule_config list ->
  string ->
  unit
