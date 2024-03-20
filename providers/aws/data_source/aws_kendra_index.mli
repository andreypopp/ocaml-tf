(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capacity_units = {
  query_capacity_units : float prop;  (** query_capacity_units *)
  storage_capacity_units : float prop;  (** storage_capacity_units *)
}

type document_metadata_configuration_updates__search = {
  displayable : bool prop;  (** displayable *)
  facetable : bool prop;  (** facetable *)
  searchable : bool prop;  (** searchable *)
  sortable : bool prop;  (** sortable *)
}

type document_metadata_configuration_updates__relevance = {
  duration : string prop;  (** duration *)
  freshness : bool prop;  (** freshness *)
  importance : float prop;  (** importance *)
  rank_order : string prop;  (** rank_order *)
  values_importance_map : (string * float prop) list;
      (** values_importance_map *)
}

type document_metadata_configuration_updates = {
  name : string prop;  (** name *)
  relevance :
    document_metadata_configuration_updates__relevance list;
      (** relevance *)
  search : document_metadata_configuration_updates__search list;
      (** search *)
  type_ : string prop; [@key "type"]  (** type *)
}

type index_statistics__text_document_statistics = {
  indexed_text_bytes : float prop;  (** indexed_text_bytes *)
  indexed_text_documents_count : float prop;
      (** indexed_text_documents_count *)
}

type index_statistics__faq_statistics = {
  indexed_question_answers_count : float prop;
      (** indexed_question_answers_count *)
}

type index_statistics = {
  faq_statistics : index_statistics__faq_statistics list;
      (** faq_statistics *)
  text_document_statistics :
    index_statistics__text_document_statistics list;
      (** text_document_statistics *)
}

type server_side_encryption_configuration = {
  kms_key_id : string prop;  (** kms_key_id *)
}

type user_group_resolution_configuration = {
  user_group_resolution_mode : string prop;
      (** user_group_resolution_mode *)
}

type user_token_configurations__jwt_token_type_configuration = {
  claim_regex : string prop;  (** claim_regex *)
  group_attribute_field : string prop;  (** group_attribute_field *)
  issuer : string prop;  (** issuer *)
  key_location : string prop;  (** key_location *)
  secrets_manager_arn : string prop;  (** secrets_manager_arn *)
  url : string prop;  (** url *)
  user_name_attribute_field : string prop;
      (** user_name_attribute_field *)
}

type user_token_configurations__json_token_type_configuration = {
  group_attribute_field : string prop;  (** group_attribute_field *)
  user_name_attribute_field : string prop;
      (** user_name_attribute_field *)
}

type user_token_configurations = {
  json_token_type_configuration :
    user_token_configurations__json_token_type_configuration list;
      (** json_token_type_configuration *)
  jwt_token_type_configuration :
    user_token_configurations__jwt_token_type_configuration list;
      (** jwt_token_type_configuration *)
}

type aws_kendra_index

val aws_kendra_index :
  ?tags:(string * string prop) list ->
  id:string prop ->
  unit ->
  aws_kendra_index

val yojson_of_aws_kendra_index : aws_kendra_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  id:string prop ->
  string ->
  t Tf_core.resource
