(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_endpoint_subnet_association = {
  id : string prop option; [@option]  (** id *)
  subnet_id : string prop;  (** subnet_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_subnet_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_endpoint_subnet_association ?id ?timeouts ~subnet_id
    ~vpc_endpoint_id () : aws_vpc_endpoint_subnet_association =
  { id; subnet_id; vpc_endpoint_id; timeouts }

type t = {
  id : string prop;
  subnet_id : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ?timeouts ~subnet_id ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_subnet_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_subnet_association
        (aws_vpc_endpoint_subnet_association ?id ?timeouts ~subnet_id
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~subnet_id ~vpc_endpoint_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~subnet_id ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
