(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_domain_list = {
  firewall_domain_list_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_domain_list) -> ()

let yojson_of_aws_route53_resolver_firewall_domain_list =
  (function
   | {
       firewall_domain_list_id = v_firewall_domain_list_id;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_prop yojson_of_string v_firewall_domain_list_id
         in
         ("firewall_domain_list_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_firewall_domain_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_domain_list

[@@@deriving.end]

let aws_route53_resolver_firewall_domain_list ?id
    ~firewall_domain_list_id () :
    aws_route53_resolver_firewall_domain_list =
  { firewall_domain_list_id; id }

type t = {
  arn : string prop;
  creation_time : string prop;
  creator_request_id : string prop;
  domain_count : float prop;
  firewall_domain_list_id : string prop;
  id : string prop;
  managed_owner_name : string prop;
  modification_time : string prop;
  name : string prop;
  status : string prop;
  status_message : string prop;
}

let make ?id ~firewall_domain_list_id __id =
  let __type = "aws_route53_resolver_firewall_domain_list" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       creator_request_id =
         Prop.computed __type __id "creator_request_id";
       domain_count = Prop.computed __type __id "domain_count";
       firewall_domain_list_id =
         Prop.computed __type __id "firewall_domain_list_id";
       id = Prop.computed __type __id "id";
       managed_owner_name =
         Prop.computed __type __id "managed_owner_name";
       modification_time =
         Prop.computed __type __id "modification_time";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_domain_list
        (aws_route53_resolver_firewall_domain_list ?id
           ~firewall_domain_list_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~firewall_domain_list_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~firewall_domain_list_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
