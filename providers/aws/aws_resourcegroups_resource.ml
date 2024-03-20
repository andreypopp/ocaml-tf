(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_resourcegroups_resource = {
  group_arn : string prop;  (** group_arn *)
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_resourcegroups_resource ?id ?timeouts ~group_arn
    ~resource_arn () : aws_resourcegroups_resource =
  { group_arn; id; resource_arn; timeouts }

type t = {
  group_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_type : string prop;
}

let make ?id ?timeouts ~group_arn ~resource_arn __id =
  let __type = "aws_resourcegroups_resource" in
  let __attrs =
    ({
       group_arn = Prop.computed __type __id "group_arn";
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_resourcegroups_resource
        (aws_resourcegroups_resource ?id ?timeouts ~group_arn
           ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~group_arn ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~group_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
