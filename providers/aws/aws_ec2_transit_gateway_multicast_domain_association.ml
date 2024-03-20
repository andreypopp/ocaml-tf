(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway_multicast_domain_association = {
  id : string prop option; [@option]  (** id *)
  subnet_id : string prop;  (** subnet_id *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_multicast_domain_id : string prop;
      (** transit_gateway_multicast_domain_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_multicast_domain_association ?id
    ?timeouts ~subnet_id ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id () :
    aws_ec2_transit_gateway_multicast_domain_association =
  {
    id;
    subnet_id;
    transit_gateway_attachment_id;
    transit_gateway_multicast_domain_id;
    timeouts;
  }

type t = {
  id : string prop;
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

let make ?id ?timeouts ~subnet_id ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id __id =
  let __type =
    "aws_ec2_transit_gateway_multicast_domain_association"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_multicast_domain_id =
         Prop.computed __type __id
           "transit_gateway_multicast_domain_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_multicast_domain_association
        (aws_ec2_transit_gateway_multicast_domain_association ?id
           ?timeouts ~subnet_id ~transit_gateway_attachment_id
           ~transit_gateway_multicast_domain_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~subnet_id
    ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~subnet_id ~transit_gateway_attachment_id
      ~transit_gateway_multicast_domain_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
