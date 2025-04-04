(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source__aws_log_source_resource

val source__aws_log_source_resource :
  ?source_version:string prop ->
  source_name:string prop ->
  unit ->
  source__aws_log_source_resource

type source__custom_log_source_resource__attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}

type source__custom_log_source_resource__provider = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}

type source__custom_log_source_resource

val source__custom_log_source_resource :
  ?source_version:string prop ->
  source_name:string prop ->
  unit ->
  source__custom_log_source_resource

type source

val source :
  ?aws_log_source_resource:source__aws_log_source_resource list ->
  ?custom_log_source_resource:source__custom_log_source_resource list ->
  unit ->
  source

type subscriber_identity

val subscriber_identity :
  external_id:string prop ->
  principal:string prop ->
  unit ->
  subscriber_identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_securitylake_subscriber

val aws_securitylake_subscriber :
  ?access_type:string prop ->
  ?subscriber_description:string prop ->
  ?subscriber_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?subscriber_identity:subscriber_identity list ->
  ?timeouts:timeouts ->
  source:source list ->
  unit ->
  aws_securitylake_subscriber

val yojson_of_aws_securitylake_subscriber :
  aws_securitylake_subscriber -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_type : string prop;
  arn : string prop;
  id : string prop;
  resource_share_arn : string prop;
  resource_share_name : string prop;
  role_arn : string prop;
  s3_bucket_arn : string prop;
  subscriber_description : string prop;
  subscriber_endpoint : string prop;
  subscriber_name : string prop;
  subscriber_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_type:string prop ->
  ?subscriber_description:string prop ->
  ?subscriber_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?subscriber_identity:subscriber_identity list ->
  ?timeouts:timeouts ->
  source:source list ->
  string ->
  t

val make :
  ?access_type:string prop ->
  ?subscriber_description:string prop ->
  ?subscriber_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?subscriber_identity:subscriber_identity list ->
  ?timeouts:timeouts ->
  source:source list ->
  string ->
  t Tf_core.resource
