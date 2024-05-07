(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_model_package_group_policy = {
  id : string prop option; [@option]
  model_package_group_name : string prop;
  resource_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_model_package_group_policy) -> ()

let yojson_of_aws_sagemaker_model_package_group_policy =
  (function
   | {
       id = v_id;
       model_package_group_name = v_model_package_group_name;
       resource_policy = v_resource_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_policy
         in
         ("resource_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_model_package_group_name
         in
         ("model_package_group_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_model_package_group_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_model_package_group_policy

[@@@deriving.end]

let aws_sagemaker_model_package_group_policy ?id
    ~model_package_group_name ~resource_policy () :
    aws_sagemaker_model_package_group_policy =
  { id; model_package_group_name; resource_policy }

type t = {
  tf_name : string;
  id : string prop;
  model_package_group_name : string prop;
  resource_policy : string prop;
}

let make ?id ~model_package_group_name ~resource_policy __id =
  let __type = "aws_sagemaker_model_package_group_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
