(** Verifies the Event Hook. The resource won't be created unless the URI provided in the event hook returns a valid JSON object with verification. See [Event Hooks](https://developer.okta.com/docs/concepts/event-hooks/#one-time-verification-request) documentation for details. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_event_hook_verification

val okta_event_hook_verification :
  ?id:string prop ->
  event_hook_id:string prop ->
  unit ->
  okta_event_hook_verification

val yojson_of_okta_event_hook_verification :
  okta_event_hook_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  event_hook_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  event_hook_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  event_hook_id:string prop ->
  string ->
  t Tf_core.resource
