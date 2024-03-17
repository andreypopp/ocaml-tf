(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_ownership_controls__rule
type aws_s3_bucket_ownership_controls
type t = private { bucket : string prop; id : string prop }

val aws_s3_bucket_ownership_controls :
  ?id:string prop ->
  bucket:string prop ->
  rule:aws_s3_bucket_ownership_controls__rule list ->
  string ->
  t
