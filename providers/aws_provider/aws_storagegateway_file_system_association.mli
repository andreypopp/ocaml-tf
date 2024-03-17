(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_file_system_association__cache_attributes
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
  cache_attributes:
    aws_storagegateway_file_system_association__cache_attributes list ->
  string ->
  unit
