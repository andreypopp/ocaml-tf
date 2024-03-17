(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_authenticated_origin_pulls_certificate__timeouts
type cloudflare_authenticated_origin_pulls_certificate

type t = private {
  certificate : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  status : string prop;
  type_ : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

val cloudflare_authenticated_origin_pulls_certificate :
  ?id:string prop ->
  ?timeouts:
    cloudflare_authenticated_origin_pulls_certificate__timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t
