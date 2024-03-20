(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_internet_gateway_attachment = {
  id : string prop option; [@option]  (** id *)
  internet_gateway_id : string prop;  (** internet_gateway_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_internet_gateway_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_internet_gateway_attachment ?id ?timeouts
    ~internet_gateway_id ~vpc_id () : aws_internet_gateway_attachment
    =
  { id; internet_gateway_id; vpc_id; timeouts }

type t = {
  id : string prop;
  internet_gateway_id : string prop;
  vpc_id : string prop;
}

let make ?id ?timeouts ~internet_gateway_id ~vpc_id __id =
  let __type = "aws_internet_gateway_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       internet_gateway_id =
         Prop.computed __type __id "internet_gateway_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_internet_gateway_attachment
        (aws_internet_gateway_attachment ?id ?timeouts
           ~internet_gateway_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~internet_gateway_id ~vpc_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~internet_gateway_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
