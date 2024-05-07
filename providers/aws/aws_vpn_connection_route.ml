(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_connection_route = {
  destination_cidr_block : string prop;
  id : string prop option; [@option]
  vpn_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_connection_route) -> ()

let yojson_of_aws_vpn_connection_route =
  (function
   | {
       destination_cidr_block = v_destination_cidr_block;
       id = v_id;
       vpn_connection_id = v_vpn_connection_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpn_connection_id
         in
         ("vpn_connection_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr_block
         in
         ("destination_cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpn_connection_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_connection_route

[@@@deriving.end]

let aws_vpn_connection_route ?id ~destination_cidr_block
    ~vpn_connection_id () : aws_vpn_connection_route =
  { destination_cidr_block; id; vpn_connection_id }

type t = {
  tf_name : string;
  destination_cidr_block : string prop;
  id : string prop;
  vpn_connection_id : string prop;
}

let make ?id ~destination_cidr_block ~vpn_connection_id __id =
  let __type = "aws_vpn_connection_route" in
  let __attrs =
    ({
       tf_name = __id;
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
