(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_gateway_attachment = {
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway_attachment *)

let aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id () :
    aws_vpn_gateway_attachment =
  { id; vpc_id; vpn_gateway_id }

type t = {
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?id ~vpc_id ~vpn_gateway_id __id =
  let __type = "aws_vpn_gateway_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_gateway_attachment
        (aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vpc_id ~vpn_gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~vpc_id ~vpn_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
