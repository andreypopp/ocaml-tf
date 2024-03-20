(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type voice_connector

val voice_connector :
  ?cdr_bucket:string prop -> unit -> voice_connector

type aws_chimesdkvoice_global_settings

val aws_chimesdkvoice_global_settings :
  ?id:string prop ->
  voice_connector:voice_connector list ->
  unit ->
  aws_chimesdkvoice_global_settings

val yojson_of_aws_chimesdkvoice_global_settings :
  aws_chimesdkvoice_global_settings -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  voice_connector:voice_connector list ->
  string ->
  t

val make :
  ?id:string prop ->
  voice_connector:voice_connector list ->
  string ->
  t Tf_core.resource
