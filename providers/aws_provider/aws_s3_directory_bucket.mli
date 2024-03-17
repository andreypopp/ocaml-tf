(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_directory_bucket__location
type aws_s3_directory_bucket

val aws_s3_directory_bucket :
  ?data_redundancy:string prop ->
  ?force_destroy:bool prop ->
  ?type_:string prop ->
  bucket:string prop ->
  location:aws_s3_directory_bucket__location list ->
  string ->
  unit
