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

type aws_account_alternate_contact

val aws_account_alternate_contact :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alternate_contact_type:string prop ->
  email_address:string prop ->
  name:string prop ->
  phone_number:string prop ->
  title:string prop ->
  unit ->
  aws_account_alternate_contact

val yojson_of_aws_account_alternate_contact :
  aws_account_alternate_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  alternate_contact_type : string prop;
  email_address : string prop;
  id : string prop;
  name : string prop;
  phone_number : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alternate_contact_type:string prop ->
  email_address:string prop ->
  name:string prop ->
  phone_number:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alternate_contact_type:string prop ->
  email_address:string prop ->
  name:string prop ->
  phone_number:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
