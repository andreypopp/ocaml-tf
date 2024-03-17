(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_base_path_mapping

type t = private {
  api_id : string prop;
  base_path : string prop;
  domain_name : string prop;
  id : string prop;
  stage_name : string prop;
}

val aws_api_gateway_base_path_mapping :
  ?base_path:string prop ->
  ?id:string prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t
