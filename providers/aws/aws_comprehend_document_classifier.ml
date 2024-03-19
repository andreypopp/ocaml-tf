(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type input_data_config__augmented_manifests = {
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
(** input_data_config__augmented_manifests *)

type input_data_config = {
  data_format : string prop option; [@option]  (** data_format *)
  label_delimiter : string prop option; [@option]
      (** label_delimiter *)
  s3_uri : string prop option; [@option]  (** s3_uri *)
  test_s3_uri : string prop option; [@option]  (** test_s3_uri *)
  augmented_manifests : input_data_config__augmented_manifests list;
}
[@@deriving yojson_of]
(** input_data_config *)

type output_data_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** output_data_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_comprehend_document_classifier = {
  data_access_role_arn : string prop;  (** data_access_role_arn *)
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  mode : string prop option; [@option]  (** mode *)
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
  input_data_config : input_data_config list;
  output_data_config : output_data_config list;
  timeouts : timeouts option;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_comprehend_document_classifier *)

let input_data_config__augmented_manifests ?annotation_data_s3_uri
    ?document_type ?source_documents_s3_uri ?split ~attribute_names
    ~s3_uri () : input_data_config__augmented_manifests =
  {
    annotation_data_s3_uri;
    attribute_names;
    document_type;
    s3_uri;
    source_documents_s3_uri;
    split;
  }

let input_data_config ?data_format ?label_delimiter ?s3_uri
    ?test_s3_uri ~augmented_manifests () : input_data_config =
  {
    data_format;
    label_delimiter;
    s3_uri;
    test_s3_uri;
    augmented_manifests;
  }

let output_data_config ?kms_key_id ~s3_uri () : output_data_config =
  { kms_key_id; s3_uri }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_config ~security_group_ids ~subnets () : vpc_config =
  { security_group_ids; subnets }

let aws_comprehend_document_classifier ?id ?mode ?model_kms_key_id
    ?tags ?tags_all ?version_name ?version_name_prefix
    ?volume_kms_key_id ?timeouts ~data_access_role_arn ~language_code
    ~name ~input_data_config ~output_data_config ~vpc_config () :
    aws_comprehend_document_classifier =
  {
    data_access_role_arn;
    id;
    language_code;
    mode;
    model_kms_key_id;
    name;
    tags;
    tags_all;
    version_name;
    version_name_prefix;
    volume_kms_key_id;
    input_data_config;
    output_data_config;
    timeouts;
    vpc_config;
  }

type t = {
  arn : string prop;
  data_access_role_arn : string prop;
  id : string prop;
  language_code : string prop;
  mode : string prop;
  model_kms_key_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_name : string prop;
  version_name_prefix : string prop;
  volume_kms_key_id : string prop;
}

let register ?tf_module ?id ?mode ?model_kms_key_id ?tags ?tags_all
    ?version_name ?version_name_prefix ?volume_kms_key_id ?timeouts
    ~data_access_role_arn ~language_code ~name ~input_data_config
    ~output_data_config ~vpc_config __resource_id =
  let __resource_type = "aws_comprehend_document_classifier" in
  let __resource =
    aws_comprehend_document_classifier ?id ?mode ?model_kms_key_id
      ?tags ?tags_all ?version_name ?version_name_prefix
      ?volume_kms_key_id ?timeouts ~data_access_role_arn
      ~language_code ~name ~input_data_config ~output_data_config
      ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_comprehend_document_classifier __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       data_access_role_arn =
         Prop.computed __resource_type __resource_id
           "data_access_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       mode = Prop.computed __resource_type __resource_id "mode";
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
