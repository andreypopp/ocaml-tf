(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption

type aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption

type aws_glue_security_configuration__encryption_configuration__s3_encryption

type aws_glue_security_configuration__encryption_configuration
type aws_glue_security_configuration

val aws_glue_security_configuration :
  ?id:string ->
  name:string ->
  encryption_configuration:
    aws_glue_security_configuration__encryption_configuration list ->
  string ->
  unit
