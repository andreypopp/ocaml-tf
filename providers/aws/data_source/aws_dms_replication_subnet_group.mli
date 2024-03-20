(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_replication_subnet_group

val aws_dms_replication_subnet_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_subnet_group_id:string prop ->
  unit ->
  aws_dms_replication_subnet_group

val yojson_of_aws_dms_replication_subnet_group :
  aws_dms_replication_subnet_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_group_status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_subnet_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_subnet_group_id:string prop ->
  string ->
  t Tf_core.resource
