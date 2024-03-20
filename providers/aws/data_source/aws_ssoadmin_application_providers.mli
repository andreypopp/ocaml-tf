(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_providers__display_data

val application_providers__display_data :
  unit -> application_providers__display_data

type application_providers

val application_providers :
  display_data:application_providers__display_data list ->
  unit ->
  application_providers

type aws_ssoadmin_application_providers

val aws_ssoadmin_application_providers :
  application_providers:application_providers list ->
  unit ->
  aws_ssoadmin_application_providers

val yojson_of_aws_ssoadmin_application_providers :
  aws_ssoadmin_application_providers -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  application_providers:application_providers list ->
  string ->
  t

val make :
  application_providers:application_providers list ->
  string ->
  t Tf_core.resource
