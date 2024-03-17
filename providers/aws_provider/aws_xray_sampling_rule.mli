(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_xray_sampling_rule

val aws_xray_sampling_rule :
  ?attributes:(string * string) list ->
  ?id:string ->
  ?rule_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  fixed_rate:float ->
  host:string ->
  http_method:string ->
  priority:float ->
  reservoir_size:float ->
  resource_arn:string ->
  service_name:string ->
  service_type:string ->
  url_path:string ->
  version:float ->
  string ->
  unit
