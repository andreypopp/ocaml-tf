(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource

val resource :
  ?cidr_block:string prop ->
  ?endpoint_id:string prop ->
  ?region:string prop ->
  unit ->
  resource

type aws_globalaccelerator_cross_account_attachment

val aws_globalaccelerator_cross_account_attachment :
  ?principals:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  resource:resource list ->
  unit ->
  aws_globalaccelerator_cross_account_attachment

val yojson_of_aws_globalaccelerator_cross_account_attachment :
  aws_globalaccelerator_cross_account_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
  principals : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?principals:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  resource:resource list ->
  string ->
  t

val make :
  ?principals:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  resource:resource list ->
  string ->
  t Tf_core.resource
