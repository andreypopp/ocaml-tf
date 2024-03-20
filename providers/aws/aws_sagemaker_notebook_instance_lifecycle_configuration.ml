(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_notebook_instance_lifecycle_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  on_create : string prop option; [@option]  (** on_create *)
  on_start : string prop option; [@option]  (** on_start *)
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance_lifecycle_configuration *)

let aws_sagemaker_notebook_instance_lifecycle_configuration ?id ?name
    ?on_create ?on_start () :
    aws_sagemaker_notebook_instance_lifecycle_configuration =
  { id; name; on_create; on_start }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  on_create : string prop;
  on_start : string prop;
}

let make ?id ?name ?on_create ?on_start __id =
  let __type =
    "aws_sagemaker_notebook_instance_lifecycle_configuration"
  in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       on_create = Prop.computed __type __id "on_create";
       on_start = Prop.computed __type __id "on_start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration
        (aws_sagemaker_notebook_instance_lifecycle_configuration ?id
           ?name ?on_create ?on_start ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?on_create ?on_start __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?on_create ?on_start __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
