(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_endpoint_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_endpoint_policy ?id ?policy ?timeouts ~vpc_endpoint_id ()
    : aws_vpc_endpoint_policy =
  { id; policy; vpc_endpoint_id; timeouts }

type t = {
  id : string prop;
  policy : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ?policy ?timeouts ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_policy
        (aws_vpc_endpoint_policy ?id ?policy ?timeouts
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy ?timeouts ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy ?timeouts ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
