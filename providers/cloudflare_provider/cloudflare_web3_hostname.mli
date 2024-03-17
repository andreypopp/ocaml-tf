(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_web3_hostname

type t = private {
  created_on : string prop;
  description : string prop;
  dnslink : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

val cloudflare_web3_hostname :
  ?description:string prop ->
  ?dnslink:string prop ->
  ?id:string prop ->
  name:string prop ->
  target:string prop ->
  zone_id:string prop ->
  string ->
  t
