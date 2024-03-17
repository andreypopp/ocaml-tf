(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_file_system_association__cache_attributes
type aws_storagegateway_file_system_association

val aws_storagegateway_file_system_association :
  ?audit_destination_arn:string ->
  ?tags:(string * string) list ->
  gateway_arn:string ->
  location_arn:string ->
  password:string ->
  username:string ->
  cache_attributes:
    aws_storagegateway_file_system_association__cache_attributes list ->
  string ->
  unit
