(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codepipeline_custom_action_type__configuration_property = {
  description : string prop option; [@option]  (** description *)
  key : bool prop;  (** key *)
  name : string prop;  (** name *)
  queryable : bool prop option; [@option]  (** queryable *)
  required : bool prop;  (** required *)
  secret : bool prop;  (** secret *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__configuration_property *)

type aws_codepipeline_custom_action_type__input_artifact_details = {
  maximum_count : float prop;  (** maximum_count *)
  minimum_count : float prop;  (** minimum_count *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__input_artifact_details *)

type aws_codepipeline_custom_action_type__output_artifact_details = {
  maximum_count : float prop;  (** maximum_count *)
  minimum_count : float prop;  (** minimum_count *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__output_artifact_details *)

type aws_codepipeline_custom_action_type__settings = {
  entity_url_template : string prop option; [@option]
      (** entity_url_template *)
  execution_url_template : string prop option; [@option]
      (** execution_url_template *)
  revision_url_template : string prop option; [@option]
      (** revision_url_template *)
  third_party_configuration_url : string prop option; [@option]
      (** third_party_configuration_url *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__settings *)

type aws_codepipeline_custom_action_type = {
  category : string prop;  (** category *)
  id : string prop option; [@option]  (** id *)
  provider_name : string prop;  (** provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop;  (** version *)
  configuration_property :
    aws_codepipeline_custom_action_type__configuration_property list;
  input_artifact_details :
    aws_codepipeline_custom_action_type__input_artifact_details list;
  output_artifact_details :
    aws_codepipeline_custom_action_type__output_artifact_details list;
  settings : aws_codepipeline_custom_action_type__settings list;
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type *)

type t = {
  arn : string prop;
  category : string prop;
  id : string prop;
  owner : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let aws_codepipeline_custom_action_type ?id ?tags ?tags_all ~category
    ~provider_name ~version ~configuration_property
    ~input_artifact_details ~output_artifact_details ~settings
    __resource_id =
  let __resource_type = "aws_codepipeline_custom_action_type" in
  let __resource =
    ({
       category;
       id;
       provider_name;
       tags;
       tags_all;
       version;
       configuration_property;
       input_artifact_details;
       output_artifact_details;
       settings;
     }
      : aws_codepipeline_custom_action_type)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codepipeline_custom_action_type __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       category =
         Prop.computed __resource_type __resource_id "category";
       id = Prop.computed __resource_type __resource_id "id";
       owner = Prop.computed __resource_type __resource_id "owner";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
