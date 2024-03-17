(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_comprehend_entity_recognizer__input_data_config__annotations = {
  s3_uri : string;  (** s3_uri *)
  test_s3_uri : string option; [@option]  (** test_s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__annotations *)

type aws_comprehend_entity_recognizer__input_data_config__augmented_manifests = {
  annotation_data_s3_uri : string option; [@option]
      (** annotation_data_s3_uri *)
  attribute_names : string list;  (** attribute_names *)
  document_type : string option; [@option]  (** document_type *)
  s3_uri : string;  (** s3_uri *)
  source_documents_s3_uri : string option; [@option]
      (** source_documents_s3_uri *)
  split : string option; [@option]  (** split *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__augmented_manifests *)

type aws_comprehend_entity_recognizer__input_data_config__documents = {
  input_format : string option; [@option]  (** input_format *)
  s3_uri : string;  (** s3_uri *)
  test_s3_uri : string option; [@option]  (** test_s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__documents *)

type aws_comprehend_entity_recognizer__input_data_config__entity_list = {
  s3_uri : string;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__entity_list *)

type aws_comprehend_entity_recognizer__input_data_config__entity_types = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__entity_types *)

type aws_comprehend_entity_recognizer__input_data_config = {
  data_format : string option; [@option]  (** data_format *)
  annotations :
    aws_comprehend_entity_recognizer__input_data_config__annotations
    list;
  augmented_manifests :
    aws_comprehend_entity_recognizer__input_data_config__augmented_manifests
    list;
  documents :
    aws_comprehend_entity_recognizer__input_data_config__documents
    list;
  entity_list :
    aws_comprehend_entity_recognizer__input_data_config__entity_list
    list;
  entity_types :
    aws_comprehend_entity_recognizer__input_data_config__entity_types
    list;
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config *)

type aws_comprehend_entity_recognizer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__timeouts *)

type aws_comprehend_entity_recognizer__vpc_config = {
  security_group_ids : string list;  (** security_group_ids *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__vpc_config *)

type aws_comprehend_entity_recognizer = {
  data_access_role_arn : string;  (** data_access_role_arn *)
  language_code : string;  (** language_code *)
  model_kms_key_id : string option; [@option]
      (** model_kms_key_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_kms_key_id : string option; [@option]
      (** volume_kms_key_id *)
  input_data_config :
    aws_comprehend_entity_recognizer__input_data_config list;
  timeouts : aws_comprehend_entity_recognizer__timeouts option;
  vpc_config : aws_comprehend_entity_recognizer__vpc_config list;
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer *)

let aws_comprehend_entity_recognizer ?model_kms_key_id ?tags
    ?volume_kms_key_id ?timeouts ~data_access_role_arn ~language_code
    ~name ~input_data_config ~vpc_config __resource_id =
  let __resource_type = "aws_comprehend_entity_recognizer" in
  let __resource =
    {
      data_access_role_arn;
      language_code;
      model_kms_key_id;
      name;
      tags;
      volume_kms_key_id;
      input_data_config;
      timeouts;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_comprehend_entity_recognizer __resource);
  ()
