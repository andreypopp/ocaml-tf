(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_model_package_group = {
  id : string option; [@option]  (** id *)
  model_package_group_description : string option; [@option]
      (** model_package_group_description *)
  model_package_group_name : string;  (** model_package_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group *)

let aws_sagemaker_model_package_group ?id
    ?model_package_group_description ?tags ?tags_all
    ~model_package_group_name __resource_id =
  let __resource_type = "aws_sagemaker_model_package_group" in
  let __resource =
    {
      id;
      model_package_group_description;
      model_package_group_name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model_package_group __resource);
  ()
