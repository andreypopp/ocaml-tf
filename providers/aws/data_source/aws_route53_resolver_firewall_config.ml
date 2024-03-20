(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_config = {
  id : string prop option; [@option]
  resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_config) -> ()

let yojson_of_aws_route53_resolver_firewall_config =
  (function
   | { id = v_id; resource_id = v_resource_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
    : aws_route53_resolver_firewall_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_config

[@@@deriving.end]

let aws_route53_resolver_firewall_config ?id ~resource_id () :
    aws_route53_resolver_firewall_config =
  { id; resource_id }

type t = {
  firewall_fail_open : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

let make ?id ~resource_id __id =
  let __type = "aws_route53_resolver_firewall_config" in
  let __attrs =
    ({
       firewall_fail_open =
         Prop.computed __type __id "firewall_fail_open";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_config
        (aws_route53_resolver_firewall_config ?id ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resource_id __id =
  let (r : _ Tf_core.resource) = make ?id ~resource_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
