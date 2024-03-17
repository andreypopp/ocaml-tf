(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftdata_statement__parameters
type aws_redshiftdata_statement__timeouts
type aws_redshiftdata_statement

val aws_redshiftdata_statement :
  ?cluster_identifier:string prop ->
  ?db_user:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  ?workgroup_name:string prop ->
  ?timeouts:aws_redshiftdata_statement__timeouts ->
  database:string prop ->
  sql:string prop ->
  parameters:aws_redshiftdata_statement__parameters list ->
  string ->
  unit
