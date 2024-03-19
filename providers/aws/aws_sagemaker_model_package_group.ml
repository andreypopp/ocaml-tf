(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_model_package_group = {
  id : string prop option; [@option]  (** id *)
  model_package_group_description : string prop option; [@option]
      (** model_package_group_description *)
  model_package_group_name : string prop;
      (** model_package_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group *)

let aws_sagemaker_model_package_group ?id
    ?model_package_group_description ?tags ?tags_all
    ~model_package_group_name () : aws_sagemaker_model_package_group
    =
  {
    id;
    model_package_group_description;
    model_package_group_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  model_package_group_description : string prop;
  model_package_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?model_package_group_description ?tags
    ?tags_all ~model_package_group_name __resource_id =
  let __resource_type = "aws_sagemaker_model_package_group" in
  let __resource =
    aws_sagemaker_model_package_group ?id
      ?model_package_group_description ?tags ?tags_all
      ~model_package_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model_package_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       model_package_group_description =
         Prop.computed __resource_type __resource_id
           "model_package_group_description";
       model_package_group_name =
         Prop.computed __resource_type __resource_id
           "model_package_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
