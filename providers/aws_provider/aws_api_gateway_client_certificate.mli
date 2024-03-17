(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_client_certificate

type t = private {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  expiration_date : string prop;
  id : string prop;
  pem_encoded_certificate : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_api_gateway_client_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
