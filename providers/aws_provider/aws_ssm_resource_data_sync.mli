(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_resource_data_sync__s3_destination
type aws_ssm_resource_data_sync
type t = private { id : string prop; name : string prop }

val aws_ssm_resource_data_sync :
  ?id:string prop ->
  name:string prop ->
  s3_destination:aws_ssm_resource_data_sync__s3_destination list ->
  string ->
  t
