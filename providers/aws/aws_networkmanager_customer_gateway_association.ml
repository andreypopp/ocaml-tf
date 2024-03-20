(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_customer_gateway_association = {
  customer_gateway_arn : string prop;  (** customer_gateway_arn *)
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_customer_gateway_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_customer_gateway_association ?id ?link_id
    ?timeouts ~customer_gateway_arn ~device_id ~global_network_id ()
    : aws_networkmanager_customer_gateway_association =
  {
    customer_gateway_arn;
    device_id;
    global_network_id;
    id;
    link_id;
    timeouts;
  }

type t = {
  customer_gateway_arn : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
}

let make ?id ?link_id ?timeouts ~customer_gateway_arn ~device_id
    ~global_network_id __id =
  let __type = "aws_networkmanager_customer_gateway_association" in
  let __attrs =
    ({
       customer_gateway_arn =
         Prop.computed __type __id "customer_gateway_arn";
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_customer_gateway_association
        (aws_networkmanager_customer_gateway_association ?id ?link_id
           ?timeouts ~customer_gateway_arn ~device_id
           ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?link_id ?timeouts ~customer_gateway_arn
    ~device_id ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?link_id ?timeouts ~customer_gateway_arn ~device_id
      ~global_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
