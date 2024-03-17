(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apikeys_key__restrictions__android_key_restrictions__allowed_applications

type google_apikeys_key__restrictions__android_key_restrictions
type google_apikeys_key__restrictions__api_targets
type google_apikeys_key__restrictions__browser_key_restrictions
type google_apikeys_key__restrictions__ios_key_restrictions
type google_apikeys_key__restrictions__server_key_restrictions
type google_apikeys_key__restrictions
type google_apikeys_key__timeouts
type google_apikeys_key

val google_apikeys_key :
  ?display_name:string ->
  ?timeouts:google_apikeys_key__timeouts ->
  name:string ->
  restrictions:google_apikeys_key__restrictions list ->
  string ->
  unit
