(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_comprehend_entity_recognizer__input_data_config__annotations = {
  s3_uri : string prop;  (** s3_uri *)
  test_s3_uri : string prop option; [@option]  (** test_s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__annotations *)

type aws_comprehend_entity_recognizer__input_data_config__augmented_manifests = {
  annotation_data_s3_uri : string prop option; [@option]
      (** annotation_data_s3_uri *)
  attribute_names : string prop list;  (** attribute_names *)
  document_type : string prop option; [@option]  (** document_type *)
  s3_uri : string prop;  (** s3_uri *)
  source_documents_s3_uri : string prop option; [@option]
      (** source_documents_s3_uri *)
  split : string prop option; [@option]  (** split *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__augmented_manifests *)

type aws_comprehend_entity_recognizer__input_data_config__documents = {
  input_format : string prop option; [@option]  (** input_format *)
  s3_uri : string prop;  (** s3_uri *)
  test_s3_uri : string prop option; [@option]  (** test_s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__documents *)

type aws_comprehend_entity_recognizer__input_data_config__entity_list = {
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__entity_list *)

type aws_comprehend_entity_recognizer__input_data_config__entity_types = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__input_data_config__entity_types *)

type aws_comprehend_entity_recognizer__input_data_config = {
  data_format : string prop option; [@option]  (** data_format *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__timeouts *)

type aws_comprehend_entity_recognizer__vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer__vpc_config *)

type aws_comprehend_entity_recognizer = {
  data_access_role_arn : string prop;  (** data_access_role_arn *)
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  model_kms_key_id : string prop option; [@option]
      (** model_kms_key_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version_name : string prop option; [@option]  (** version_name *)
  version_name_prefix : string prop option; [@option]
      (** version_name_prefix *)
  volume_kms_key_id : string prop option; [@option]
      (** volume_kms_key_id *)
  input_data_config :
    aws_comprehend_entity_recognizer__input_data_config list;
  timeouts : aws_comprehend_entity_recognizer__timeouts option;
  vpc_config : aws_comprehend_entity_recognizer__vpc_config list;
}
[@@deriving yojson_of]
(** aws_comprehend_entity_recognizer *)

type t = {
  arn : string prop;
  data_access_role_arn : string prop;
  id : string prop;
  language_code : string prop;
  model_kms_key_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_name : string prop;
  version_name_prefix : string prop;
  volume_kms_key_id : string prop;
}

let aws_comprehend_entity_recognizer ?id ?model_kms_key_id ?tags
    ?tags_all ?version_name ?version_name_prefix ?volume_kms_key_id
    ?timeouts ~data_access_role_arn ~language_code ~name
    ~input_data_config ~vpc_config __resource_id =
  let __resource_type = "aws_comprehend_entity_recognizer" in
  let __resource =
    ({
       data_access_role_arn;
       id;
       language_code;
       model_kms_key_id;
       name;
       tags;
       tags_all;
       version_name;
       version_name_prefix;
       volume_kms_key_id;
       input_data_config;
       timeouts;
       vpc_config;
     }
      : aws_comprehend_entity_recognizer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_comprehend_entity_recognizer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       data_access_role_arn =
         Prop.computed __resource_type __resource_id
           "data_access_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       model_kms_key_id =
         Prop.computed __resource_type __resource_id
           "model_kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version_name =
         Prop.computed __resource_type __resource_id "version_name";
       version_name_prefix =
         Prop.computed __resource_type __resource_id
           "version_name_prefix";
       volume_kms_key_id =
         Prop.computed __resource_type __resource_id
           "volume_kms_key_id";
     }
      : t)
  in
  __resource_attributes
