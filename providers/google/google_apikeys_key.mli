(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type restrictions__android_key_restrictions__allowed_applications

val restrictions__android_key_restrictions__allowed_applications :
  package_name:string prop ->
  sha1_fingerprint:string prop ->
  unit ->
  restrictions__android_key_restrictions__allowed_applications

type restrictions__android_key_restrictions

val restrictions__android_key_restrictions :
  allowed_applications:
    restrictions__android_key_restrictions__allowed_applications list ->
  unit ->
  restrictions__android_key_restrictions

type restrictions__api_targets

val restrictions__api_targets :
  ?methods:string prop list ->
  service:string prop ->
  unit ->
  restrictions__api_targets

type restrictions__browser_key_restrictions

val restrictions__browser_key_restrictions :
  allowed_referrers:string prop list ->
  unit ->
  restrictions__browser_key_restrictions

type restrictions__ios_key_restrictions

val restrictions__ios_key_restrictions :
  allowed_bundle_ids:string prop list ->
  unit ->
  restrictions__ios_key_restrictions

type restrictions__server_key_restrictions

val restrictions__server_key_restrictions :
  allowed_ips:string prop list ->
  unit ->
  restrictions__server_key_restrictions

type restrictions

val restrictions :
  ?android_key_restrictions:
    restrictions__android_key_restrictions list ->
  ?api_targets:restrictions__api_targets list ->
  ?browser_key_restrictions:
    restrictions__browser_key_restrictions list ->
  ?ios_key_restrictions:restrictions__ios_key_restrictions list ->
  ?server_key_restrictions:restrictions__server_key_restrictions list ->
  unit ->
  restrictions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apikeys_key

val google_apikeys_key :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?restrictions:restrictions list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_apikeys_key

val yojson_of_google_apikeys_key : google_apikeys_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  key_string : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?restrictions:restrictions list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?restrictions:restrictions list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
