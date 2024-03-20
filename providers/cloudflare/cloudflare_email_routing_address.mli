(** The [Email Routing Address](https://developers.cloudflare.com/email-routing/setup/email-routing-addresses/#destination-addresses) resource allows you to manage Cloudflare Email Routing Destination Addresses.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_email_routing_address

val cloudflare_email_routing_address :
  account_id:string prop ->
  email:string prop ->
  unit ->
  cloudflare_email_routing_address

val yojson_of_cloudflare_email_routing_address :
  cloudflare_email_routing_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  created : string prop;
  email : string prop;
  id : string prop;
  modified : string prop;
  tag : string prop;
  verified : string prop;
}

val register :
  ?tf_module:tf_module ->
  account_id:string prop ->
  email:string prop ->
  string ->
  t

val make :
  account_id:string prop ->
  email:string prop ->
  string ->
  t Tf_core.resource
