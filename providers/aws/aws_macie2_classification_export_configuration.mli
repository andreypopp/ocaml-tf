(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_destination

val s3_destination :
  ?key_prefix:string prop ->
  bucket_name:string prop ->
  kms_key_arn:string prop ->
  unit ->
  s3_destination

type aws_macie2_classification_export_configuration

val aws_macie2_classification_export_configuration :
  ?id:string prop ->
  ?s3_destination:s3_destination list ->
  unit ->
  aws_macie2_classification_export_configuration

val yojson_of_aws_macie2_classification_export_configuration :
  aws_macie2_classification_export_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?s3_destination:s3_destination list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?s3_destination:s3_destination list ->
  string ->
  t Tf_core.resource
