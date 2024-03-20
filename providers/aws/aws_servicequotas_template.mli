(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_servicequotas_template

val aws_servicequotas_template :
  quota_code:string prop ->
  region:string prop ->
  service_code:string prop ->
  value:float prop ->
  unit ->
  aws_servicequotas_template

val yojson_of_aws_servicequotas_template :
  aws_servicequotas_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  global_quota : bool prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  region : string prop;
  service_code : string prop;
  service_name : string prop;
  unit : string prop;
  value : float prop;
}

val register :
  ?tf_module:tf_module ->
  quota_code:string prop ->
  region:string prop ->
  service_code:string prop ->
  value:float prop ->
  string ->
  t

val make :
  quota_code:string prop ->
  region:string prop ->
  service_code:string prop ->
  value:float prop ->
  string ->
  t Tf_core.resource
