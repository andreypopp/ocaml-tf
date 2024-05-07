(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_replication_subnet_group

val aws_dms_replication_subnet_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replication_subnet_group_description:string prop ->
  replication_subnet_group_id:string prop ->
  subnet_ids:string prop list ->
  unit ->
  aws_dms_replication_subnet_group

val yojson_of_aws_dms_replication_subnet_group :
  aws_dms_replication_subnet_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replication_subnet_group_description:string prop ->
  replication_subnet_group_id:string prop ->
  subnet_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replication_subnet_group_description:string prop ->
  replication_subnet_group_id:string prop ->
  subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
