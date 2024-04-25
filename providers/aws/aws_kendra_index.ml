(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_units = {
  query_capacity_units : float prop option; [@option]
  storage_capacity_units : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_units) -> ()

let yojson_of_capacity_units =
  (function
   | {
       query_capacity_units = v_query_capacity_units;
       storage_capacity_units = v_storage_capacity_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_capacity_units", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_units -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_units

[@@@deriving.end]

type document_metadata_configuration_updates__relevance = {
  duration : string prop option; [@option]
  freshness : bool prop option; [@option]
  importance : float prop option; [@option]
  rank_order : string prop option; [@option]
  values_importance_map : (string * float prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : document_metadata_configuration_updates__relevance) -> ()

let yojson_of_document_metadata_configuration_updates__relevance =
  (function
   | {
       duration = v_duration;
       freshness = v_freshness;
       importance = v_importance;
       rank_order = v_rank_order;
       values_importance_map = v_values_importance_map;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values_importance_map with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_float v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "values_importance_map", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rank_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rank_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_importance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "importance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_freshness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "freshness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : document_metadata_configuration_updates__relevance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_metadata_configuration_updates__relevance

[@@@deriving.end]

type document_metadata_configuration_updates__search = {
  displayable : bool prop option; [@option]
  facetable : bool prop option; [@option]
  searchable : bool prop option; [@option]
  sortable : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : document_metadata_configuration_updates__search) -> ()

let yojson_of_document_metadata_configuration_updates__search =
  (function
   | {
       displayable = v_displayable;
       facetable = v_facetable;
       searchable = v_searchable;
       sortable = v_sortable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sortable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sortable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_searchable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "searchable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_facetable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "facetable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_displayable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "displayable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : document_metadata_configuration_updates__search ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_metadata_configuration_updates__search

[@@@deriving.end]

type document_metadata_configuration_updates = {
  name : string prop;
  type_ : string prop; [@key "type"]
  relevance :
    document_metadata_configuration_updates__relevance list;
  search : document_metadata_configuration_updates__search list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : document_metadata_configuration_updates) -> ()

let yojson_of_document_metadata_configuration_updates =
  (function
   | {
       name = v_name;
       type_ = v_type_;
       relevance = v_relevance;
       search = v_search;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_document_metadata_configuration_updates__search
             v_search
         in
         ("search", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_document_metadata_configuration_updates__relevance
             v_relevance
         in
         ("relevance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : document_metadata_configuration_updates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_metadata_configuration_updates

[@@@deriving.end]

type server_side_encryption_configuration = {
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption_configuration) -> ()

let yojson_of_server_side_encryption_configuration =
  (function
   | { kms_key_id = v_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration

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

type user_group_resolution_configuration = {
  user_group_resolution_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_group_resolution_configuration) -> ()

let yojson_of_user_group_resolution_configuration =
  (function
   | { user_group_resolution_mode = v_user_group_resolution_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_group_resolution_mode
         in
         ("user_group_resolution_mode", arg) :: bnds
       in
       `Assoc bnds
    : user_group_resolution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_group_resolution_configuration

[@@@deriving.end]

type user_token_configurations__json_token_type_configuration = {
  group_attribute_field : string prop;
  user_name_attribute_field : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_token_configurations__json_token_type_configuration) ->
  ()

let yojson_of_user_token_configurations__json_token_type_configuration
    =
  (function
   | {
       group_attribute_field = v_group_attribute_field;
       user_name_attribute_field = v_user_name_attribute_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_name_attribute_field
         in
         ("user_name_attribute_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_attribute_field
         in
         ("group_attribute_field", arg) :: bnds
       in
       `Assoc bnds
    : user_token_configurations__json_token_type_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_token_configurations__json_token_type_configuration

[@@@deriving.end]

type user_token_configurations__jwt_token_type_configuration = {
  claim_regex : string prop option; [@option]
  group_attribute_field : string prop option; [@option]
  issuer : string prop option; [@option]
  key_location : string prop;
  secrets_manager_arn : string prop option; [@option]
  url : string prop option; [@option]
  user_name_attribute_field : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_token_configurations__jwt_token_type_configuration) ->
  ()

let yojson_of_user_token_configurations__jwt_token_type_configuration
    =
  (function
   | {
       claim_regex = v_claim_regex;
       group_attribute_field = v_group_attribute_field;
       issuer = v_issuer;
       key_location = v_key_location;
       secrets_manager_arn = v_secrets_manager_arn;
       url = v_url;
       user_name_attribute_field = v_user_name_attribute_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_name_attribute_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_attribute_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets_manager_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secrets_manager_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_location in
         ("key_location", arg) :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_attribute_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_attribute_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_claim_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "claim_regex", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_token_configurations__jwt_token_type_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_token_configurations__jwt_token_type_configuration

[@@@deriving.end]

type user_token_configurations = {
  json_token_type_configuration :
    user_token_configurations__json_token_type_configuration list;
  jwt_token_type_configuration :
    user_token_configurations__jwt_token_type_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_token_configurations) -> ()

let yojson_of_user_token_configurations =
  (function
   | {
       json_token_type_configuration =
         v_json_token_type_configuration;
       jwt_token_type_configuration = v_jwt_token_type_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_user_token_configurations__jwt_token_type_configuration
             v_jwt_token_type_configuration
         in
         ("jwt_token_type_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_user_token_configurations__json_token_type_configuration
             v_json_token_type_configuration
         in
         ("json_token_type_configuration", arg) :: bnds
       in
       `Assoc bnds
    : user_token_configurations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_token_configurations

[@@@deriving.end]

type index_statistics__text_document_statistics = {
  indexed_text_bytes : float prop;
  indexed_text_documents_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_statistics__text_document_statistics) -> ()

let yojson_of_index_statistics__text_document_statistics =
  (function
   | {
       indexed_text_bytes = v_indexed_text_bytes;
       indexed_text_documents_count = v_indexed_text_documents_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_indexed_text_documents_count
         in
         ("indexed_text_documents_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_indexed_text_bytes
         in
         ("indexed_text_bytes", arg) :: bnds
       in
       `Assoc bnds
    : index_statistics__text_document_statistics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_statistics__text_document_statistics

[@@@deriving.end]

type index_statistics__faq_statistics = {
  indexed_question_answers_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_statistics__faq_statistics) -> ()

let yojson_of_index_statistics__faq_statistics =
  (function
   | {
       indexed_question_answers_count =
         v_indexed_question_answers_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_indexed_question_answers_count
         in
         ("indexed_question_answers_count", arg) :: bnds
       in
       `Assoc bnds
    : index_statistics__faq_statistics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_statistics__faq_statistics

[@@@deriving.end]

type index_statistics = {
  faq_statistics : index_statistics__faq_statistics list;
  text_document_statistics :
    index_statistics__text_document_statistics list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_statistics) -> ()

let yojson_of_index_statistics =
  (function
   | {
       faq_statistics = v_faq_statistics;
       text_document_statistics = v_text_document_statistics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_index_statistics__text_document_statistics
             v_text_document_statistics
         in
         ("text_document_statistics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_index_statistics__faq_statistics
             v_faq_statistics
         in
         ("faq_statistics", arg) :: bnds
       in
       `Assoc bnds
    : index_statistics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_statistics

[@@@deriving.end]

type aws_kendra_index = {
  description : string prop option; [@option]
  edition : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_context_policy : string prop option; [@option]
  capacity_units : capacity_units list;
  document_metadata_configuration_updates :
    document_metadata_configuration_updates list;
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
  timeouts : timeouts option;
  user_group_resolution_configuration :
    user_group_resolution_configuration list;
  user_token_configurations : user_token_configurations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_index) -> ()

let yojson_of_aws_kendra_index =
  (function
   | {
       description = v_description;
       edition = v_edition;
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       user_context_policy = v_user_context_policy;
       capacity_units = v_capacity_units;
       document_metadata_configuration_updates =
         v_document_metadata_configuration_updates;
       server_side_encryption_configuration =
         v_server_side_encryption_configuration;
       timeouts = v_timeouts;
       user_group_resolution_configuration =
         v_user_group_resolution_configuration;
       user_token_configurations = v_user_token_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_user_token_configurations
             v_user_token_configurations
         in
         ("user_token_configurations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_user_group_resolution_configuration
             v_user_group_resolution_configuration
         in
         ("user_group_resolution_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_server_side_encryption_configuration
             v_server_side_encryption_configuration
         in
         ("server_side_encryption_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_document_metadata_configuration_updates
             v_document_metadata_configuration_updates
         in
         ("document_metadata_configuration_updates", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capacity_units v_capacity_units
         in
         ("capacity_units", arg) :: bnds
       in
       let bnds =
         match v_user_context_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_context_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
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
    : aws_kendra_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_index

[@@@deriving.end]

let capacity_units ?query_capacity_units ?storage_capacity_units () :
    capacity_units =
  { query_capacity_units; storage_capacity_units }

let document_metadata_configuration_updates__relevance ?duration
    ?freshness ?importance ?rank_order ?values_importance_map () :
    document_metadata_configuration_updates__relevance =
  {
    duration;
    freshness;
    importance;
    rank_order;
    values_importance_map;
  }

let document_metadata_configuration_updates__search ?displayable
    ?facetable ?searchable ?sortable () :
    document_metadata_configuration_updates__search =
  { displayable; facetable; searchable; sortable }

let document_metadata_configuration_updates ?(relevance = [])
    ?(search = []) ~name ~type_ () :
    document_metadata_configuration_updates =
  { name; type_; relevance; search }

let server_side_encryption_configuration ?kms_key_id () :
    server_side_encryption_configuration =
  { kms_key_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let user_group_resolution_configuration ~user_group_resolution_mode
    () : user_group_resolution_configuration =
  { user_group_resolution_mode }

let user_token_configurations__json_token_type_configuration
    ~group_attribute_field ~user_name_attribute_field () :
    user_token_configurations__json_token_type_configuration =
  { group_attribute_field; user_name_attribute_field }

let user_token_configurations__jwt_token_type_configuration
    ?claim_regex ?group_attribute_field ?issuer ?secrets_manager_arn
    ?url ?user_name_attribute_field ~key_location () :
    user_token_configurations__jwt_token_type_configuration =
  {
    claim_regex;
    group_attribute_field;
    issuer;
    key_location;
    secrets_manager_arn;
    url;
    user_name_attribute_field;
  }

let user_token_configurations ?(json_token_type_configuration = [])
    ?(jwt_token_type_configuration = []) () :
    user_token_configurations =
  { json_token_type_configuration; jwt_token_type_configuration }

let aws_kendra_index ?description ?edition ?id ?tags ?tags_all
    ?user_context_policy ?(capacity_units = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(user_group_resolution_configuration = [])
    ?(user_token_configurations = []) ~name ~role_arn
    ~document_metadata_configuration_updates () : aws_kendra_index =
  {
    description;
    edition;
    id;
    name;
    role_arn;
    tags;
    tags_all;
    user_context_policy;
    capacity_units;
    document_metadata_configuration_updates;
    server_side_encryption_configuration;
    timeouts;
    user_group_resolution_configuration;
    user_token_configurations;
  }

type t = {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  edition : string prop;
  error_message : string prop;
  id : string prop;
  index_statistics : index_statistics list prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
  user_context_policy : string prop;
}

let make ?description ?edition ?id ?tags ?tags_all
    ?user_context_policy ?(capacity_units = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(user_group_resolution_configuration = [])
    ?(user_token_configurations = []) ~name ~role_arn
    ~document_metadata_configuration_updates __id =
  let __type = "aws_kendra_index" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       edition = Prop.computed __type __id "edition";
       error_message = Prop.computed __type __id "error_message";
       id = Prop.computed __type __id "id";
       index_statistics =
         Prop.computed __type __id "index_statistics";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
       user_context_policy =
         Prop.computed __type __id "user_context_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_index
        (aws_kendra_index ?description ?edition ?id ?tags ?tags_all
           ?user_context_policy ~capacity_units
           ~server_side_encryption_configuration ?timeouts
           ~user_group_resolution_configuration
           ~user_token_configurations ~name ~role_arn
           ~document_metadata_configuration_updates ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?edition ?id ?tags ?tags_all
    ?user_context_policy ?(capacity_units = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(user_group_resolution_configuration = [])
    ?(user_token_configurations = []) ~name ~role_arn
    ~document_metadata_configuration_updates __id =
  let (r : _ Tf_core.resource) =
    make ?description ?edition ?id ?tags ?tags_all
      ?user_context_policy ~capacity_units
      ~server_side_encryption_configuration ?timeouts
      ~user_group_resolution_configuration ~user_token_configurations
      ~name ~role_arn ~document_metadata_configuration_updates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
