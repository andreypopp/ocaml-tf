(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_options

val endpoint_options :
  ?enforce_https:bool prop ->
  ?tls_security_policy:string prop ->
  unit ->
  endpoint_options

type index_field

val index_field :
  ?analysis_scheme:string prop ->
  ?default_value:string prop ->
  ?facet:bool prop ->
  ?highlight:bool prop ->
  ?return:bool prop ->
  ?search:bool prop ->
  ?sort:bool prop ->
  ?source_fields:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  index_field

type scaling_parameters

val scaling_parameters :
  ?desired_instance_type:string prop ->
  ?desired_partition_count:float prop ->
  ?desired_replication_count:float prop ->
  unit ->
  scaling_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudsearch_domain

val aws_cloudsearch_domain :
  ?id:string prop ->
  ?multi_az:bool prop ->
  ?endpoint_options:endpoint_options list ->
  ?scaling_parameters:scaling_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  index_field:index_field list ->
  unit ->
  aws_cloudsearch_domain

val yojson_of_aws_cloudsearch_domain : aws_cloudsearch_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  document_service_endpoint : string prop;
  domain_id : string prop;
  id : string prop;
  multi_az : bool prop;
  name : string prop;
  search_service_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?multi_az:bool prop ->
  ?endpoint_options:endpoint_options list ->
  ?scaling_parameters:scaling_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  index_field:index_field list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?multi_az:bool prop ->
  ?endpoint_options:endpoint_options list ->
  ?scaling_parameters:scaling_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  index_field:index_field list ->
  string ->
  t Tf_core.resource
