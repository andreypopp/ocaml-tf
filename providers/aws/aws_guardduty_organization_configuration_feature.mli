(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_configuration

val additional_configuration :
  auto_enable:string prop ->
  name:string prop ->
  unit ->
  additional_configuration

type aws_guardduty_organization_configuration_feature

val aws_guardduty_organization_configuration_feature :
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  auto_enable:string prop ->
  detector_id:string prop ->
  name:string prop ->
  unit ->
  aws_guardduty_organization_configuration_feature

val yojson_of_aws_guardduty_organization_configuration_feature :
  aws_guardduty_organization_configuration_feature -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_enable : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  auto_enable:string prop ->
  detector_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  auto_enable:string prop ->
  detector_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
