(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_key_signing_key = {
  hosted_zone_id : string prop;
  id : string prop option; [@option]
  key_management_service_arn : string prop;
  name : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_key_signing_key) -> ()

let yojson_of_aws_route53_key_signing_key =
  (function
   | {
       hosted_zone_id = v_hosted_zone_id;
       id = v_id;
       key_management_service_arn = v_key_management_service_arn;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_key_management_service_arn
         in
         ("key_management_service_arn", arg) :: bnds
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
    : aws_route53_key_signing_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_key_signing_key

[@@@deriving.end]

let aws_route53_key_signing_key ?id ?status ~hosted_zone_id
    ~key_management_service_arn ~name () :
    aws_route53_key_signing_key =
  { hosted_zone_id; id; key_management_service_arn; name; status }

type t = {
  tf_name : string;
  digest_algorithm_mnemonic : string prop;
  digest_algorithm_type : float prop;
  digest_value : string prop;
  dnskey_record : string prop;
  ds_record : string prop;
  flag : float prop;
  hosted_zone_id : string prop;
  id : string prop;
  key_management_service_arn : string prop;
  key_tag : float prop;
  name : string prop;
  public_key : string prop;
  signing_algorithm_mnemonic : string prop;
  signing_algorithm_type : float prop;
  status : string prop;
}

let make ?id ?status ~hosted_zone_id ~key_management_service_arn
    ~name __id =
  let __type = "aws_route53_key_signing_key" in
  let __attrs =
    ({
       tf_name = __id;
       digest_algorithm_mnemonic =
         Prop.computed __type __id "digest_algorithm_mnemonic";
       digest_algorithm_type =
         Prop.computed __type __id "digest_algorithm_type";
       digest_value = Prop.computed __type __id "digest_value";
       dnskey_record = Prop.computed __type __id "dnskey_record";
       ds_record = Prop.computed __type __id "ds_record";
       flag = Prop.computed __type __id "flag";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       key_management_service_arn =
         Prop.computed __type __id "key_management_service_arn";
       key_tag = Prop.computed __type __id "key_tag";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
       signing_algorithm_mnemonic =
         Prop.computed __type __id "signing_algorithm_mnemonic";
       signing_algorithm_type =
         Prop.computed __type __id "signing_algorithm_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_key_signing_key
        (aws_route53_key_signing_key ?id ?status ~hosted_zone_id
           ~key_management_service_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~hosted_zone_id
    ~key_management_service_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~hosted_zone_id ~key_management_service_arn
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
