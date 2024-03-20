(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration__cloudwatch_encryption

val encryption_configuration__cloudwatch_encryption :
  ?cloudwatch_encryption_mode:string prop ->
  ?kms_key_arn:string prop ->
  unit ->
  encryption_configuration__cloudwatch_encryption

type encryption_configuration__job_bookmarks_encryption

val encryption_configuration__job_bookmarks_encryption :
  ?job_bookmarks_encryption_mode:string prop ->
  ?kms_key_arn:string prop ->
  unit ->
  encryption_configuration__job_bookmarks_encryption

type encryption_configuration__s3_encryption

val encryption_configuration__s3_encryption :
  ?kms_key_arn:string prop ->
  ?s3_encryption_mode:string prop ->
  unit ->
  encryption_configuration__s3_encryption

type encryption_configuration

val encryption_configuration :
  cloudwatch_encryption:
    encryption_configuration__cloudwatch_encryption list ->
  job_bookmarks_encryption:
    encryption_configuration__job_bookmarks_encryption list ->
  s3_encryption:encryption_configuration__s3_encryption list ->
  unit ->
  encryption_configuration

type aws_glue_security_configuration

val aws_glue_security_configuration :
  ?id:string prop ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  unit ->
  aws_glue_security_configuration

val yojson_of_aws_glue_security_configuration :
  aws_glue_security_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  string ->
  t Tf_core.resource
