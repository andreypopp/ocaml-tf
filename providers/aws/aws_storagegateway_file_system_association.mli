(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  password:string prop ->
  username:string prop ->
  cache_attributes:cache_attributes list ->
  unit ->
  aws_storagegateway_file_system_association

val yojson_of_aws_storagegateway_file_system_association :
  aws_storagegateway_file_system_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  audit_destination_arn : string prop;
  gateway_arn : string prop;
  id : string prop;
  location_arn : string prop;
  password : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_destination_arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  password:string prop ->
  username:string prop ->
  cache_attributes:cache_attributes list ->
  string ->
  t
