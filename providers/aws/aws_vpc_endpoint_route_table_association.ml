(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_route_table_association = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_route_table_association *)

let aws_vpc_endpoint_route_table_association ?id ~route_table_id
    ~vpc_endpoint_id () : aws_vpc_endpoint_route_table_association =
  { id; route_table_id; vpc_endpoint_id }

type t = {
  id : string prop;
  route_table_id : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ~route_table_id ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_route_table_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       route_table_id = Prop.computed __type __id "route_table_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_route_table_association
        (aws_vpc_endpoint_route_table_association ?id ~route_table_id
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~route_table_id ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~route_table_id ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
