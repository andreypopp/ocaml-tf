(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lakeformation_lf_tag

val aws_lakeformation_lf_tag :
  ?catalog_id:string prop ->
  ?id:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  aws_lakeformation_lf_tag

val yojson_of_aws_lakeformation_lf_tag :
  aws_lakeformation_lf_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  catalog_id : string prop;
  id : string prop;
  key : string prop;
  values : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  key:string prop ->
  values:string prop list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  key:string prop ->
  values:string prop list ->
  string ->
  t Tf_core.resource
