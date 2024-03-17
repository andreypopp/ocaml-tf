(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appintegrations_data_integration__schedule_config
type aws_appintegrations_data_integration

val aws_appintegrations_data_integration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  kms_key:string prop ->
  name:string prop ->
  source_uri:string prop ->
  schedule_config:
    aws_appintegrations_data_integration__schedule_config list ->
  string ->
  unit
