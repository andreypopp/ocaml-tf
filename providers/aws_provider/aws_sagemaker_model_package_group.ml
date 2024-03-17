(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_model_package_group = {
  model_package_group_description : string option; [@option]
      (** model_package_group_description *)
  model_package_group_name : string;  (** model_package_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group *)

let aws_sagemaker_model_package_group
    ?model_package_group_description ?tags ~model_package_group_name
    __resource_id =
  let __resource_type = "aws_sagemaker_model_package_group" in
  let __resource =
    {
      model_package_group_description;
      model_package_group_name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model_package_group __resource);
  ()
