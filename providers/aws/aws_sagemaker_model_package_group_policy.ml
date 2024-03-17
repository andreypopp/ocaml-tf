(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_model_package_group_policy = {
  id : string prop option; [@option]  (** id *)
  model_package_group_name : string prop;
      (** model_package_group_name *)
  resource_policy : string prop;  (** resource_policy *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group_policy *)

type t = {
  id : string prop;
  model_package_group_name : string prop;
  resource_policy : string prop;
}

let aws_sagemaker_model_package_group_policy ?id
    ~model_package_group_name ~resource_policy __resource_id =
  let __resource_type = "aws_sagemaker_model_package_group_policy" in
  let __resource =
    ({ id; model_package_group_name; resource_policy }
      : aws_sagemaker_model_package_group_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model_package_group_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       model_package_group_name =
         Prop.computed __resource_type __resource_id
           "model_package_group_name";
       resource_policy =
         Prop.computed __resource_type __resource_id
           "resource_policy";
     }
      : t)
  in
  __resource_attributes
