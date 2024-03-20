(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_assets

val aws_outposts_assets :
  ?host_id_filter:string prop list ->
  ?id:string prop ->
  ?status_id_filter:string prop list ->
  arn:string prop ->
  unit ->
  aws_outposts_assets

val yojson_of_aws_outposts_assets : aws_outposts_assets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  asset_ids : string list prop;
  host_id_filter : string list prop;
  id : string prop;
  status_id_filter : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?host_id_filter:string prop list ->
  ?id:string prop ->
  ?status_id_filter:string prop list ->
  arn:string prop ->
  string ->
  t

val make :
  ?host_id_filter:string prop list ->
  ?id:string prop ->
  ?status_id_filter:string prop list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
