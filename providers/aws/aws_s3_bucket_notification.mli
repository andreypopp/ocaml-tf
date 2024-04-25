(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type lambda_function

val lambda_function :
  ?filter_prefix:string prop ->
  ?filter_suffix:string prop ->
  ?id:string prop ->
  ?lambda_function_arn:string prop ->
  events:string prop list ->
  unit ->
  lambda_function

type queue

val queue :
  ?filter_prefix:string prop ->
  ?filter_suffix:string prop ->
  ?id:string prop ->
  events:string prop list ->
  queue_arn:string prop ->
  unit ->
  queue

type topic

val topic :
  ?filter_prefix:string prop ->
  ?filter_suffix:string prop ->
  ?id:string prop ->
  events:string prop list ->
  topic_arn:string prop ->
  unit ->
  topic

type aws_s3_bucket_notification

val aws_s3_bucket_notification :
  ?eventbridge:bool prop ->
  ?id:string prop ->
  ?lambda_function:lambda_function list ->
  ?queue:queue list ->
  ?topic:topic list ->
  bucket:string prop ->
  unit ->
  aws_s3_bucket_notification

val yojson_of_aws_s3_bucket_notification :
  aws_s3_bucket_notification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  eventbridge : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?eventbridge:bool prop ->
  ?id:string prop ->
  ?lambda_function:lambda_function list ->
  ?queue:queue list ->
  ?topic:topic list ->
  bucket:string prop ->
  string ->
  t

val make :
  ?eventbridge:bool prop ->
  ?id:string prop ->
  ?lambda_function:lambda_function list ->
  ?queue:queue list ->
  ?topic:topic list ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
