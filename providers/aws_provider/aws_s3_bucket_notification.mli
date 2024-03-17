(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_notification__lambda_function
type aws_s3_bucket_notification__queue
type aws_s3_bucket_notification__topic
type aws_s3_bucket_notification

val aws_s3_bucket_notification :
  ?eventbridge:bool ->
  bucket:string ->
  lambda_function:aws_s3_bucket_notification__lambda_function list ->
  queue:aws_s3_bucket_notification__queue list ->
  topic:aws_s3_bucket_notification__topic list ->
  string ->
  unit
