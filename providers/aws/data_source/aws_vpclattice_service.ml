(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_entry = {
  domain_name : string prop;
  hosted_zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_entry) -> ()

let yojson_of_dns_entry =
  (function
   | {
       domain_name = v_domain_name;
       hosted_zone_id = v_hosted_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hosted_zone_id
         in
         ("hosted_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : dns_entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_entry

[@@@deriving.end]

type aws_vpclattice_service = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  service_identifier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_service) -> ()

let yojson_of_aws_vpclattice_service =
  (function
   | {
       id = v_id;
       name = v_name;
       service_identifier = v_service_identifier;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : aws_vpclattice_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_service

[@@@deriving.end]

let aws_vpclattice_service ?id ?name ?service_identifier ?tags () :
    aws_vpclattice_service =
  { id; name; service_identifier; tags }

type t = {
  tf_name : string;
  arn : string prop;
  auth_type : string prop;
  certificate_arn : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  name : string prop;
  service_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?service_identifier ?tags __id =
  let __type = "aws_vpclattice_service" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       custom_domain_name =
         Prop.computed __type __id "custom_domain_name";
       dns_entry = Prop.computed __type __id "dns_entry";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_service
        (aws_vpclattice_service ?id ?name ?service_identifier ?tags
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?service_identifier ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?service_identifier ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
