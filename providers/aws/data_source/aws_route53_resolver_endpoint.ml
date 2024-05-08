(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_route53_resolver_endpoint = {
  id : string prop option; [@option]
  resolver_endpoint_id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_endpoint) -> ()

let yojson_of_aws_route53_resolver_endpoint =
  (function
   | {
       id = v_id;
       resolver_endpoint_id = v_resolver_endpoint_id;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resolver_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_endpoint_id", arg in
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
    : aws_route53_resolver_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_endpoint

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_route53_resolver_endpoint ?id ?resolver_endpoint_id ~filter
    () : aws_route53_resolver_endpoint =
  { id; resolver_endpoint_id; filter }

type t = {
  tf_name : string;
  arn : string prop;
  direction : string prop;
  id : string prop;
  ip_addresses : string list prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_id : string prop;
  resolver_endpoint_type : string prop;
  status : string prop;
  vpc_id : string prop;
}

let make ?id ?resolver_endpoint_id ~filter __id =
  let __type = "aws_route53_resolver_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       direction = Prop.computed __type __id "direction";
       id = Prop.computed __type __id "id";
       ip_addresses = Prop.computed __type __id "ip_addresses";
       name = Prop.computed __type __id "name";
       protocols = Prop.computed __type __id "protocols";
       resolver_endpoint_id =
         Prop.computed __type __id "resolver_endpoint_id";
       resolver_endpoint_type =
         Prop.computed __type __id "resolver_endpoint_type";
       status = Prop.computed __type __id "status";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_endpoint
        (aws_route53_resolver_endpoint ?id ?resolver_endpoint_id
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resolver_endpoint_id ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resolver_endpoint_id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
