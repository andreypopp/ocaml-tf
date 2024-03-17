(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_index__capacity_units

type aws_kendra_index__document_metadata_configuration_updates__relevance

type aws_kendra_index__document_metadata_configuration_updates__search
type aws_kendra_index__document_metadata_configuration_updates
type aws_kendra_index__server_side_encryption_configuration
type aws_kendra_index__timeouts
type aws_kendra_index__user_group_resolution_configuration

type aws_kendra_index__user_token_configurations__json_token_type_configuration

type aws_kendra_index__user_token_configurations__jwt_token_type_configuration

type aws_kendra_index__user_token_configurations

type aws_kendra_index__index_statistics__text_document_statistics = {
  indexed_text_bytes : float prop;  (** indexed_text_bytes *)
  indexed_text_documents_count : float prop;
      (** indexed_text_documents_count *)
}

type aws_kendra_index__index_statistics__faq_statistics = {
  indexed_question_answers_count : float prop;
      (** indexed_question_answers_count *)
}

type aws_kendra_index__index_statistics = {
  faq_statistics :
    aws_kendra_index__index_statistics__faq_statistics list;
      (** faq_statistics *)
  text_document_statistics :
    aws_kendra_index__index_statistics__text_document_statistics list;
      (** text_document_statistics *)
}

type aws_kendra_index

type t = private {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  edition : string prop;
  error_message : string prop;
  id : string prop;
  index_statistics : aws_kendra_index__index_statistics list prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
  user_context_policy : string prop;
}

val aws_kendra_index :
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_context_policy:string prop ->
  ?timeouts:aws_kendra_index__timeouts ->
  name:string prop ->
  role_arn:string prop ->
  capacity_units:aws_kendra_index__capacity_units list ->
  document_metadata_configuration_updates:
    aws_kendra_index__document_metadata_configuration_updates list ->
  server_side_encryption_configuration:
    aws_kendra_index__server_side_encryption_configuration list ->
  user_group_resolution_configuration:
    aws_kendra_index__user_group_resolution_configuration list ->
  user_token_configurations:
    aws_kendra_index__user_token_configurations list ->
  string ->
  t
