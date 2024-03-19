(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iot_certificate

val aws_iot_certificate :
  ?ca_pem:string prop ->
  ?certificate_pem:string prop ->
  ?csr:string prop ->
  ?id:string prop ->
  active:bool prop ->
  unit ->
  aws_iot_certificate

val yojson_of_aws_iot_certificate : aws_iot_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active : bool prop;
  arn : string prop;
  ca_certificate_id : string prop;
  ca_pem : string prop;
  certificate_pem : string prop;
  csr : string prop;
  id : string prop;
  private_key : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ca_pem:string prop ->
  ?certificate_pem:string prop ->
  ?csr:string prop ->
  ?id:string prop ->
  active:bool prop ->
  string ->
  t
