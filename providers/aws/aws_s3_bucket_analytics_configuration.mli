(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  filter

type storage_class_analysis__data_export__destination__s3_bucket_destination

val storage_class_analysis__data_export__destination__s3_bucket_destination :
  ?bucket_account_id:string prop ->
  ?format:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  unit ->
  storage_class_analysis__data_export__destination__s3_bucket_destination

type storage_class_analysis__data_export__destination

val storage_class_analysis__data_export__destination :
  s3_bucket_destination:
    storage_class_analysis__data_export__destination__s3_bucket_destination
    list ->
  unit ->
  storage_class_analysis__data_export__destination

type storage_class_analysis__data_export

val storage_class_analysis__data_export :
  ?output_schema_version:string prop ->
  destination:storage_class_analysis__data_export__destination list ->
  unit ->
  storage_class_analysis__data_export

type storage_class_analysis

val storage_class_analysis :
  data_export:storage_class_analysis__data_export list ->
  unit ->
  storage_class_analysis

type aws_s3_bucket_analytics_configuration

val aws_s3_bucket_analytics_configuration :
  ?id:string prop ->
  ?filter:filter list ->
  ?storage_class_analysis:storage_class_analysis list ->
  bucket:string prop ->
  name:string prop ->
  unit ->
  aws_s3_bucket_analytics_configuration

val yojson_of_aws_s3_bucket_analytics_configuration :
  aws_s3_bucket_analytics_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?filter:filter list ->
  ?storage_class_analysis:storage_class_analysis list ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?filter:filter list ->
  ?storage_class_analysis:storage_class_analysis list ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
