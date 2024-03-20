(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudcontrolapi_resource = {
  desired_state : string prop;  (** desired_state *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  schema : string prop option; [@option]  (** schema *)
  type_name : string prop;  (** type_name *)
  type_version_id : string prop option; [@option]
      (** type_version_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudcontrolapi_resource *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudcontrolapi_resource ?id ?role_arn ?schema
    ?type_version_id ?timeouts ~desired_state ~type_name () :
    aws_cloudcontrolapi_resource =
  {
    desired_state;
    id;
    role_arn;
    schema;
    type_name;
    type_version_id;
    timeouts;
  }

type t = {
  desired_state : string prop;
  id : string prop;
  properties : string prop;
  role_arn : string prop;
  schema : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

let make ?id ?role_arn ?schema ?type_version_id ?timeouts
    ~desired_state ~type_name __id =
  let __type = "aws_cloudcontrolapi_resource" in
  let __attrs =
    ({
       desired_state = Prop.computed __type __id "desired_state";
       id = Prop.computed __type __id "id";
       properties = Prop.computed __type __id "properties";
       role_arn = Prop.computed __type __id "role_arn";
       schema = Prop.computed __type __id "schema";
       type_name = Prop.computed __type __id "type_name";
       type_version_id = Prop.computed __type __id "type_version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudcontrolapi_resource
        (aws_cloudcontrolapi_resource ?id ?role_arn ?schema
           ?type_version_id ?timeouts ~desired_state ~type_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_arn ?schema ?type_version_id
    ?timeouts ~desired_state ~type_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_arn ?schema ?type_version_id ?timeouts
      ~desired_state ~type_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
