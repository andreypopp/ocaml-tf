(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_gateway_attachment = {
  id : string prop option; [@option]
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_gateway_attachment) -> ()

let yojson_of_aws_vpn_gateway_attachment =
  (function
   | {
       id = v_id;
       vpc_id = v_vpc_id;
       vpn_gateway_id = v_vpn_gateway_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpn_gateway_id
         in
         ("vpn_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpn_gateway_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_gateway_attachment

[@@@deriving.end]

let aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id () :
    aws_vpn_gateway_attachment =
  { id; vpc_id; vpn_gateway_id }

type t = {
  tf_name : string;
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?id ~vpc_id ~vpn_gateway_id __id =
  let __type = "aws_vpn_gateway_attachment" in
  let __attrs =
    ({
       tf_name = __id;
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
