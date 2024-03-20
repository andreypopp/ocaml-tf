(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_hosted_zone_dnssec = {
  hosted_zone_id : string prop;
  id : string prop option; [@option]
  signing_status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_hosted_zone_dnssec) -> ()

let yojson_of_aws_route53_hosted_zone_dnssec =
  (function
   | {
       hosted_zone_id = v_hosted_zone_id;
       id = v_id;
       signing_status = v_signing_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signing_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signing_status", arg in
             bnd :: bnds
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
    : aws_route53_hosted_zone_dnssec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_hosted_zone_dnssec

[@@@deriving.end]

let aws_route53_hosted_zone_dnssec ?id ?signing_status
    ~hosted_zone_id () : aws_route53_hosted_zone_dnssec =
  { hosted_zone_id; id; signing_status }

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  signing_status : string prop;
}

let make ?id ?signing_status ~hosted_zone_id __id =
  let __type = "aws_route53_hosted_zone_dnssec" in
  let __attrs =
    ({
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       signing_status = Prop.computed __type __id "signing_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_hosted_zone_dnssec
        (aws_route53_hosted_zone_dnssec ?id ?signing_status
           ~hosted_zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?signing_status ~hosted_zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?signing_status ~hosted_zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
