(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?model_package_group_description ?tags ?tags_all
    ~model_package_group_name __id =
  let __type = "aws_sagemaker_model_package_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       model_package_group_description =
         Prop.computed __type __id "model_package_group_description";
       model_package_group_name =
         Prop.computed __type __id "model_package_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_model_package_group
        (aws_sagemaker_model_package_group ?id
           ?model_package_group_description ?tags ?tags_all
           ~model_package_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?model_package_group_description ?tags
    ?tags_all ~model_package_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?model_package_group_description ?tags ?tags_all
      ~model_package_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
