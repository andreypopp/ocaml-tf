(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__s3_configuration__access_control_list_configuration = {
  key_path : string prop option; [@option]  (** key_path *)
}
[@@deriving yojson_of]
(** configuration__s3_configuration__access_control_list_configuration *)

type configuration__s3_configuration__documents_metadata_configuration = {
  s3_prefix : string prop option; [@option]  (** s3_prefix *)
}
[@@deriving yojson_of]
(** configuration__s3_configuration__documents_metadata_configuration *)

type configuration__s3_configuration = {
  bucket_name : string prop;  (** bucket_name *)
  exclusion_patterns : string prop list option; [@option]
      (** exclusion_patterns *)
  inclusion_patterns : string prop list option; [@option]
      (** inclusion_patterns *)
  inclusion_prefixes : string prop list option; [@option]
      (** inclusion_prefixes *)
  access_control_list_configuration :
    configuration__s3_configuration__access_control_list_configuration
    list;
  documents_metadata_configuration :
    configuration__s3_configuration__documents_metadata_configuration
    list;
}
[@@deriving yojson_of]
(** configuration__s3_configuration *)

type configuration__web_crawler_configuration__authentication_configuration__basic_authentication = {
  credentials : string prop;  (** credentials *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__authentication_configuration__basic_authentication *)

type configuration__web_crawler_configuration__authentication_configuration = {
  basic_authentication :
    configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    list;
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__authentication_configuration *)

type configuration__web_crawler_configuration__proxy_configuration = {
  credentials : string prop option; [@option]  (** credentials *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__proxy_configuration *)

type configuration__web_crawler_configuration__urls__seed_url_configuration = {
  seed_urls : string prop list;  (** seed_urls *)
  web_crawler_mode : string prop option; [@option]
      (** web_crawler_mode *)
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__urls__seed_url_configuration *)

type configuration__web_crawler_configuration__urls__site_maps_configuration = {
  site_maps : string prop list;  (** site_maps *)
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__urls__site_maps_configuration *)

type configuration__web_crawler_configuration__urls = {
  seed_url_configuration :
    configuration__web_crawler_configuration__urls__seed_url_configuration
    list;
  site_maps_configuration :
    configuration__web_crawler_configuration__urls__site_maps_configuration
    list;
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration__urls *)

type configuration__web_crawler_configuration = {
  crawl_depth : float prop option; [@option]  (** crawl_depth *)
  max_content_size_per_page_in_mega_bytes : float prop option;
      [@option]
      (** max_content_size_per_page_in_mega_bytes *)
  max_links_per_page : float prop option; [@option]
      (** max_links_per_page *)
  max_urls_per_minute_crawl_rate : float prop option; [@option]
      (** max_urls_per_minute_crawl_rate *)
  url_exclusion_patterns : string prop list option; [@option]
      (** url_exclusion_patterns *)
  url_inclusion_patterns : string prop list option; [@option]
      (** url_inclusion_patterns *)
  authentication_configuration :
    configuration__web_crawler_configuration__authentication_configuration
    list;
  proxy_configuration :
    configuration__web_crawler_configuration__proxy_configuration
    list;
  urls : configuration__web_crawler_configuration__urls list;
}
[@@deriving yojson_of]
(** configuration__web_crawler_configuration *)

type configuration = {
  s3_configuration : configuration__s3_configuration list;
  web_crawler_configuration :
    configuration__web_crawler_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value = {
  date_value : string prop option; [@option]  (** date_value *)
  long_value : float prop option; [@option]  (** long_value *)
  string_list_value : string prop list option; [@option]
      (** string_list_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value *)

type custom_document_enrichment_configuration__inline_configurations__condition = {
  condition_document_attribute_key : string prop;
      (** condition_document_attribute_key *)
  operator : string prop;  (** operator *)
  condition_on_value :
    custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__inline_configurations__condition *)

type custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value = {
  date_value : string prop option; [@option]  (** date_value *)
  long_value : float prop option; [@option]  (** long_value *)
  string_list_value : string prop list option; [@option]
      (** string_list_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value *)

type custom_document_enrichment_configuration__inline_configurations__target = {
  target_document_attribute_key : string prop option; [@option]
      (** target_document_attribute_key *)
  target_document_attribute_value_deletion : bool prop option;
      [@option]
      (** target_document_attribute_value_deletion *)
  target_document_attribute_value :
    custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__inline_configurations__target *)

type custom_document_enrichment_configuration__inline_configurations = {
  document_content_deletion : bool prop option; [@option]
      (** document_content_deletion *)
  condition :
    custom_document_enrichment_configuration__inline_configurations__condition
    list;
  target :
    custom_document_enrichment_configuration__inline_configurations__target
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__inline_configurations *)

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string prop option; [@option]  (** date_value *)
  long_value : float prop option; [@option]  (** long_value *)
  string_list_value : string prop list option; [@option]
      (** string_list_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value *)

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string prop;
      (** condition_document_attribute_key *)
  operator : string prop;  (** operator *)
  condition_on_value :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition *)

type custom_document_enrichment_configuration__post_extraction_hook_configuration = {
  lambda_arn : string prop;  (** lambda_arn *)
  s3_bucket : string prop;  (** s3_bucket *)
  invocation_condition :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__post_extraction_hook_configuration *)

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string prop option; [@option]  (** date_value *)
  long_value : float prop option; [@option]  (** long_value *)
  string_list_value : string prop list option; [@option]
      (** string_list_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value *)

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string prop;
      (** condition_document_attribute_key *)
  operator : string prop;  (** operator *)
  condition_on_value :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition *)

type custom_document_enrichment_configuration__pre_extraction_hook_configuration = {
  lambda_arn : string prop;  (** lambda_arn *)
  s3_bucket : string prop;  (** s3_bucket *)
  invocation_condition :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration__pre_extraction_hook_configuration *)

type custom_document_enrichment_configuration = {
  role_arn : string prop option; [@option]  (** role_arn *)
  inline_configurations :
    custom_document_enrichment_configuration__inline_configurations
    list;
  post_extraction_hook_configuration :
    custom_document_enrichment_configuration__post_extraction_hook_configuration
    list;
  pre_extraction_hook_configuration :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration
    list;
}
[@@deriving yojson_of]
(** custom_document_enrichment_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kendra_data_source = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  language_code : string prop option; [@option]  (** language_code *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  schedule : string prop option; [@option]  (** schedule *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  configuration : configuration list;
  custom_document_enrichment_configuration :
    custom_document_enrichment_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_data_source *)

let configuration__s3_configuration__access_control_list_configuration
    ?key_path () :
    configuration__s3_configuration__access_control_list_configuration
    =
  { key_path }

let configuration__s3_configuration__documents_metadata_configuration
    ?s3_prefix () :
    configuration__s3_configuration__documents_metadata_configuration
    =
  { s3_prefix }

let configuration__s3_configuration ?exclusion_patterns
    ?inclusion_patterns ?inclusion_prefixes ~bucket_name
    ~access_control_list_configuration
    ~documents_metadata_configuration () :
    configuration__s3_configuration =
  {
    bucket_name;
    exclusion_patterns;
    inclusion_patterns;
    inclusion_prefixes;
    access_control_list_configuration;
    documents_metadata_configuration;
  }

let configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    ~credentials ~host ~port () :
    configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    =
  { credentials; host; port }

let configuration__web_crawler_configuration__authentication_configuration
    ~basic_authentication () :
    configuration__web_crawler_configuration__authentication_configuration
    =
  { basic_authentication }

let configuration__web_crawler_configuration__proxy_configuration
    ?credentials ~host ~port () :
    configuration__web_crawler_configuration__proxy_configuration =
  { credentials; host; port }

let configuration__web_crawler_configuration__urls__seed_url_configuration
    ?web_crawler_mode ~seed_urls () :
    configuration__web_crawler_configuration__urls__seed_url_configuration
    =
  { seed_urls; web_crawler_mode }

let configuration__web_crawler_configuration__urls__site_maps_configuration
    ~site_maps () :
    configuration__web_crawler_configuration__urls__site_maps_configuration
    =
  { site_maps }

let configuration__web_crawler_configuration__urls
    ~seed_url_configuration ~site_maps_configuration () :
    configuration__web_crawler_configuration__urls =
  { seed_url_configuration; site_maps_configuration }

let configuration__web_crawler_configuration ?crawl_depth
    ?max_content_size_per_page_in_mega_bytes ?max_links_per_page
    ?max_urls_per_minute_crawl_rate ?url_exclusion_patterns
    ?url_inclusion_patterns ~authentication_configuration
    ~proxy_configuration ~urls () :
    configuration__web_crawler_configuration =
  {
    crawl_depth;
    max_content_size_per_page_in_mega_bytes;
    max_links_per_page;
    max_urls_per_minute_crawl_rate;
    url_exclusion_patterns;
    url_inclusion_patterns;
    authentication_configuration;
    proxy_configuration;
    urls;
  }

let configuration ~s3_configuration ~web_crawler_configuration () :
    configuration =
  { s3_configuration; web_crawler_configuration }

let custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__inline_configurations__condition
    ~condition_document_attribute_key ~operator ~condition_on_value
    () :
    custom_document_enrichment_configuration__inline_configurations__condition
    =
  { condition_document_attribute_key; operator; condition_on_value }

let custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__inline_configurations__target
    ?target_document_attribute_key
    ?target_document_attribute_value_deletion
    ~target_document_attribute_value () :
    custom_document_enrichment_configuration__inline_configurations__target
    =
  {
    target_document_attribute_key;
    target_document_attribute_value_deletion;
    target_document_attribute_value;
  }

let custom_document_enrichment_configuration__inline_configurations
    ?document_content_deletion ~condition ~target () :
    custom_document_enrichment_configuration__inline_configurations =
  { document_content_deletion; condition; target }

let custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    ~condition_document_attribute_key ~operator ~condition_on_value
    () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    =
  { condition_document_attribute_key; operator; condition_on_value }

let custom_document_enrichment_configuration__post_extraction_hook_configuration
    ~lambda_arn ~s3_bucket ~invocation_condition () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration
    =
  { lambda_arn; s3_bucket; invocation_condition }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    ~condition_document_attribute_key ~operator ~condition_on_value
    () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    =
  { condition_document_attribute_key; operator; condition_on_value }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration
    ~lambda_arn ~s3_bucket ~invocation_condition () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration
    =
  { lambda_arn; s3_bucket; invocation_condition }

let custom_document_enrichment_configuration ?role_arn
    ~inline_configurations ~post_extraction_hook_configuration
    ~pre_extraction_hook_configuration () :
    custom_document_enrichment_configuration =
  {
    role_arn;
    inline_configurations;
    post_extraction_hook_configuration;
    pre_extraction_hook_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_data_source ?description ?id ?language_code ?role_arn
    ?schedule ?tags ?tags_all ?timeouts ~index_id ~name ~type_
    ~configuration ~custom_document_enrichment_configuration () :
    aws_kendra_data_source =
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

type t = {
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

let make ?description ?id ?language_code ?role_arn ?schedule ?tags
    ?tags_all ?timeouts ~index_id ~name ~type_ ~configuration
    ~custom_document_enrichment_configuration __id =
  let __type = "aws_kendra_data_source" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       error_message = Prop.computed __type __id "error_message";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       schedule = Prop.computed __type __id "schedule";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_data_source
        (aws_kendra_data_source ?description ?id ?language_code
           ?role_arn ?schedule ?tags ?tags_all ?timeouts ~index_id
           ~name ~type_ ~configuration
           ~custom_document_enrichment_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?language_code ?role_arn
    ?schedule ?tags ?tags_all ?timeouts ~index_id ~name ~type_
    ~configuration ~custom_document_enrichment_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?language_code ?role_arn ?schedule ?tags
      ?tags_all ?timeouts ~index_id ~name ~type_ ~configuration
      ~custom_document_enrichment_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
