(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_transit_gateway_registration = {
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  transit_gateway_arn : string prop;  (** transit_gateway_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_registration ?id ?timeouts
    ~global_network_id ~transit_gateway_arn () :
    aws_networkmanager_transit_gateway_registration =
  { global_network_id; id; transit_gateway_arn; timeouts }

type t = {
  global_network_id : string prop;
  id : string prop;
  transit_gateway_arn : string prop;
}

let make ?id ?timeouts ~global_network_id ~transit_gateway_arn __id =
  let __type = "aws_networkmanager_transit_gateway_registration" in
  let __attrs =
    ({
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       transit_gateway_arn =
         Prop.computed __type __id "transit_gateway_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_transit_gateway_registration
        (aws_networkmanager_transit_gateway_registration ?id
           ?timeouts ~global_network_id ~transit_gateway_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~global_network_id
    ~transit_gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~global_network_id ~transit_gateway_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
