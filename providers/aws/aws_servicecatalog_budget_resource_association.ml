(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_budget_resource_association = {
  budget_name : string prop;  (** budget_name *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_budget_resource_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_servicecatalog_budget_resource_association ?id ?timeouts
    ~budget_name ~resource_id () :
    aws_servicecatalog_budget_resource_association =
  { budget_name; id; resource_id; timeouts }

type t = {
  budget_name : string prop;
  id : string prop;
  resource_id : string prop;
}

let make ?id ?timeouts ~budget_name ~resource_id __id =
  let __type = "aws_servicecatalog_budget_resource_association" in
  let __attrs =
    ({
       budget_name = Prop.computed __type __id "budget_name";
       id = Prop.computed __type __id "id";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_budget_resource_association
        (aws_servicecatalog_budget_resource_association ?id ?timeouts
           ~budget_name ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~budget_name ~resource_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~budget_name ~resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
