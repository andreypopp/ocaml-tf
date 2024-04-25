(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type emergency_contact

val emergency_contact :
  ?contact_notes:string prop ->
  ?phone_number:string prop ->
  email_address:string prop ->
  unit ->
  emergency_contact

type aws_shield_proactive_engagement

val aws_shield_proactive_engagement :
  ?emergency_contact:emergency_contact list ->
  enabled:bool prop ->
  unit ->
  aws_shield_proactive_engagement

val yojson_of_aws_shield_proactive_engagement :
  aws_shield_proactive_engagement -> json

(** RESOURCE REGISTRATION *)

type t = private { enabled : bool prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?emergency_contact:emergency_contact list ->
  enabled:bool prop ->
  string ->
  t

val make :
  ?emergency_contact:emergency_contact list ->
  enabled:bool prop ->
  string ->
  t Tf_core.resource
