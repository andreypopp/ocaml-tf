(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_lf_tag

type t = private {
  catalog_id : string prop;
  id : string prop;
  key : string prop;
  values : string list prop;
}

val aws_lakeformation_lf_tag :
  ?catalog_id:string prop ->
  ?id:string prop ->
  key:string prop ->
  values:string prop list ->
  string ->
  t
