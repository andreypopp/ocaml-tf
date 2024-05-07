(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_essential_contacts_contact

val google_essential_contacts_contact :
  ?id:string prop ->
  ?timeouts:timeouts ->
  email:string prop ->
  language_tag:string prop ->
  notification_category_subscriptions:string prop list ->
  parent:string prop ->
  unit ->
  google_essential_contacts_contact

val yojson_of_google_essential_contacts_contact :
  google_essential_contacts_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  email : string prop;
  id : string prop;
  language_tag : string prop;
  name : string prop;
  notification_category_subscriptions : string list prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  email:string prop ->
  language_tag:string prop ->
  notification_category_subscriptions:string prop list ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  email:string prop ->
  language_tag:string prop ->
  notification_category_subscriptions:string prop list ->
  parent:string prop ->
  string ->
  t Tf_core.resource
