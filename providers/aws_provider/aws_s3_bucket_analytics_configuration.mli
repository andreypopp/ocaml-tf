(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_analytics_configuration__filter

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination__s3_bucket_destination

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export

type aws_s3_bucket_analytics_configuration__storage_class_analysis
type aws_s3_bucket_analytics_configuration

val aws_s3_bucket_analytics_configuration :
  ?id:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:aws_s3_bucket_analytics_configuration__filter list ->
  storage_class_analysis:
    aws_s3_bucket_analytics_configuration__storage_class_analysis
    list ->
  string ->
  unit
