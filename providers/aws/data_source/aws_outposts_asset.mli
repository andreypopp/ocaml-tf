(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_asset

val aws_outposts_asset :
  ?id:string prop ->
  arn:string prop ->
  asset_id:string prop ->
  unit ->
  aws_outposts_asset

val yojson_of_aws_outposts_asset : aws_outposts_asset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  asset_id : string prop;
  asset_type : string prop;
  host_id : string prop;
  id : string prop;
  rack_elevation : float prop;
  rack_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  asset_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  arn:string prop ->
  asset_id:string prop ->
  string ->
  t Tf_core.resource
