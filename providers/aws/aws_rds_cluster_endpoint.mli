(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_cluster_endpoint

val aws_rds_cluster_endpoint :
  ?excluded_members:string prop list ->
  ?id:string prop ->
  ?static_members:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_endpoint_identifier:string prop ->
  cluster_identifier:string prop ->
  custom_endpoint_type:string prop ->
  unit ->
  aws_rds_cluster_endpoint

val yojson_of_aws_rds_cluster_endpoint :
  aws_rds_cluster_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  custom_endpoint_type : string prop;
  endpoint : string prop;
  excluded_members : string list prop;
  id : string prop;
  static_members : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?excluded_members:string prop list ->
  ?id:string prop ->
  ?static_members:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_endpoint_identifier:string prop ->
  cluster_identifier:string prop ->
  custom_endpoint_type:string prop ->
  string ->
  t

val make :
  ?excluded_members:string prop list ->
  ?id:string prop ->
  ?static_members:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_endpoint_identifier:string prop ->
  cluster_identifier:string prop ->
  custom_endpoint_type:string prop ->
  string ->
  t Tf_core.resource
