(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type capacity_units = {
  query_capacity_units : float prop option; [@option]
      (** query_capacity_units *)
  storage_capacity_units : float prop option; [@option]
      (** storage_capacity_units *)
}
[@@deriving yojson_of]
(** capacity_units *)

type document_metadata_configuration_updates__relevance = {
  duration : string prop option; [@option]  (** duration *)
  freshness : bool prop option; [@option]  (** freshness *)
  importance : float prop option; [@option]  (** importance *)
  rank_order : string prop option; [@option]  (** rank_order *)
  values_importance_map : (string * float prop) list option; [@option]
      (** values_importance_map *)
}
[@@deriving yojson_of]
(** document_metadata_configuration_updates__relevance *)

type document_metadata_configuration_updates__search = {
  displayable : bool prop option; [@option]  (** displayable *)
  facetable : bool prop option; [@option]  (** facetable *)
  searchable : bool prop option; [@option]  (** searchable *)
  sortable : bool prop option; [@option]  (** sortable *)
}
[@@deriving yojson_of]
(** document_metadata_configuration_updates__search *)

type document_metadata_configuration_updates = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  relevance :
    document_metadata_configuration_updates__relevance list;
  search : document_metadata_configuration_updates__search list;
}
[@@deriving yojson_of]
(** document_metadata_configuration_updates *)

type server_side_encryption_configuration = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** server_side_encryption_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user_group_resolution_configuration = {
  user_group_resolution_mode : string prop;
      (** user_group_resolution_mode *)
}
[@@deriving yojson_of]
(** user_group_resolution_configuration *)

type user_token_configurations__json_token_type_configuration = {
  group_attribute_field : string prop;  (** group_attribute_field *)
  user_name_attribute_field : string prop;
      (** user_name_attribute_field *)
}
[@@deriving yojson_of]
(** user_token_configurations__json_token_type_configuration *)

type user_token_configurations__jwt_token_type_configuration = {
  claim_regex : string prop option; [@option]  (** claim_regex *)
  group_attribute_field : string prop option; [@option]
      (** group_attribute_field *)
  issuer : string prop option; [@option]  (** issuer *)
  key_location : string prop;  (** key_location *)
  secrets_manager_arn : string prop option; [@option]
      (** secrets_manager_arn *)
  url : string prop option; [@option]  (** url *)
  user_name_attribute_field : string prop option; [@option]
      (** user_name_attribute_field *)
}
[@@deriving yojson_of]
(** user_token_configurations__jwt_token_type_configuration *)

type user_token_configurations = {
  json_token_type_configuration :
    user_token_configurations__json_token_type_configuration list;
  jwt_token_type_configuration :
    user_token_configurations__jwt_token_type_configuration list;
}
[@@deriving yojson_of]
(** user_token_configurations *)

type index_statistics__text_document_statistics = {
  indexed_text_bytes : float prop;  (** indexed_text_bytes *)
  indexed_text_documents_count : float prop;
      (** indexed_text_documents_count *)
}
[@@deriving yojson_of]

type index_statistics__faq_statistics = {
  indexed_question_answers_count : float prop;
      (** indexed_question_answers_count *)
}
[@@deriving yojson_of]

type index_statistics = {
  faq_statistics : index_statistics__faq_statistics list;
      (** faq_statistics *)
  text_document_statistics :
    index_statistics__text_document_statistics list;
      (** text_document_statistics *)
}
[@@deriving yojson_of]

type aws_kendra_index = {
  description : string prop option; [@option]  (** description *)
  edition : string prop option; [@option]  (** edition *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_context_policy : string prop option; [@option]
      (** user_context_policy *)
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
[@@deriving yojson_of]
(** aws_kendra_index *)

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

let document_metadata_configuration_updates ~name ~type_ ~relevance
    ~search () : document_metadata_configuration_updates =
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

let user_token_configurations ~json_token_type_configuration
    ~jwt_token_type_configuration () : user_token_configurations =
  { json_token_type_configuration; jwt_token_type_configuration }

let aws_kendra_index ?description ?edition ?id ?tags ?tags_all
    ?user_context_policy ?timeouts ~name ~role_arn ~capacity_units
    ~document_metadata_configuration_updates
    ~server_side_encryption_configuration
    ~user_group_resolution_configuration ~user_token_configurations
    () : aws_kendra_index =
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

let register ?tf_module ?description ?edition ?id ?tags ?tags_all
    ?user_context_policy ?timeouts ~name ~role_arn ~capacity_units
    ~document_metadata_configuration_updates
    ~server_side_encryption_configuration
    ~user_group_resolution_configuration ~user_token_configurations
    __resource_id =
  let __resource_type = "aws_kendra_index" in
  let __resource =
    aws_kendra_index ?description ?edition ?id ?tags ?tags_all
      ?user_context_policy ?timeouts ~name ~role_arn ~capacity_units
      ~document_metadata_configuration_updates
      ~server_side_encryption_configuration
      ~user_group_resolution_configuration ~user_token_configurations
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_index __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       edition =
         Prop.computed __resource_type __resource_id "edition";
       error_message =
         Prop.computed __resource_type __resource_id "error_message";
       id = Prop.computed __resource_type __resource_id "id";
       index_statistics =
         Prop.computed __resource_type __resource_id
           "index_statistics";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
       user_context_policy =
         Prop.computed __resource_type __resource_id
           "user_context_policy";
     }
      : t)
  in
  __resource_attributes
