(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_data_source__configuration__s3_configuration__access_control_list_configuration = {
  key_path : string option; [@option]  (** key_path *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__s3_configuration__access_control_list_configuration *)

type aws_kendra_data_source__configuration__s3_configuration__documents_metadata_configuration = {
  s3_prefix : string option; [@option]  (** s3_prefix *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__s3_configuration__documents_metadata_configuration *)

type aws_kendra_data_source__configuration__s3_configuration = {
  bucket_name : string;  (** bucket_name *)
  exclusion_patterns : string list option; [@option]
      (** exclusion_patterns *)
  inclusion_patterns : string list option; [@option]
      (** inclusion_patterns *)
  inclusion_prefixes : string list option; [@option]
      (** inclusion_prefixes *)
  access_control_list_configuration :
    aws_kendra_data_source__configuration__s3_configuration__access_control_list_configuration
    list;
  documents_metadata_configuration :
    aws_kendra_data_source__configuration__s3_configuration__documents_metadata_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__s3_configuration *)

type aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration__basic_authentication = {
  credentials : string;  (** credentials *)
  host : string;  (** host *)
  port : float;  (** port *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration__basic_authentication *)

type aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration = {
  basic_authentication :
    aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration *)

type aws_kendra_data_source__configuration__web_crawler_configuration__proxy_configuration = {
  credentials : string option; [@option]  (** credentials *)
  host : string;  (** host *)
  port : float;  (** port *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__proxy_configuration *)

type aws_kendra_data_source__configuration__web_crawler_configuration__urls__seed_url_configuration = {
  seed_urls : string list;  (** seed_urls *)
  web_crawler_mode : string option; [@option]  (** web_crawler_mode *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__urls__seed_url_configuration *)

type aws_kendra_data_source__configuration__web_crawler_configuration__urls__site_maps_configuration = {
  site_maps : string list;  (** site_maps *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__urls__site_maps_configuration *)

type aws_kendra_data_source__configuration__web_crawler_configuration__urls = {
  seed_url_configuration :
    aws_kendra_data_source__configuration__web_crawler_configuration__urls__seed_url_configuration
    list;
  site_maps_configuration :
    aws_kendra_data_source__configuration__web_crawler_configuration__urls__site_maps_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration__urls *)

type aws_kendra_data_source__configuration__web_crawler_configuration = {
  crawl_depth : float option; [@option]  (** crawl_depth *)
  max_content_size_per_page_in_mega_bytes : float option; [@option]
      (** max_content_size_per_page_in_mega_bytes *)
  max_links_per_page : float option; [@option]
      (** max_links_per_page *)
  max_urls_per_minute_crawl_rate : float option; [@option]
      (** max_urls_per_minute_crawl_rate *)
  url_exclusion_patterns : string list option; [@option]
      (** url_exclusion_patterns *)
  url_inclusion_patterns : string list option; [@option]
      (** url_inclusion_patterns *)
  authentication_configuration :
    aws_kendra_data_source__configuration__web_crawler_configuration__authentication_configuration
    list;
  proxy_configuration :
    aws_kendra_data_source__configuration__web_crawler_configuration__proxy_configuration
    list;
  urls :
    aws_kendra_data_source__configuration__web_crawler_configuration__urls
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration__web_crawler_configuration *)

type aws_kendra_data_source__configuration = {
  s3_configuration :
    aws_kendra_data_source__configuration__s3_configuration list;
  web_crawler_configuration :
    aws_kendra_data_source__configuration__web_crawler_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__configuration *)

type aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value = {
  date_value : string option; [@option]  (** date_value *)
  long_value : float option; [@option]  (** long_value *)
  string_list_value : string list option; [@option]
      (** string_list_value *)
  string_value : string option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value *)

type aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition = {
  condition_document_attribute_key : string;
      (** condition_document_attribute_key *)
  operator : string;  (** operator *)
  condition_on_value :
    aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition *)

type aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value = {
  date_value : string option; [@option]  (** date_value *)
  long_value : float option; [@option]  (** long_value *)
  string_list_value : string list option; [@option]
      (** string_list_value *)
  string_value : string option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value *)

type aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target = {
  target_document_attribute_key : string option; [@option]
      (** target_document_attribute_key *)
  target_document_attribute_value_deletion : bool option; [@option]
      (** target_document_attribute_value_deletion *)
  target_document_attribute_value :
    aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target *)

type aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations = {
  document_content_deletion : bool option; [@option]
      (** document_content_deletion *)
  condition :
    aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__condition
    list;
  target :
    aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations__target
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations *)

type aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string option; [@option]  (** date_value *)
  long_value : float option; [@option]  (** long_value *)
  string_list_value : string list option; [@option]
      (** string_list_value *)
  string_value : string option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value *)

type aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string;
      (** condition_document_attribute_key *)
  operator : string;  (** operator *)
  condition_on_value :
    aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition *)

type aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration = {
  lambda_arn : string;  (** lambda_arn *)
  s3_bucket : string;  (** s3_bucket *)
  invocation_condition :
    aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration *)

type aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string option; [@option]  (** date_value *)
  long_value : float option; [@option]  (** long_value *)
  string_list_value : string list option; [@option]
      (** string_list_value *)
  string_value : string option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value *)

type aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string;
      (** condition_document_attribute_key *)
  operator : string;  (** operator *)
  condition_on_value :
    aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition *)

type aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration = {
  lambda_arn : string;  (** lambda_arn *)
  s3_bucket : string;  (** s3_bucket *)
  invocation_condition :
    aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration *)

type aws_kendra_data_source__custom_document_enrichment_configuration = {
  role_arn : string option; [@option]  (** role_arn *)
  inline_configurations :
    aws_kendra_data_source__custom_document_enrichment_configuration__inline_configurations
    list;
  post_extraction_hook_configuration :
    aws_kendra_data_source__custom_document_enrichment_configuration__post_extraction_hook_configuration
    list;
  pre_extraction_hook_configuration :
    aws_kendra_data_source__custom_document_enrichment_configuration__pre_extraction_hook_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_data_source__custom_document_enrichment_configuration *)

type aws_kendra_data_source__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_data_source__timeouts *)

type aws_kendra_data_source = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  index_id : string;  (** index_id *)
  language_code : string option; [@option]  (** language_code *)
  name : string;  (** name *)
  role_arn : string option; [@option]  (** role_arn *)
  schedule : string option; [@option]  (** schedule *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string; [@key "type"]  (** type *)
  configuration : aws_kendra_data_source__configuration list;
  custom_document_enrichment_configuration :
    aws_kendra_data_source__custom_document_enrichment_configuration
    list;
  timeouts : aws_kendra_data_source__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_data_source *)

let aws_kendra_data_source ?description ?id ?language_code ?role_arn
    ?schedule ?tags ?tags_all ?timeouts ~index_id ~name ~type_
    ~configuration ~custom_document_enrichment_configuration
    __resource_id =
  let __resource_type = "aws_kendra_data_source" in
  let __resource =
    {
      description;
      id;
      index_id;
      language_code;
      name;
      role_arn;
      schedule;
      tags;
      tags_all;
      type_;
      configuration;
      custom_document_enrichment_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_data_source __resource);
  ()
