(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_directory_bucket__location
type aws_s3_directory_bucket

val aws_s3_directory_bucket :
  ?data_redundancy:string ->
  ?force_destroy:bool ->
  ?type_:string ->
  bucket:string ->
  location:aws_s3_directory_bucket__location list ->
  string ->
  unit
