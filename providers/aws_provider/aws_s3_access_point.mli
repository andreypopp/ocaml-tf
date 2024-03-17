(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_access_point__public_access_block_configuration
type aws_s3_access_point__vpc_configuration
type aws_s3_access_point

val aws_s3_access_point :
  bucket:string ->
  name:string ->
  public_access_block_configuration:
    aws_s3_access_point__public_access_block_configuration list ->
  vpc_configuration:aws_s3_access_point__vpc_configuration list ->
  string ->
  unit
