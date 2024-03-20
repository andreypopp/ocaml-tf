(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route_table_association = {
  gateway_id : string prop option; [@option]  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route_table_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route_table_association ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id () : aws_route_table_association =
  { gateway_id; id; route_table_id; subnet_id; timeouts }

type t = {
  gateway_id : string prop;
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

let make ?gateway_id ?id ?subnet_id ?timeouts ~route_table_id __id =
  let __type = "aws_route_table_association" in
  let __attrs =
    ({
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
       route_table_id = Prop.computed __type __id "route_table_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route_table_association
        (aws_route_table_association ?gateway_id ?id ?subnet_id
           ?timeouts ~route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?gateway_id ?id ?subnet_id ?timeouts ~route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
