(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_private_dns = {
  private_dns_enabled : bool prop;
  vpc_endpoint_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_private_dns) -> ()

let yojson_of_aws_vpc_endpoint_private_dns =
  (function
   | {
       private_dns_enabled = v_private_dns_enabled;
       vpc_endpoint_id = v_vpc_endpoint_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_private_dns_enabled
         in
         ("private_dns_enabled", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_endpoint_private_dns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_private_dns

[@@@deriving.end]

let aws_vpc_endpoint_private_dns ~private_dns_enabled
    ~vpc_endpoint_id () : aws_vpc_endpoint_private_dns =
  { private_dns_enabled; vpc_endpoint_id }

type t = {
  tf_name : string;
  private_dns_enabled : bool prop;
  vpc_endpoint_id : string prop;
}

let make ~private_dns_enabled ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_private_dns" in
  let __attrs =
    ({
       tf_name = __id;
       private_dns_enabled =
         Prop.computed __type __id "private_dns_enabled";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_private_dns
        (aws_vpc_endpoint_private_dns ~private_dns_enabled
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ~private_dns_enabled ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ~private_dns_enabled ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
