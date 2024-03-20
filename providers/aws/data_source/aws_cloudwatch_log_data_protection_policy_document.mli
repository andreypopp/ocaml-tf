(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type statement__operation__audit__findings_destination__cloudwatch_logs

val statement__operation__audit__findings_destination__cloudwatch_logs :
  log_group:string prop ->
  unit ->
  statement__operation__audit__findings_destination__cloudwatch_logs

type statement__operation__audit__findings_destination__firehose

val statement__operation__audit__findings_destination__firehose :
  delivery_stream:string prop ->
  unit ->
  statement__operation__audit__findings_destination__firehose

type statement__operation__audit__findings_destination__s3

val statement__operation__audit__findings_destination__s3 :
  bucket:string prop ->
  unit ->
  statement__operation__audit__findings_destination__s3

type statement__operation__audit__findings_destination

val statement__operation__audit__findings_destination :
  cloudwatch_logs:
    statement__operation__audit__findings_destination__cloudwatch_logs
    list ->
  firehose:
    statement__operation__audit__findings_destination__firehose list ->
  s3:statement__operation__audit__findings_destination__s3 list ->
  unit ->
  statement__operation__audit__findings_destination

type statement__operation__audit

val statement__operation__audit :
  findings_destination:
    statement__operation__audit__findings_destination list ->
  unit ->
  statement__operation__audit

type statement__operation__deidentify__mask_config

val statement__operation__deidentify__mask_config :
  unit -> statement__operation__deidentify__mask_config

type statement__operation__deidentify

val statement__operation__deidentify :
  mask_config:statement__operation__deidentify__mask_config list ->
  unit ->
  statement__operation__deidentify

type statement__operation

val statement__operation :
  audit:statement__operation__audit list ->
  deidentify:statement__operation__deidentify list ->
  unit ->
  statement__operation

type statement

val statement :
  ?sid:string prop ->
  data_identifiers:string prop list ->
  operation:statement__operation list ->
  unit ->
  statement

type aws_cloudwatch_log_data_protection_policy_document

val aws_cloudwatch_log_data_protection_policy_document :
  ?description:string prop ->
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  statement:statement list ->
  unit ->
  aws_cloudwatch_log_data_protection_policy_document

val yojson_of_aws_cloudwatch_log_data_protection_policy_document :
  aws_cloudwatch_log_data_protection_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  json : string prop;
  name : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  statement:statement list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  statement:statement list ->
  string ->
  t Tf_core.resource
