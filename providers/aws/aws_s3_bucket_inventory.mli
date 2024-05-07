(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination__bucket__encryption__sse_kms

val destination__bucket__encryption__sse_kms :
  key_id:string prop ->
  unit ->
  destination__bucket__encryption__sse_kms

type destination__bucket__encryption__sse_s3

val destination__bucket__encryption__sse_s3 :
  unit -> destination__bucket__encryption__sse_s3

type destination__bucket__encryption

val destination__bucket__encryption :
  ?sse_kms:destination__bucket__encryption__sse_kms list ->
  ?sse_s3:destination__bucket__encryption__sse_s3 list ->
  unit ->
  destination__bucket__encryption

type destination__bucket

val destination__bucket :
  ?account_id:string prop ->
  ?prefix:string prop ->
  ?encryption:destination__bucket__encryption list ->
  bucket_arn:string prop ->
  format:string prop ->
  unit ->
  destination__bucket

type destination

val destination :
  bucket:destination__bucket list -> unit -> destination

type filter

val filter : ?prefix:string prop -> unit -> filter

type schedule

val schedule : frequency:string prop -> unit -> schedule

type aws_s3_bucket_inventory

val aws_s3_bucket_inventory :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?optional_fields:string prop list ->
  ?filter:filter list ->
  bucket:string prop ->
  included_object_versions:string prop ->
  name:string prop ->
  destination:destination list ->
  schedule:schedule list ->
  unit ->
  aws_s3_bucket_inventory

val yojson_of_aws_s3_bucket_inventory :
  aws_s3_bucket_inventory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  enabled : bool prop;
  id : string prop;
  included_object_versions : string prop;
  name : string prop;
  optional_fields : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?optional_fields:string prop list ->
  ?filter:filter list ->
  bucket:string prop ->
  included_object_versions:string prop ->
  name:string prop ->
  destination:destination list ->
  schedule:schedule list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?optional_fields:string prop list ->
  ?filter:filter list ->
  bucket:string prop ->
  included_object_versions:string prop ->
  name:string prop ->
  destination:destination list ->
  schedule:schedule list ->
  string ->
  t Tf_core.resource
