(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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

type capacity_units

val capacity_units :
  ?query_capacity_units:float prop ->
  ?storage_capacity_units:float prop ->
  unit ->
  capacity_units

type document_metadata_configuration_updates__relevance

val document_metadata_configuration_updates__relevance :
  ?duration:string prop ->
  ?freshness:bool prop ->
  ?importance:float prop ->
  ?rank_order:string prop ->
  ?values_importance_map:(string * float prop) list ->
  unit ->
  document_metadata_configuration_updates__relevance

type document_metadata_configuration_updates__search

val document_metadata_configuration_updates__search :
  ?displayable:bool prop ->
  ?facetable:bool prop ->
  ?searchable:bool prop ->
  ?sortable:bool prop ->
  unit ->
  document_metadata_configuration_updates__search

type document_metadata_configuration_updates

val document_metadata_configuration_updates :
  name:string prop ->
  type_:string prop ->
  relevance:document_metadata_configuration_updates__relevance list ->
  search:document_metadata_configuration_updates__search list ->
  unit ->
  document_metadata_configuration_updates

type server_side_encryption_configuration

val server_side_encryption_configuration :
  ?kms_key_id:string prop ->
  unit ->
  server_side_encryption_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_group_resolution_configuration

val user_group_resolution_configuration :
  user_group_resolution_mode:string prop ->
  unit ->
  user_group_resolution_configuration

type user_token_configurations__json_token_type_configuration

val user_token_configurations__json_token_type_configuration :
  group_attribute_field:string prop ->
  user_name_attribute_field:string prop ->
  unit ->
  user_token_configurations__json_token_type_configuration

type user_token_configurations__jwt_token_type_configuration

val user_token_configurations__jwt_token_type_configuration :
  ?claim_regex:string prop ->
  ?group_attribute_field:string prop ->
  ?issuer:string prop ->
  ?secrets_manager_arn:string prop ->
  ?url:string prop ->
  ?user_name_attribute_field:string prop ->
  key_location:string prop ->
  unit ->
  user_token_configurations__jwt_token_type_configuration

type user_token_configurations

val user_token_configurations :
  json_token_type_configuration:
    user_token_configurations__json_token_type_configuration list ->
  jwt_token_type_configuration:
    user_token_configurations__jwt_token_type_configuration list ->
  unit ->
  user_token_configurations

type aws_kendra_index

val aws_kendra_index :
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_context_policy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  capacity_units:capacity_units list ->
  document_metadata_configuration_updates:
    document_metadata_configuration_updates list ->
  server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  user_group_resolution_configuration:
    user_group_resolution_configuration list ->
  user_token_configurations:user_token_configurations list ->
  unit ->
  aws_kendra_index

val yojson_of_aws_kendra_index : aws_kendra_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_context_policy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  capacity_units:capacity_units list ->
  document_metadata_configuration_updates:
    document_metadata_configuration_updates list ->
  server_side_encryption_configuration:
    server_side_encryption_configuration list ->
  user_group_resolution_configuration:
    user_group_resolution_configuration list ->
  user_token_configurations:user_token_configurations list ->
  string ->
  t
