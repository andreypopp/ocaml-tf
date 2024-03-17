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

type aws_kendra_index

val aws_kendra_index :
  ?description:string ->
  ?edition:string ->
  ?tags:(string * string) list ->
  ?user_context_policy:string ->
  ?timeouts:aws_kendra_index__timeouts ->
  name:string ->
  role_arn:string ->
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
  unit
