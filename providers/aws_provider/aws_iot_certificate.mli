(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_certificate

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

val aws_iot_certificate :
  ?ca_pem:string prop ->
  ?certificate_pem:string prop ->
  ?csr:string prop ->
  ?id:string prop ->
  active:bool prop ->
  string ->
  t
