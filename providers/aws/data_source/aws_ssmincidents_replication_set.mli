(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type region = {
  kms_key_arn : string prop;  (** kms_key_arn *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}

type aws_ssmincidents_replication_set

val aws_ssmincidents_replication_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_ssmincidents_replication_set

val yojson_of_aws_ssmincidents_replication_set :
  aws_ssmincidents_replication_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  deletion_protected : bool prop;
  id : string prop;
  last_modified_by : string prop;
  region : region list prop;
  status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
