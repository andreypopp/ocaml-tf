(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bucket_options__explicit_buckets

val bucket_options__explicit_buckets :
  bounds:float prop list -> unit -> bucket_options__explicit_buckets

type bucket_options__exponential_buckets

val bucket_options__exponential_buckets :
  growth_factor:float prop ->
  num_finite_buckets:float prop ->
  scale:float prop ->
  unit ->
  bucket_options__exponential_buckets

type bucket_options__linear_buckets

val bucket_options__linear_buckets :
  num_finite_buckets:float prop ->
  offset:float prop ->
  width:float prop ->
  unit ->
  bucket_options__linear_buckets

type bucket_options

val bucket_options :
  ?explicit_buckets:bucket_options__explicit_buckets list ->
  ?exponential_buckets:bucket_options__exponential_buckets list ->
  ?linear_buckets:bucket_options__linear_buckets list ->
  unit ->
  bucket_options

type metric_descriptor__labels

val metric_descriptor__labels :
  ?description:string prop ->
  ?value_type:string prop ->
  key:string prop ->
  unit ->
  metric_descriptor__labels

type metric_descriptor

val metric_descriptor :
  ?display_name:string prop ->
  ?unit:string prop ->
  metric_kind:string prop ->
  value_type:string prop ->
  labels:metric_descriptor__labels list ->
  unit ->
  metric_descriptor

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_logging_metric

val google_logging_metric :
  ?bucket_name:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?label_extractors:(string * string prop) list ->
  ?project:string prop ->
  ?value_extractor:string prop ->
  ?bucket_options:bucket_options list ->
  ?metric_descriptor:metric_descriptor list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  name:string prop ->
  unit ->
  google_logging_metric

val yojson_of_google_logging_metric : google_logging_metric -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?bucket_name:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?label_extractors:(string * string prop) list ->
  ?project:string prop ->
  ?value_extractor:string prop ->
  ?bucket_options:bucket_options list ->
  ?metric_descriptor:metric_descriptor list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?bucket_name:string prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?label_extractors:(string * string prop) list ->
  ?project:string prop ->
  ?value_extractor:string prop ->
  ?bucket_options:bucket_options list ->
  ?metric_descriptor:metric_descriptor list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
