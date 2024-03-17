(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftdata_statement__parameters
type aws_redshiftdata_statement__timeouts
type aws_redshiftdata_statement

val aws_redshiftdata_statement :
  ?cluster_identifier:string ->
  ?db_user:string ->
  ?id:string ->
  ?secret_arn:string ->
  ?statement_name:string ->
  ?with_event:bool ->
  ?workgroup_name:string ->
  ?timeouts:aws_redshiftdata_statement__timeouts ->
  database:string ->
  sql:string ->
  parameters:aws_redshiftdata_statement__parameters list ->
  string ->
  unit
