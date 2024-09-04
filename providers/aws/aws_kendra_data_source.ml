(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__s3_configuration__access_control_list_configuration = {
  key_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__s3_configuration__access_control_list_configuration) ->
  ()

let yojson_of_configuration__s3_configuration__access_control_list_configuration
    =
  (function
   | { key_path = v_key_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__s3_configuration__access_control_list_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__s3_configuration__access_control_list_configuration

[@@@deriving.end]

type configuration__s3_configuration__documents_metadata_configuration = {
  s3_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__s3_configuration__documents_metadata_configuration) ->
  ()

let yojson_of_configuration__s3_configuration__documents_metadata_configuration
    =
  (function
   | { s3_prefix = v_s3_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__s3_configuration__documents_metadata_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__s3_configuration__documents_metadata_configuration

[@@@deriving.end]

type configuration__s3_configuration = {
  bucket_name : string prop;
  exclusion_patterns : string prop list option; [@option]
  inclusion_patterns : string prop list option; [@option]
  inclusion_prefixes : string prop list option; [@option]
  access_control_list_configuration :
    configuration__s3_configuration__access_control_list_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  documents_metadata_configuration :
    configuration__s3_configuration__documents_metadata_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__s3_configuration) -> ()

let yojson_of_configuration__s3_configuration =
  (function
   | {
       bucket_name = v_bucket_name;
       exclusion_patterns = v_exclusion_patterns;
       inclusion_patterns = v_inclusion_patterns;
       inclusion_prefixes = v_inclusion_prefixes;
       access_control_list_configuration =
         v_access_control_list_configuration;
       documents_metadata_configuration =
         v_documents_metadata_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_documents_metadata_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__s3_configuration__documents_metadata_configuration)
               v_documents_metadata_configuration
           in
           let bnd = "documents_metadata_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_control_list_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__s3_configuration__access_control_list_configuration)
               v_access_control_list_configuration
           in
           let bnd = "access_control_list_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_inclusion_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inclusion_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inclusion_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inclusion_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclusion_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusion_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__s3_configuration

[@@@deriving.end]

type configuration__web_crawler_configuration__authentication_configuration__basic_authentication = {
  credentials : string prop;
  host : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__web_crawler_configuration__authentication_configuration__basic_authentication) ->
  ()

let yojson_of_configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    =
  (function
   | { credentials = v_credentials; host = v_host; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_credentials in
         ("credentials", arg) :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__authentication_configuration__basic_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__web_crawler_configuration__authentication_configuration__basic_authentication

[@@@deriving.end]

type configuration__web_crawler_configuration__authentication_configuration = {
  basic_authentication :
    configuration__web_crawler_configuration__authentication_configuration__basic_authentication
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__web_crawler_configuration__authentication_configuration) ->
  ()

let yojson_of_configuration__web_crawler_configuration__authentication_configuration
    =
  (function
   | { basic_authentication = v_basic_authentication } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__authentication_configuration__basic_authentication)
               v_basic_authentication
           in
           let bnd = "basic_authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__web_crawler_configuration__authentication_configuration

[@@@deriving.end]

type configuration__web_crawler_configuration__proxy_configuration = {
  credentials : string prop option; [@option]
  host : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__web_crawler_configuration__proxy_configuration) ->
  ()

let yojson_of_configuration__web_crawler_configuration__proxy_configuration
    =
  (function
   | { credentials = v_credentials; host = v_host; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__proxy_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__web_crawler_configuration__proxy_configuration

[@@@deriving.end]

type configuration__web_crawler_configuration__urls__seed_url_configuration = {
  seed_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_crawler_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__web_crawler_configuration__urls__seed_url_configuration) ->
  ()

let yojson_of_configuration__web_crawler_configuration__urls__seed_url_configuration
    =
  (function
   | {
       seed_urls = v_seed_urls;
       web_crawler_mode = v_web_crawler_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_crawler_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_crawler_mode", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_seed_urls then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_seed_urls
           in
           let bnd = "seed_urls", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__urls__seed_url_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__web_crawler_configuration__urls__seed_url_configuration

[@@@deriving.end]

type configuration__web_crawler_configuration__urls__site_maps_configuration = {
  site_maps : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__web_crawler_configuration__urls__site_maps_configuration) ->
  ()

let yojson_of_configuration__web_crawler_configuration__urls__site_maps_configuration
    =
  (function
   | { site_maps = v_site_maps } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_site_maps then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_site_maps
           in
           let bnd = "site_maps", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__urls__site_maps_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__web_crawler_configuration__urls__site_maps_configuration

[@@@deriving.end]

type configuration__web_crawler_configuration__urls = {
  seed_url_configuration :
    configuration__web_crawler_configuration__urls__seed_url_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  site_maps_configuration :
    configuration__web_crawler_configuration__urls__site_maps_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__web_crawler_configuration__urls) -> ()

let yojson_of_configuration__web_crawler_configuration__urls =
  (function
   | {
       seed_url_configuration = v_seed_url_configuration;
       site_maps_configuration = v_site_maps_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_site_maps_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__urls__site_maps_configuration)
               v_site_maps_configuration
           in
           let bnd = "site_maps_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_seed_url_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__urls__seed_url_configuration)
               v_seed_url_configuration
           in
           let bnd = "seed_url_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration__urls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__web_crawler_configuration__urls

[@@@deriving.end]

type configuration__web_crawler_configuration = {
  crawl_depth : float prop option; [@option]
  max_content_size_per_page_in_mega_bytes : float prop option;
      [@option]
  max_links_per_page : float prop option; [@option]
  max_urls_per_minute_crawl_rate : float prop option; [@option]
  url_exclusion_patterns : string prop list option; [@option]
  url_inclusion_patterns : string prop list option; [@option]
  authentication_configuration :
    configuration__web_crawler_configuration__authentication_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy_configuration :
    configuration__web_crawler_configuration__proxy_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  urls : configuration__web_crawler_configuration__urls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__web_crawler_configuration) -> ()

let yojson_of_configuration__web_crawler_configuration =
  (function
   | {
       crawl_depth = v_crawl_depth;
       max_content_size_per_page_in_mega_bytes =
         v_max_content_size_per_page_in_mega_bytes;
       max_links_per_page = v_max_links_per_page;
       max_urls_per_minute_crawl_rate =
         v_max_urls_per_minute_crawl_rate;
       url_exclusion_patterns = v_url_exclusion_patterns;
       url_inclusion_patterns = v_url_inclusion_patterns;
       authentication_configuration = v_authentication_configuration;
       proxy_configuration = v_proxy_configuration;
       urls = v_urls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_urls then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__urls)
               v_urls
           in
           let bnd = "urls", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__proxy_configuration)
               v_proxy_configuration
           in
           let bnd = "proxy_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration__authentication_configuration)
               v_authentication_configuration
           in
           let bnd = "authentication_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_url_inclusion_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "url_inclusion_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url_exclusion_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "url_exclusion_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_urls_per_minute_crawl_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_urls_per_minute_crawl_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_links_per_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_links_per_page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_content_size_per_page_in_mega_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "max_content_size_per_page_in_mega_bytes", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_crawl_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "crawl_depth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__web_crawler_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__web_crawler_configuration

[@@@deriving.end]

type configuration = {
  s3_configuration : configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_crawler_configuration :
    configuration__web_crawler_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       s3_configuration = v_s3_configuration;
       web_crawler_configuration = v_web_crawler_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_web_crawler_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__web_crawler_configuration)
               v_web_crawler_configuration
           in
           let bnd = "web_crawler_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value = {
  date_value : string prop option; [@option]
  long_value : float prop option; [@option]
  string_list_value : string prop list option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value) ->
  ()

let yojson_of_custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    =
  (function
   | {
       date_value = v_date_value;
       long_value = v_long_value;
       string_list_value = v_string_list_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_list_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "string_list_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value

[@@@deriving.end]

type custom_document_enrichment_configuration__inline_configurations__condition = {
  condition_document_attribute_key : string prop;
  operator : string prop;
  condition_on_value :
    custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__inline_configurations__condition) ->
  ()

let yojson_of_custom_document_enrichment_configuration__inline_configurations__condition
    =
  (function
   | {
       condition_document_attribute_key =
         v_condition_document_attribute_key;
       operator = v_operator;
       condition_on_value = v_condition_on_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_on_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value)
               v_condition_on_value
           in
           let bnd = "condition_on_value", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_condition_document_attribute_key
         in
         ("condition_document_attribute_key", arg) :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__inline_configurations__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__inline_configurations__condition

[@@@deriving.end]

type custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value = {
  date_value : string prop option; [@option]
  long_value : float prop option; [@option]
  string_list_value : string prop list option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value) ->
  ()

let yojson_of_custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    =
  (function
   | {
       date_value = v_date_value;
       long_value = v_long_value;
       string_list_value = v_string_list_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_list_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "string_list_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value

[@@@deriving.end]

type custom_document_enrichment_configuration__inline_configurations__target = {
  target_document_attribute_key : string prop option; [@option]
  target_document_attribute_value_deletion : bool prop option;
      [@option]
  target_document_attribute_value :
    custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__inline_configurations__target) ->
  ()

let yojson_of_custom_document_enrichment_configuration__inline_configurations__target
    =
  (function
   | {
       target_document_attribute_key =
         v_target_document_attribute_key;
       target_document_attribute_value_deletion =
         v_target_document_attribute_value_deletion;
       target_document_attribute_value =
         v_target_document_attribute_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_document_attribute_value then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__inline_configurations__target__target_document_attribute_value)
               v_target_document_attribute_value
           in
           let bnd = "target_document_attribute_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_document_attribute_value_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "target_document_attribute_value_deletion", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_target_document_attribute_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_document_attribute_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__inline_configurations__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__inline_configurations__target

[@@@deriving.end]

type custom_document_enrichment_configuration__inline_configurations = {
  document_content_deletion : bool prop option; [@option]
  condition :
    custom_document_enrichment_configuration__inline_configurations__condition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target :
    custom_document_enrichment_configuration__inline_configurations__target
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__inline_configurations) ->
  ()

let yojson_of_custom_document_enrichment_configuration__inline_configurations
    =
  (function
   | {
       document_content_deletion = v_document_content_deletion;
       condition = v_condition;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__inline_configurations__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__inline_configurations__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         match v_document_content_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "document_content_deletion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__inline_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__inline_configurations

[@@@deriving.end]

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string prop option; [@option]
  long_value : float prop option; [@option]
  string_list_value : string prop list option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value) ->
  ()

let yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  (function
   | {
       date_value = v_date_value;
       long_value = v_long_value;
       string_list_value = v_string_list_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_list_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "string_list_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value

[@@@deriving.end]

type custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string prop;
  operator : string prop;
  condition_on_value :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition) ->
  ()

let yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    =
  (function
   | {
       condition_document_attribute_key =
         v_condition_document_attribute_key;
       operator = v_operator;
       condition_on_value = v_condition_on_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_on_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value)
               v_condition_on_value
           in
           let bnd = "condition_on_value", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_condition_document_attribute_key
         in
         ("condition_document_attribute_key", arg) :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition

[@@@deriving.end]

type custom_document_enrichment_configuration__post_extraction_hook_configuration = {
  lambda_arn : string prop;
  s3_bucket : string prop;
  invocation_condition :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__post_extraction_hook_configuration) ->
  ()

let yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration
    =
  (function
   | {
       lambda_arn = v_lambda_arn;
       s3_bucket = v_s3_bucket;
       invocation_condition = v_invocation_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_invocation_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition)
               v_invocation_condition
           in
           let bnd = "invocation_condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__post_extraction_hook_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration

[@@@deriving.end]

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value = {
  date_value : string prop option; [@option]
  long_value : float prop option; [@option]
  string_list_value : string prop list option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value) ->
  ()

let yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  (function
   | {
       date_value = v_date_value;
       long_value = v_long_value;
       string_list_value = v_string_list_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_list_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "string_list_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value

[@@@deriving.end]

type custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition = {
  condition_document_attribute_key : string prop;
  operator : string prop;
  condition_on_value :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition) ->
  ()

let yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    =
  (function
   | {
       condition_document_attribute_key =
         v_condition_document_attribute_key;
       operator = v_operator;
       condition_on_value = v_condition_on_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_on_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value)
               v_condition_on_value
           in
           let bnd = "condition_on_value", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_condition_document_attribute_key
         in
         ("condition_document_attribute_key", arg) :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition

[@@@deriving.end]

type custom_document_enrichment_configuration__pre_extraction_hook_configuration = {
  lambda_arn : string prop;
  s3_bucket : string prop;
  invocation_condition :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_document_enrichment_configuration__pre_extraction_hook_configuration) ->
  ()

let yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration
    =
  (function
   | {
       lambda_arn = v_lambda_arn;
       s3_bucket = v_s3_bucket;
       invocation_condition = v_invocation_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_invocation_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition)
               v_invocation_condition
           in
           let bnd = "invocation_condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration__pre_extraction_hook_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration

[@@@deriving.end]

type custom_document_enrichment_configuration = {
  role_arn : string prop option; [@option]
  inline_configurations :
    custom_document_enrichment_configuration__inline_configurations
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_extraction_hook_configuration :
    custom_document_enrichment_configuration__post_extraction_hook_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pre_extraction_hook_configuration :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_document_enrichment_configuration) -> ()

let yojson_of_custom_document_enrichment_configuration =
  (function
   | {
       role_arn = v_role_arn;
       inline_configurations = v_inline_configurations;
       post_extraction_hook_configuration =
         v_post_extraction_hook_configuration;
       pre_extraction_hook_configuration =
         v_pre_extraction_hook_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pre_extraction_hook_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__pre_extraction_hook_configuration)
               v_pre_extraction_hook_configuration
           in
           let bnd = "pre_extraction_hook_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_extraction_hook_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__post_extraction_hook_configuration)
               v_post_extraction_hook_configuration
           in
           let bnd = "post_extraction_hook_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inline_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration__inline_configurations)
               v_inline_configurations
           in
           let bnd = "inline_configurations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_document_enrichment_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_document_enrichment_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_kendra_data_source = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  index_id : string prop;
  language_code : string prop option; [@option]
  name : string prop;
  role_arn : string prop option; [@option]
  schedule : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop; [@key "type"]
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_document_enrichment_configuration :
    custom_document_enrichment_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_data_source) -> ()

let yojson_of_aws_kendra_data_source =
  (function
   | {
       description = v_description;
       id = v_id;
       index_id = v_index_id;
       language_code = v_language_code;
       name = v_name;
       role_arn = v_role_arn;
       schedule = v_schedule;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       configuration = v_configuration;
       custom_document_enrichment_configuration =
         v_custom_document_enrichment_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) [] v_custom_document_enrichment_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_document_enrichment_configuration)
               v_custom_document_enrichment_configuration
           in
           let bnd =
             "custom_document_enrichment_configuration", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_id in
         ("index_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kendra_data_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_data_source

[@@@deriving.end]

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
    ?inclusion_patterns ?inclusion_prefixes
    ?(access_control_list_configuration = [])
    ?(documents_metadata_configuration = []) ~bucket_name () :
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
    ?(seed_url_configuration = []) ?(site_maps_configuration = []) ()
    : configuration__web_crawler_configuration__urls =
  { seed_url_configuration; site_maps_configuration }

let configuration__web_crawler_configuration ?crawl_depth
    ?max_content_size_per_page_in_mega_bytes ?max_links_per_page
    ?max_urls_per_minute_crawl_rate ?url_exclusion_patterns
    ?url_inclusion_patterns ?(authentication_configuration = [])
    ?(proxy_configuration = []) ~urls () :
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

let configuration ?(s3_configuration = [])
    ?(web_crawler_configuration = []) () : configuration =
  { s3_configuration; web_crawler_configuration }

let custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__inline_configurations__condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__inline_configurations__condition
    ?(condition_on_value = []) ~condition_document_attribute_key
    ~operator () :
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
    ?(target_document_attribute_value = []) () :
    custom_document_enrichment_configuration__inline_configurations__target
    =
  {
    target_document_attribute_key;
    target_document_attribute_value_deletion;
    target_document_attribute_value;
  }

let custom_document_enrichment_configuration__inline_configurations
    ?document_content_deletion ?(condition = []) ?(target = []) () :
    custom_document_enrichment_configuration__inline_configurations =
  { document_content_deletion; condition; target }

let custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    ?(condition_on_value = []) ~condition_document_attribute_key
    ~operator () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration__invocation_condition
    =
  { condition_document_attribute_key; operator; condition_on_value }

let custom_document_enrichment_configuration__post_extraction_hook_configuration
    ?(invocation_condition = []) ~lambda_arn ~s3_bucket () :
    custom_document_enrichment_configuration__post_extraction_hook_configuration
    =
  { lambda_arn; s3_bucket; invocation_condition }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    ?date_value ?long_value ?string_list_value ?string_value () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition__condition_on_value
    =
  { date_value; long_value; string_list_value; string_value }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    ?(condition_on_value = []) ~condition_document_attribute_key
    ~operator () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration__invocation_condition
    =
  { condition_document_attribute_key; operator; condition_on_value }

let custom_document_enrichment_configuration__pre_extraction_hook_configuration
    ?(invocation_condition = []) ~lambda_arn ~s3_bucket () :
    custom_document_enrichment_configuration__pre_extraction_hook_configuration
    =
  { lambda_arn; s3_bucket; invocation_condition }

let custom_document_enrichment_configuration ?role_arn
    ?(post_extraction_hook_configuration = [])
    ?(pre_extraction_hook_configuration = []) ~inline_configurations
    () : custom_document_enrichment_configuration =
  {
    role_arn;
    inline_configurations;
    post_extraction_hook_configuration;
    pre_extraction_hook_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_data_source ?description ?id ?language_code ?role_arn
    ?schedule ?tags ?tags_all ?(configuration = [])
    ?(custom_document_enrichment_configuration = []) ?timeouts
    ~index_id ~name ~type_ () : aws_kendra_data_source =
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  updated_at : string prop;
}

let make ?description ?id ?language_code ?role_arn ?schedule ?tags
    ?tags_all ?(configuration = [])
    ?(custom_document_enrichment_configuration = []) ?timeouts
    ~index_id ~name ~type_ __id =
  let __type = "aws_kendra_data_source" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?role_arn ?schedule ?tags ?tags_all ~configuration
           ~custom_document_enrichment_configuration ?timeouts
           ~index_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?language_code ?role_arn
    ?schedule ?tags ?tags_all ?(configuration = [])
    ?(custom_document_enrichment_configuration = []) ?timeouts
    ~index_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?language_code ?role_arn ?schedule ?tags
      ?tags_all ~configuration
      ~custom_document_enrichment_configuration ?timeouts ~index_id
      ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
