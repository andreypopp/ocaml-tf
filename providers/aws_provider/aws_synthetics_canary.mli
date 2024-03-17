(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_synthetics_canary__artifact_config__s3_encryption
type aws_synthetics_canary__artifact_config
type aws_synthetics_canary__run_config
type aws_synthetics_canary__schedule
type aws_synthetics_canary__vpc_config

type aws_synthetics_canary__timeline = {
  created : string;  (** created *)
  last_modified : string;  (** last_modified *)
  last_started : string;  (** last_started *)
  last_stopped : string;  (** last_stopped *)
}
[@@deriving yojson_of]

type aws_synthetics_canary

val aws_synthetics_canary :
  ?delete_lambda:bool ->
  ?failure_retention_period:float ->
  ?s3_bucket:string ->
  ?s3_key:string ->
  ?s3_version:string ->
  ?start_canary:bool ->
  ?success_retention_period:float ->
  ?tags:(string * string) list ->
  ?zip_file:string ->
  artifact_s3_location:string ->
  execution_role_arn:string ->
  handler:string ->
  name:string ->
  runtime_version:string ->
  artifact_config:aws_synthetics_canary__artifact_config list ->
  run_config:aws_synthetics_canary__run_config list ->
  schedule:aws_synthetics_canary__schedule list ->
  vpc_config:aws_synthetics_canary__vpc_config list ->
  string ->
  unit
