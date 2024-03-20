(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_traffic_policy_instance = {
  hosted_zone_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  traffic_policy_id : string prop;
  traffic_policy_version : float prop;
  ttl : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_traffic_policy_instance) -> ()

let yojson_of_aws_route53_traffic_policy_instance =
  (function
   | {
       hosted_zone_id = v_hosted_zone_id;
       id = v_id;
       name = v_name;
       traffic_policy_id = v_traffic_policy_id;
       traffic_policy_version = v_traffic_policy_version;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_traffic_policy_version
         in
         ("traffic_policy_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_policy_id
         in
         ("traffic_policy_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_hosted_zone_id
         in
         ("hosted_zone_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_traffic_policy_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_traffic_policy_instance

[@@@deriving.end]

let aws_route53_traffic_policy_instance ?id ~hosted_zone_id ~name
    ~traffic_policy_id ~traffic_policy_version ~ttl () :
    aws_route53_traffic_policy_instance =
  {
    hosted_zone_id;
    id;
    name;
    traffic_policy_id;
    traffic_policy_version;
    ttl;
  }

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  name : string prop;
  traffic_policy_id : string prop;
  traffic_policy_version : float prop;
  ttl : float prop;
}

let make ?id ~hosted_zone_id ~name ~traffic_policy_id
    ~traffic_policy_version ~ttl __id =
  let __type = "aws_route53_traffic_policy_instance" in
  let __attrs =
    ({
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       traffic_policy_id =
         Prop.computed __type __id "traffic_policy_id";
       traffic_policy_version =
         Prop.computed __type __id "traffic_policy_version";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_traffic_policy_instance
        (aws_route53_traffic_policy_instance ?id ~hosted_zone_id
           ~name ~traffic_policy_id ~traffic_policy_version ~ttl ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hosted_zone_id ~name ~traffic_policy_id
    ~traffic_policy_version ~ttl __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hosted_zone_id ~name ~traffic_policy_id
      ~traffic_policy_version ~ttl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
