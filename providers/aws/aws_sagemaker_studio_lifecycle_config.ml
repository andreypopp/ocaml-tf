(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_studio_lifecycle_config = {
  id : string prop option; [@option]  (** id *)
  studio_lifecycle_config_app_type : string prop;
      (** studio_lifecycle_config_app_type *)
  studio_lifecycle_config_content : string prop;
      (** studio_lifecycle_config_content *)
  studio_lifecycle_config_name : string prop;
      (** studio_lifecycle_config_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_studio_lifecycle_config *)

let aws_sagemaker_studio_lifecycle_config ?id ?tags ?tags_all
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name ()
    : aws_sagemaker_studio_lifecycle_config =
  {
    id;
    studio_lifecycle_config_app_type;
    studio_lifecycle_config_content;
    studio_lifecycle_config_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  studio_lifecycle_config_app_type : string prop;
  studio_lifecycle_config_content : string prop;
  studio_lifecycle_config_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name
    __resource_id =
  let __resource_type = "aws_sagemaker_studio_lifecycle_config" in
  let __resource =
    aws_sagemaker_studio_lifecycle_config ?id ?tags ?tags_all
      ~studio_lifecycle_config_app_type
      ~studio_lifecycle_config_content ~studio_lifecycle_config_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_studio_lifecycle_config __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       studio_lifecycle_config_app_type =
         Prop.computed __resource_type __resource_id
           "studio_lifecycle_config_app_type";
       studio_lifecycle_config_content =
         Prop.computed __resource_type __resource_id
           "studio_lifecycle_config_content";
       studio_lifecycle_config_name =
         Prop.computed __resource_type __resource_id
           "studio_lifecycle_config_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
