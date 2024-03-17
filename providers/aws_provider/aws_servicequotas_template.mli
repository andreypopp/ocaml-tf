(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicequotas_template

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

val aws_servicequotas_template :
  quota_code:string prop ->
  region:string prop ->
  service_code:string prop ->
  value:float prop ->
  string ->
  t
