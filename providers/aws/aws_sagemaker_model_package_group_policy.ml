(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_model_package_group_policy = {
  id : string prop option; [@option]  (** id *)
  model_package_group_name : string prop;
      (** model_package_group_name *)
  resource_policy : string prop;  (** resource_policy *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model_package_group_policy *)

let aws_sagemaker_model_package_group_policy ?id
    ~model_package_group_name ~resource_policy () :
    aws_sagemaker_model_package_group_policy =
  { id; model_package_group_name; resource_policy }

type t = {
  id : string prop;
  model_package_group_name : string prop;
  resource_policy : string prop;
}

let make ?id ~model_package_group_name ~resource_policy __id =
  let __type = "aws_sagemaker_model_package_group_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       model_package_group_name =
         Prop.computed __type __id "model_package_group_name";
       resource_policy = Prop.computed __type __id "resource_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_model_package_group_policy
        (aws_sagemaker_model_package_group_policy ?id
           ~model_package_group_name ~resource_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~model_package_group_name
    ~resource_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~model_package_group_name ~resource_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
