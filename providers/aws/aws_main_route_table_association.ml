(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_main_route_table_association = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_main_route_table_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_main_route_table_association ?id ?timeouts ~route_table_id
    ~vpc_id () : aws_main_route_table_association =
  { id; route_table_id; vpc_id; timeouts }

type t = {
  id : string prop;
  original_route_table_id : string prop;
  route_table_id : string prop;
  vpc_id : string prop;
}

let make ?id ?timeouts ~route_table_id ~vpc_id __id =
  let __type = "aws_main_route_table_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       original_route_table_id =
         Prop.computed __type __id "original_route_table_id";
       route_table_id = Prop.computed __type __id "route_table_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_main_route_table_association
        (aws_main_route_table_association ?id ?timeouts
           ~route_table_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~route_table_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~route_table_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
