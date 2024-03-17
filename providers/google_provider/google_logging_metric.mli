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

type t = private {
  bucket_name : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  label_extractors : (string * string) list prop;
  name : string prop;
  project : string prop;
  value_extractor : string prop;
}

val google_logging_metric :
  ?bucket_name:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?label_extractors:(string * string prop) list ->
  ?project:string prop ->
  ?value_extractor:string prop ->
  ?timeouts:google_logging_metric__timeouts ->
  filter:string prop ->
  name:string prop ->
  bucket_options:google_logging_metric__bucket_options list ->
  metric_descriptor:google_logging_metric__metric_descriptor list ->
  string ->
  t
