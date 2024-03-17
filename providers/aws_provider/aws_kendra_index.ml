(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_kendra_index__capacity_units = {
  query_capacity_units : float option; [@option]
      (** query_capacity_units *)
  storage_capacity_units : float option; [@option]
      (** storage_capacity_units *)
}
[@@deriving yojson_of]
(** aws_kendra_index__capacity_units *)

type aws_kendra_index__document_metadata_configuration_updates__relevance = {
  duration : string option; [@option]  (** duration *)
  freshness : bool option; [@option]  (** freshness *)
  importance : float option; [@option]  (** importance *)
  rank_order : string option; [@option]  (** rank_order *)
  values_importance_map : (string * float) list option; [@option]
      (** values_importance_map *)
}
[@@deriving yojson_of]
(** aws_kendra_index__document_metadata_configuration_updates__relevance *)

type aws_kendra_index__document_metadata_configuration_updates__search = {
  displayable : bool option; [@option]  (** displayable *)
  facetable : bool option; [@option]  (** facetable *)
  searchable : bool option; [@option]  (** searchable *)
  sortable : bool option; [@option]  (** sortable *)
}
[@@deriving yojson_of]
(** aws_kendra_index__document_metadata_configuration_updates__search *)

type aws_kendra_index__document_metadata_configuration_updates = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  relevance :
    aws_kendra_index__document_metadata_configuration_updates__relevance
    list;
  search :
    aws_kendra_index__document_metadata_configuration_updates__search
    list;
}
[@@deriving yojson_of]
(** aws_kendra_index__document_metadata_configuration_updates *)

type aws_kendra_index__server_side_encryption_configuration = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_kendra_index__server_side_encryption_configuration *)

type aws_kendra_index__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_index__timeouts *)

type aws_kendra_index__user_group_resolution_configuration = {
  user_group_resolution_mode : string;
      (** user_group_resolution_mode *)
}
[@@deriving yojson_of]
(** aws_kendra_index__user_group_resolution_configuration *)

type aws_kendra_index__user_token_configurations__json_token_type_configuration = {
  group_attribute_field : string;  (** group_attribute_field *)
  user_name_attribute_field : string;
      (** user_name_attribute_field *)
}
[@@deriving yojson_of]
(** aws_kendra_index__user_token_configurations__json_token_type_configuration *)

type aws_kendra_index__user_token_configurations__jwt_token_type_configuration = {
  claim_regex : string option; [@option]  (** claim_regex *)
  group_attribute_field : string option; [@option]
      (** group_attribute_field *)
  issuer : string option; [@option]  (** issuer *)
  key_location : string;  (** key_location *)
  secrets_manager_arn : string option; [@option]
      (** secrets_manager_arn *)
  url : string option; [@option]  (** url *)
  user_name_attribute_field : string option; [@option]
      (** user_name_attribute_field *)
}
[@@deriving yojson_of]
(** aws_kendra_index__user_token_configurations__jwt_token_type_configuration *)

type aws_kendra_index__user_token_configurations = {
  json_token_type_configuration :
    aws_kendra_index__user_token_configurations__json_token_type_configuration
    list;
  jwt_token_type_configuration :
    aws_kendra_index__user_token_configurations__jwt_token_type_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_index__user_token_configurations *)

type aws_kendra_index__index_statistics__text_document_statistics = {
  indexed_text_bytes : float;  (** indexed_text_bytes *)
  indexed_text_documents_count : float;
      (** indexed_text_documents_count *)
}
[@@deriving yojson_of]

type aws_kendra_index__index_statistics__faq_statistics = {
  indexed_question_answers_count : float;
      (** indexed_question_answers_count *)
}
[@@deriving yojson_of]

type aws_kendra_index__index_statistics = {
  faq_statistics :
    aws_kendra_index__index_statistics__faq_statistics list;
      (** faq_statistics *)
  text_document_statistics :
    aws_kendra_index__index_statistics__text_document_statistics list;
      (** text_document_statistics *)
}
[@@deriving yojson_of]

type aws_kendra_index = {
  description : string option; [@option]  (** description *)
  edition : string option; [@option]  (** edition *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_context_policy : string option; [@option]
      (** user_context_policy *)
  capacity_units : aws_kendra_index__capacity_units list;
  document_metadata_configuration_updates :
    aws_kendra_index__document_metadata_configuration_updates list;
  server_side_encryption_configuration :
    aws_kendra_index__server_side_encryption_configuration list;
  timeouts : aws_kendra_index__timeouts option;
  user_group_resolution_configuration :
    aws_kendra_index__user_group_resolution_configuration list;
  user_token_configurations :
    aws_kendra_index__user_token_configurations list;
}
[@@deriving yojson_of]
(** aws_kendra_index *)

let aws_kendra_index ?description ?edition ?tags ?user_context_policy
    ?timeouts ~name ~role_arn ~capacity_units
    ~document_metadata_configuration_updates
    ~server_side_encryption_configuration
    ~user_group_resolution_configuration ~user_token_configurations
    __resource_id =
  let __resource_type = "aws_kendra_index" in
  let __resource =
    {
      description;
      edition;
      name;
      role_arn;
      tags;
      user_context_policy;
      capacity_units;
      document_metadata_configuration_updates;
      server_side_encryption_configuration;
      timeouts;
      user_group_resolution_configuration;
      user_token_configurations;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_index __resource);
  ()
