(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cache_attributes

val cache_attributes :
  ?cache_stale_timeout_in_seconds:float prop ->
  unit ->
  cache_attributes

type aws_storagegateway_file_system_association

val aws_storagegateway_file_system_association :
  ?audit_destination_arn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cache_attributes:cache_attributes list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  aws_storagegateway_file_system_association

val yojson_of_aws_storagegateway_file_system_association :
  aws_storagegateway_file_system_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  audit_destination_arn : string prop;
  gateway_arn : string prop;
  id : string prop;
  location_arn : string prop;
  password : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_destination_arn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cache_attributes:cache_attributes list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?audit_destination_arn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?cache_attributes:cache_attributes list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
