(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudcontrolapi_resource__timeouts
type aws_cloudcontrolapi_resource

type t = private {
  desired_state : string prop;
  id : string prop;
  properties : string prop;
  role_arn : string prop;
  schema : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

val aws_cloudcontrolapi_resource :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?schema:string prop ->
  ?type_version_id:string prop ->
  ?timeouts:aws_cloudcontrolapi_resource__timeouts ->
  desired_state:string prop ->
  type_name:string prop ->
  string ->
  t
