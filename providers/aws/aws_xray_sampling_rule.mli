(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_xray_sampling_rule

type t = private {
  arn : string prop;
  attributes : (string * string) list prop;
  fixed_rate : float prop;
  host : string prop;
  http_method : string prop;
  id : string prop;
  priority : float prop;
  reservoir_size : float prop;
  resource_arn : string prop;
  rule_name : string prop;
  service_name : string prop;
  service_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url_path : string prop;
  version : float prop;
}

val aws_xray_sampling_rule :
  ?attributes:(string * string prop) list ->
  ?id:string prop ->
  ?rule_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fixed_rate:float prop ->
  host:string prop ->
  http_method:string prop ->
  priority:float prop ->
  reservoir_size:float prop ->
  resource_arn:string prop ->
  service_name:string prop ->
  service_type:string prop ->
  url_path:string prop ->
  version:float prop ->
  string ->
  t
