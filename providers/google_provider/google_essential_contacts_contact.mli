(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_essential_contacts_contact__timeouts
type google_essential_contacts_contact

type t = private {
  email : string prop;
  id : string prop;
  language_tag : string prop;
  name : string prop;
  notification_category_subscriptions : string list prop;
  parent : string prop;
}

val google_essential_contacts_contact :
  ?id:string prop ->
  ?timeouts:google_essential_contacts_contact__timeouts ->
  email:string prop ->
  language_tag:string prop ->
  notification_category_subscriptions:string prop list ->
  parent:string prop ->
  string ->
  t
