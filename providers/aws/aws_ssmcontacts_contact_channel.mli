(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delivery_address

val delivery_address :
  simple_address:string prop -> unit -> delivery_address

type aws_ssmcontacts_contact_channel

val aws_ssmcontacts_contact_channel :
  ?id:string prop ->
  contact_id:string prop ->
  name:string prop ->
  type_:string prop ->
  delivery_address:delivery_address list ->
  unit ->
  aws_ssmcontacts_contact_channel

val yojson_of_aws_ssmcontacts_contact_channel :
  aws_ssmcontacts_contact_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activation_status : string prop;
  arn : string prop;
  contact_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  contact_id:string prop ->
  name:string prop ->
  type_:string prop ->
  delivery_address:delivery_address list ->
  string ->
  t

val make :
  ?id:string prop ->
  contact_id:string prop ->
  name:string prop ->
  type_:string prop ->
  delivery_address:delivery_address list ->
  string ->
  t Tf_core.resource
