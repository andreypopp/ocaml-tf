(** Manages Web3 hostnames for IPFS and Ethereum gateways.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_web3_hostname

val cloudflare_web3_hostname :
  ?description:string prop ->
  ?dnslink:string prop ->
  ?id:string prop ->
  name:string prop ->
  target:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_web3_hostname

val yojson_of_cloudflare_web3_hostname :
  cloudflare_web3_hostname -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?dnslink:string prop ->
  ?id:string prop ->
  name:string prop ->
  target:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?dnslink:string prop ->
  ?id:string prop ->
  name:string prop ->
  target:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
