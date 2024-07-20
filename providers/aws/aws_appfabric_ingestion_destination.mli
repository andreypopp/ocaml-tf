(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_configuration__audit_log__destination__firehose_stream

val destination_configuration__audit_log__destination__firehose_stream :
  stream_name:string prop ->
  unit ->
  destination_configuration__audit_log__destination__firehose_stream

type destination_configuration__audit_log__destination__s3_bucket

val destination_configuration__audit_log__destination__s3_bucket :
  ?prefix:string prop ->
  bucket_name:string prop ->
  unit ->
  destination_configuration__audit_log__destination__s3_bucket

type destination_configuration__audit_log__destination

val destination_configuration__audit_log__destination :
  ?firehose_stream:
    destination_configuration__audit_log__destination__firehose_stream
    list ->
  ?s3_bucket:
    destination_configuration__audit_log__destination__s3_bucket list ->
  unit ->
  destination_configuration__audit_log__destination

type destination_configuration__audit_log

val destination_configuration__audit_log :
  ?destination:destination_configuration__audit_log__destination list ->
  unit ->
  destination_configuration__audit_log

type destination_configuration

val destination_configuration :
  ?audit_log:destination_configuration__audit_log list ->
  unit ->
  destination_configuration

type processing_configuration__audit_log

val processing_configuration__audit_log :
  format:string prop ->
  schema:string prop ->
  unit ->
  processing_configuration__audit_log

type processing_configuration

val processing_configuration :
  ?audit_log:processing_configuration__audit_log list ->
  unit ->
  processing_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_appfabric_ingestion_destination

val aws_appfabric_ingestion_destination :
  ?tags:(string * string prop) list ->
  ?destination_configuration:destination_configuration list ->
  ?processing_configuration:processing_configuration list ->
  ?timeouts:timeouts ->
  app_bundle_arn:string prop ->
  ingestion_arn:string prop ->
  unit ->
  aws_appfabric_ingestion_destination

val yojson_of_aws_appfabric_ingestion_destination :
  aws_appfabric_ingestion_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_bundle_arn : string prop;
  arn : string prop;
  id : string prop;
  ingestion_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?destination_configuration:destination_configuration list ->
  ?processing_configuration:processing_configuration list ->
  ?timeouts:timeouts ->
  app_bundle_arn:string prop ->
  ingestion_arn:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?destination_configuration:destination_configuration list ->
  ?processing_configuration:processing_configuration list ->
  ?timeouts:timeouts ->
  app_bundle_arn:string prop ->
  ingestion_arn:string prop ->
  string ->
  t Tf_core.resource
