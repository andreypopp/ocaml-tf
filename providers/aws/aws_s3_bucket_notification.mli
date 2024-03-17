(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_notification__lambda_function
type aws_s3_bucket_notification__queue
type aws_s3_bucket_notification__topic
type aws_s3_bucket_notification

type t = private {
  bucket : string prop;
  eventbridge : bool prop;
  id : string prop;
}

val aws_s3_bucket_notification :
  ?eventbridge:bool prop ->
  ?id:string prop ->
  bucket:string prop ->
  lambda_function:aws_s3_bucket_notification__lambda_function list ->
  queue:aws_s3_bucket_notification__queue list ->
  topic:aws_s3_bucket_notification__topic list ->
  string ->
  t
