(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type region

val region :
  ?kms_key_arn:string prop -> name:string prop -> unit -> region

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ssmincidents_replication_set

val aws_ssmincidents_replication_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  region:region list ->
  unit ->
  aws_ssmincidents_replication_set

val yojson_of_aws_ssmincidents_replication_set :
  aws_ssmincidents_replication_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_by : string prop;
  deletion_protected : bool prop;
  id : string prop;
  last_modified_by : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  region:region list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  region:region list ->
  string ->
  t Tf_core.resource
