(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validation_settings

val validation_settings :
  mode:string prop -> unit -> validation_settings

type aws_verifiedpermissions_policy_store

val aws_verifiedpermissions_policy_store :
  ?description:string prop ->
  ?validation_settings:validation_settings list ->
  unit ->
  aws_verifiedpermissions_policy_store

val yojson_of_aws_verifiedpermissions_policy_store :
  aws_verifiedpermissions_policy_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?validation_settings:validation_settings list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?validation_settings:validation_settings list ->
  string ->
  t Tf_core.resource
