(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_units = {
  query_capacity_units : float prop;
  storage_capacity_units : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_storage_capacity_units
         in
         ("storage_capacity_units", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_query_capacity_units
         in
         ("query_capacity_units", arg) :: bnds
       in
       `Assoc bnds
    : capacity_units -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_units

[@@@deriving.end]

type document_metadata_configuration_updates__search = {
  displayable : bool prop;
  facetable : bool prop;
  searchable : bool prop;
  sortable : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_sortable in
         ("sortable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_searchable in
         ("searchable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_facetable in
         ("facetable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_displayable in
         ("displayable", arg) :: bnds
       in
       `Assoc bnds
    : document_metadata_configuration_updates__search ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_metadata_configuration_updates__search

[@@@deriving.end]

type document_metadata_configuration_updates__relevance = {
  duration : string prop;
  freshness : bool prop;
  importance : float prop;
  rank_order : string prop;
  values_importance_map : (string * float prop) list;
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_float v1 in
                   `List [ v0; v1 ])
             v_values_importance_map
         in
         ("values_importance_map", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rank_order in
         ("rank_order", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_importance in
         ("importance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_freshness in
         ("freshness", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : document_metadata_configuration_updates__relevance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_metadata_configuration_updates__relevance

[@@@deriving.end]

type document_metadata_configuration_updates = {
  name : string prop;
  relevance :
    document_metadata_configuration_updates__relevance list;
      [@default []] [@yojson_drop_default ( = )]
  search : document_metadata_configuration_updates__search list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : document_metadata_configuration_updates) -> ()

let yojson_of_document_metadata_configuration_updates =
  (function
   | {
       name = v_name;
       relevance = v_relevance;
       search = v_search;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_search then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_document_metadata_configuration_updates__search)
               v_search
           in
           let bnd = "search", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_relevance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_document_metadata_configuration_updates__relevance)
               v_relevance
           in
           let bnd = "relevance", arg in
           bnd :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
  text_document_statistics :
    index_statistics__text_document_statistics list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_text_document_statistics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_index_statistics__text_document_statistics)
               v_text_document_statistics
           in
           let bnd = "text_document_statistics", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_faq_statistics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_index_statistics__faq_statistics)
               v_faq_statistics
           in
           let bnd = "faq_statistics", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : index_statistics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_statistics

[@@@deriving.end]

type server_side_encryption_configuration = {
  kms_key_id : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration

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

type user_token_configurations__jwt_token_type_configuration = {
  claim_regex : string prop;
  group_attribute_field : string prop;
  issuer : string prop;
  key_location : string prop;
  secrets_manager_arn : string prop;
  url : string prop;
  user_name_attribute_field : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_user_name_attribute_field
         in
         ("user_name_attribute_field", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secrets_manager_arn
         in
         ("secrets_manager_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_location in
         ("key_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_attribute_field
         in
         ("group_attribute_field", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_claim_regex in
         ("claim_regex", arg) :: bnds
       in
       `Assoc bnds
    : user_token_configurations__jwt_token_type_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_token_configurations__jwt_token_type_configuration

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

type user_token_configurations = {
  json_token_type_configuration :
    user_token_configurations__json_token_type_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  jwt_token_type_configuration :
    user_token_configurations__jwt_token_type_configuration list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_jwt_token_type_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_token_configurations__jwt_token_type_configuration)
               v_jwt_token_type_configuration
           in
           let bnd = "jwt_token_type_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_json_token_type_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_token_configurations__json_token_type_configuration)
               v_json_token_type_configuration
           in
           let bnd = "json_token_type_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_token_configurations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_token_configurations

[@@@deriving.end]

type aws_kendra_index = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_index) -> ()

let yojson_of_aws_kendra_index =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_kendra_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_index

[@@@deriving.end]

let aws_kendra_index ?tags ~id () : aws_kendra_index = { id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  capacity_units : capacity_units list prop;
  created_at : string prop;
  description : string prop;
  document_metadata_configuration_updates :
    document_metadata_configuration_updates list prop;
  edition : string prop;
  error_message : string prop;
  id : string prop;
  index_statistics : index_statistics list prop;
  name : string prop;
  role_arn : string prop;
  server_side_encryption_configuration :
    server_side_encryption_configuration list prop;
  status : string prop;
  tags : (string * string) list prop;
  updated_at : string prop;
  user_context_policy : string prop;
  user_group_resolution_configuration :
    user_group_resolution_configuration list prop;
  user_token_configurations : user_token_configurations list prop;
}

let make ?tags ~id __id =
  let __type = "aws_kendra_index" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       capacity_units = Prop.computed __type __id "capacity_units";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       document_metadata_configuration_updates =
         Prop.computed __type __id
           "document_metadata_configuration_updates";
       edition = Prop.computed __type __id "edition";
       error_message = Prop.computed __type __id "error_message";
       id = Prop.computed __type __id "id";
       index_statistics =
         Prop.computed __type __id "index_statistics";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       server_side_encryption_configuration =
         Prop.computed __type __id
           "server_side_encryption_configuration";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       updated_at = Prop.computed __type __id "updated_at";
       user_context_policy =
         Prop.computed __type __id "user_context_policy";
       user_group_resolution_configuration =
         Prop.computed __type __id
           "user_group_resolution_configuration";
       user_token_configurations =
         Prop.computed __type __id "user_token_configurations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_kendra_index (aws_kendra_index ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
