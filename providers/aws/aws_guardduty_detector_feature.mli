(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_configuration

val additional_configuration :
  name:string prop ->
  status:string prop ->
  unit ->
  additional_configuration

type aws_guardduty_detector_feature

val aws_guardduty_detector_feature :
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  detector_id:string prop ->
  name:string prop ->
  status:string prop ->
  unit ->
  aws_guardduty_detector_feature

val yojson_of_aws_guardduty_detector_feature :
  aws_guardduty_detector_feature -> json

(** RESOURCE REGISTRATION *)

type t = private {
  detector_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  detector_id:string prop ->
  name:string prop ->
  status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?additional_configuration:additional_configuration list ->
  detector_id:string prop ->
  name:string prop ->
  status:string prop ->
  string ->
  t Tf_core.resource
