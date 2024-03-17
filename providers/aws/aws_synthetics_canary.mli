(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_synthetics_canary__artifact_config__s3_encryption
type aws_synthetics_canary__artifact_config
type aws_synthetics_canary__run_config
type aws_synthetics_canary__schedule
type aws_synthetics_canary__vpc_config

type aws_synthetics_canary__timeline = {
  created : string prop;  (** created *)
  last_modified : string prop;  (** last_modified *)
  last_started : string prop;  (** last_started *)
  last_stopped : string prop;  (** last_stopped *)
}

type aws_synthetics_canary

type t = private {
  arn : string prop;
  artifact_s3_location : string prop;
  delete_lambda : bool prop;
  engine_arn : string prop;
  execution_role_arn : string prop;
  failure_retention_period : float prop;
  handler : string prop;
  id : string prop;
  name : string prop;
  runtime_version : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_version : string prop;
  source_location_arn : string prop;
  start_canary : bool prop;
  status : string prop;
  success_retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeline : aws_synthetics_canary__timeline list prop;
  zip_file : string prop;
}

val aws_synthetics_canary :
  ?delete_lambda:bool prop ->
  ?failure_retention_period:float prop ->
  ?id:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_version:string prop ->
  ?start_canary:bool prop ->
  ?success_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?zip_file:string prop ->
  artifact_s3_location:string prop ->
  execution_role_arn:string prop ->
  handler:string prop ->
  name:string prop ->
  runtime_version:string prop ->
  artifact_config:aws_synthetics_canary__artifact_config list ->
  run_config:aws_synthetics_canary__run_config list ->
  schedule:aws_synthetics_canary__schedule list ->
  vpc_config:aws_synthetics_canary__vpc_config list ->
  string ->
  t
