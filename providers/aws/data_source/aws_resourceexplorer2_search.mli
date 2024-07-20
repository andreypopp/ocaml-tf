(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_count = {
  complete : bool prop;  (** complete *)
  total_resources : float prop;  (** total_resources *)
}

type resources__properties = {
  data : string prop;  (** data *)
  last_reported_at : string prop;  (** last_reported_at *)
  name : string prop;  (** name *)
}

type resources = {
  arn : string prop;  (** arn *)
  last_reported_at : string prop;  (** last_reported_at *)
  owning_account_id : string prop;  (** owning_account_id *)
  properties : resources__properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** properties *)
  region : string prop;  (** region *)
  resource_type : string prop;  (** resource_type *)
  service : string prop;  (** service *)
}

type aws_resourceexplorer2_search

val aws_resourceexplorer2_search :
  ?view_arn:string prop ->
  query_string:string prop ->
  unit ->
  aws_resourceexplorer2_search

val yojson_of_aws_resourceexplorer2_search :
  aws_resourceexplorer2_search -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  query_string : string prop;
  resource_count : resource_count list prop;
  resources : resources list prop;
  view_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?view_arn:string prop ->
  query_string:string prop ->
  string ->
  t

val make :
  ?view_arn:string prop ->
  query_string:string prop ->
  string ->
  t Tf_core.resource
