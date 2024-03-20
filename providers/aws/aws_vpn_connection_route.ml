(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_connection_route = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  vpn_connection_id : string prop;  (** vpn_connection_id *)
}
[@@deriving yojson_of]
(** aws_vpn_connection_route *)

let aws_vpn_connection_route ?id ~destination_cidr_block
    ~vpn_connection_id () : aws_vpn_connection_route =
  { destination_cidr_block; id; vpn_connection_id }

type t = {
  destination_cidr_block : string prop;
  id : string prop;
  vpn_connection_id : string prop;
}

let make ?id ~destination_cidr_block ~vpn_connection_id __id =
  let __type = "aws_vpn_connection_route" in
  let __attrs =
    ({
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       vpn_connection_id =
         Prop.computed __type __id "vpn_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_connection_route
        (aws_vpn_connection_route ?id ~destination_cidr_block
           ~vpn_connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~destination_cidr_block
    ~vpn_connection_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~destination_cidr_block ~vpn_connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
