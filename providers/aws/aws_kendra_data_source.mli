(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__s3_configuration__access_control_list_configuration

val configuration__s3_configuration__access_control_list_configuration :
  ?key_path:string prop ->
  unit ->
  configuration__s3_configuration__access_control_list_configuration

type configuration__s3_configuration__documents_metadata_configuration

val configuration__s3_configuration__documents_metadata_configuration :
  ?s3_prefix:string prop ->
  unit ->
  configuration__s3_configuration__documents_metadata_configuration

type configuration__s3_configuration

val configuration__s3_configuration :
  ?exclusion_patterns:string prop list ->
  ?inclusion_patterns:string prop list ->
  ?inclusion_prefixes:string prop list ->
  ?access_control_list_configuration:
    configuration__s3_configuration__access_control_list_configuration
    list ->
  ?documents_metadata_configuration:
    configuration__s3_configuration__documents_metadata_configuration
    list ->
  bucket_name:string prop ->
  unit ->
  configuration__s3_configuration

type configuration__web_crawler_configuration__authentication_configuration__basic_authentication

val configuration__web_crawler_configuration__authentication_configuration__basic_authentication :
  credentials:string prop ->
  host:string prop ->
  port:float prop ->
  unit ->
  configuration__web_crawler_configuration__authentication_configuration__basic_authentication

type configuration__web_crawler_configuration__authentication_configuration

val configuration__web_crawler_configuration__authentication_configuration :
  basic_authentication:
    configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    list ->
  unit ->
  configuration__web_crawler_configuration__authentication_configuration

type configuration__web_crawler_configuration__proxy_configuration

val configuration__web_crawler_configuration__proxy_configuration :
  ?credentials:string prop ->
  host:string prop ->
  port:float prop ->
  unit ->
  configuration__web_crawler_configuration__proxy_configuration

type configuration__web_crawler_configuration__urls__seed_url_configuration

val configuration__web_crawler_configuration__urls__seed_url_configuration :
  ?web_crawler_mode:string prop ->
  seed_urls:string prop list ->
  unit ->
  configuration__web_crawler_configuration__urls__seed_url_configuration

type configuration__web_crawler_configuration__urls__site_maps_configuration

val configuration__web_crawler_configuration__urls__site_maps_configuration :
  site_maps:string prop list ->
  unit ->
  configuration__web_crawler_configuration__urls__site_maps_configuration

type configuration__web_crawler_configuration__urls

val configuration__web_crawler_configuration__urls :
  ?seed_url_configuration:
    configuration__web_crawler_configuration__urls__seed_url_configuration
    list ->
  ?site_maps_configuration:
    configuration__web_crawler_configuration__urls__site_maps_configuration
    list ->
  unit ->
  configuration__web_crawler_configuration__urls

type configuration__web_crawler_configuration

val configuration__web_crawler_configuration :
  ?crawl_depth:float prop ->
  ?max_content_size_per_page_in_mega_bytes:float prop ->
  ?max_links_per_page:float prop ->
  ?max_urls_per_minute_crawl_rate:float prop ->
  ?url_exclusion_patterns:string prop list ->
  ?url_inclusion_patterns:string prop list ->
  ?authentication_configuration:
    configuration__web_crawler_configuration__authentication_configuration
    list ->
  ?proxy_configuration:
    configuration__web_crawler_configuration__proxy_configuration
    list ->
  urls:configuration__web_crawler_configuration__urls list ->
  unit ->
  configuration__web_crawler_configuration

type configuration

val configuration :
  ?s3_configuration:configuration__s3_configuration list ->
  ?web_crawler_configuration:
    configuration__web_crawler_configuration list ->
  unit ->
  configuration

type custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value

val custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value :
  ?date_value:string prop ->
  ?long_value:float prop ->
  ?string_list_value:string prop list ->
  ?string_value:string prop ->
  unit ->
  custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value

type custom_document_enrichment_configuration__inline_configurations__condition

val custom_document_enrichment_configuration__inline_configurations__condition :
  ?condition_on_value:
    custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    list ->
  condition_document_attribute_key:string prop ->
  operator:string prop ->
  unit ->
  custom_document_enrichment_configuration__inline_configurations__condition

type custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value

val custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value :
  ?date_value:string prop ->
  ?long_value:float prop ->
  ?string_list_value:string prop list ->
  ?string_value:string prop ->
  unit ->
  custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value

type custom_document_enrichment_configuration__inline_configurations__target

val custom_document_enrichment_configuration__inline_configurations__target :
  ?target_document_attribute_key:string prop ->
  ?target_document_attribute_value_deletion:bool prop ->
  ?target_document_attribute_value:
    custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    list ->
  unit ->
  custom_document_enrichment_configuration__inline_configurations__target

type custom_document_enrichment_configuration__inline_configurations

val custom_document_enrichment_configuration__inline_configurations :
  ?document_content_deletion:bool prop ->
  ?condition:
    custom_document_enrichment_configuration__inline_configurations__condition
    list ->
  ?target:
    custom_document_enrichment_configuration__inline_configurations__target
    list ->
  unit ->
  custom_document_enrichment_configuration__inline_configurations

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value

val custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value :
  ?date_value:string prop ->
  ?long_value:float prop ->
  ?string_list_value:string prop list ->
  ?string_value:string prop ->
  unit ->
  custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition

val custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition :
  ?condition_on_value:
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    list ->
  condition_document_attribute_key:string prop ->
  operator:string prop ->
  unit ->
  custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition

type custom_document_enrichment_configuration__post_extraction_hook_configuration

val custom_document_enrichment_configuration__post_extraction_hook_configuration :
  ?invocation_condition:
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    list ->
  lambda_arn:string prop ->
  s3_bucket:string prop ->
  unit ->
  custom_document_enrichment_configuration__post_extraction_hook_configuration

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value

val custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value :
  ?date_value:string prop ->
  ?long_value:float prop ->
  ?string_list_value:string prop list ->
  ?string_value:string prop ->
  unit ->
  custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition

val custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition :
  ?condition_on_value:
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    list ->
  condition_document_attribute_key:string prop ->
  operator:string prop ->
  unit ->
  custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition

type custom_document_enrichment_configuration__pre_extraction_hook_configuration

val custom_document_enrichment_configuration__pre_extraction_hook_configuration :
  ?invocation_condition:
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    list ->
  lambda_arn:string prop ->
  s3_bucket:string prop ->
  unit ->
  custom_document_enrichment_configuration__pre_extraction_hook_configuration

type custom_document_enrichment_configuration

val custom_document_enrichment_configuration :
  ?role_arn:string prop ->
  ?post_extraction_hook_configuration:
    custom_document_enrichment_configuration__post_extraction_hook_configuration
    list ->
  ?pre_extraction_hook_configuration:
    custom_document_enrichment_configuration__pre_extraction_hook_configuration
    list ->
  inline_configurations:
    custom_document_enrichment_configuration__inline_configurations
    list ->
  unit ->
  custom_document_enrichment_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kendra_data_source

val aws_kendra_data_source :
  ?description:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?role_arn:string prop ->
  ?schedule:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  ?custom_document_enrichment_configuration:
    custom_document_enrichment_configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_kendra_data_source

val yojson_of_aws_kendra_data_source : aws_kendra_data_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_at : string prop;
  data_source_id : string prop;
  description : string prop;
  error_message : string prop;
  id : string prop;
  index_id : string prop;
  language_code : string prop;
  name : string prop;
  role_arn : string prop;
  schedule : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?role_arn:string prop ->
  ?schedule:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  ?custom_document_enrichment_configuration:
    custom_document_enrichment_configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?role_arn:string prop ->
  ?schedule:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  ?custom_document_enrichment_configuration:
    custom_document_enrichment_configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
