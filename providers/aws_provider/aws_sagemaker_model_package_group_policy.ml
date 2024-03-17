(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_model_package_group_policy = {
  model_package_group_name : string;  (** model_package_group_name *)
  resource_policy : string;  (** resource_policy *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group_policy *)

let aws_sagemaker_model_package_group_policy
    ~model_package_group_name ~resource_policy __resource_id =
  let __resource_type = "aws_sagemaker_model_package_group_policy" in
  let __resource = { model_package_group_name; resource_policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model_package_group_policy __resource);
  ()
