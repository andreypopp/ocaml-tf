(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_workgroup__configuration__engine_version

type aws_athena_workgroup__configuration__result_configuration__acl_configuration

type aws_athena_workgroup__configuration__result_configuration__encryption_configuration

type aws_athena_workgroup__configuration__result_configuration
type aws_athena_workgroup__configuration
type aws_athena_workgroup

val aws_athena_workgroup :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  configuration:aws_athena_workgroup__configuration list ->
  string ->
  unit
