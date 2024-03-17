(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codepipeline_custom_action_type__configuration_property = {
  description : string option; [@option]  (** description *)
  key : bool;  (** key *)
  name : string;  (** name *)
  queryable : bool option; [@option]  (** queryable *)
  required : bool;  (** required *)
  secret : bool;  (** secret *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__configuration_property *)

type aws_codepipeline_custom_action_type__input_artifact_details = {
  maximum_count : float;  (** maximum_count *)
  minimum_count : float;  (** minimum_count *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__input_artifact_details *)

type aws_codepipeline_custom_action_type__output_artifact_details = {
  maximum_count : float;  (** maximum_count *)
  minimum_count : float;  (** minimum_count *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__output_artifact_details *)

type aws_codepipeline_custom_action_type__settings = {
  entity_url_template : string option; [@option]
      (** entity_url_template *)
  execution_url_template : string option; [@option]
      (** execution_url_template *)
  revision_url_template : string option; [@option]
      (** revision_url_template *)
  third_party_configuration_url : string option; [@option]
      (** third_party_configuration_url *)
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type__settings *)

type aws_codepipeline_custom_action_type = {
  category : string;  (** category *)
  id : string option; [@option]  (** id *)
  provider_name : string;  (** provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  version : string;  (** version *)
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

let aws_codepipeline_custom_action_type ?id ?tags ?tags_all ~category
    ~provider_name ~version ~configuration_property
    ~input_artifact_details ~output_artifact_details ~settings
    __resource_id =
  let __resource_type = "aws_codepipeline_custom_action_type" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codepipeline_custom_action_type __resource);
  ()
