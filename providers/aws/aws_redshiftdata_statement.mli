(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters

val parameters :
  name:string prop -> value:string prop -> unit -> parameters

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_redshiftdata_statement

val aws_redshiftdata_statement :
  ?cluster_identifier:string prop ->
  ?db_user:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  ?workgroup_name:string prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  database:string prop ->
  sql:string prop ->
  unit ->
  aws_redshiftdata_statement

val yojson_of_aws_redshiftdata_statement :
  aws_redshiftdata_statement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_identifier : string prop;
  database : string prop;
  db_user : string prop;
  id : string prop;
  secret_arn : string prop;
  sql : string prop;
  statement_name : string prop;
  with_event : bool prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster_identifier:string prop ->
  ?db_user:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  ?workgroup_name:string prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  database:string prop ->
  sql:string prop ->
  string ->
  t

val make :
  ?cluster_identifier:string prop ->
  ?db_user:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  ?workgroup_name:string prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  database:string prop ->
  sql:string prop ->
  string ->
  t Tf_core.resource
