(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_metric__bucket_options__explicit_buckets
type google_logging_metric__bucket_options__exponential_buckets
type google_logging_metric__bucket_options__linear_buckets
type google_logging_metric__bucket_options
type google_logging_metric__metric_descriptor__labels
type google_logging_metric__metric_descriptor
type google_logging_metric__timeouts
type google_logging_metric

val google_logging_metric :
  ?bucket_name:string ->
  ?description:string ->
  ?disabled:bool ->
  ?id:string ->
  ?label_extractors:(string * string) list ->
  ?project:string ->
  ?value_extractor:string ->
  ?timeouts:google_logging_metric__timeouts ->
  filter:string ->
  name:string ->
  bucket_options:google_logging_metric__bucket_options list ->
  metric_descriptor:google_logging_metric__metric_descriptor list ->
  string ->
  unit
