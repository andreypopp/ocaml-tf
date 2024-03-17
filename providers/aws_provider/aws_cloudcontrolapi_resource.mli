(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudcontrolapi_resource__timeouts
type aws_cloudcontrolapi_resource

val aws_cloudcontrolapi_resource :
  ?id:string ->
  ?role_arn:string ->
  ?schema:string ->
  ?type_version_id:string ->
  ?timeouts:aws_cloudcontrolapi_resource__timeouts ->
  desired_state:string ->
  type_name:string ->
  string ->
  unit
