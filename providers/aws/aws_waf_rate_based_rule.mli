(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type predicates

val predicates :
  data_id:string prop ->
  negated:bool prop ->
  type_:string prop ->
  unit ->
  predicates

type aws_waf_rate_based_rule

val aws_waf_rate_based_rule :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  rate_key:string prop ->
  rate_limit:float prop ->
  predicates:predicates list ->
  unit ->
  aws_waf_rate_based_rule

val yojson_of_aws_waf_rate_based_rule :
  aws_waf_rate_based_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  rate_key:string prop ->
  rate_limit:float prop ->
  predicates:predicates list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  rate_key:string prop ->
  rate_limit:float prop ->
  predicates:predicates list ->
  string ->
  t Tf_core.resource
