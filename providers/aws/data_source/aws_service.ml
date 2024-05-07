(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_service = {
  dns_name : string prop option; [@option]
  id : string prop option; [@option]
  region : string prop option; [@option]
  reverse_dns_name : string prop option; [@option]
  reverse_dns_prefix : string prop option; [@option]
  service_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_service) -> ()

let yojson_of_aws_service =
  (function
   | {
       dns_name = v_dns_name;
       id = v_id;
       region = v_region;
       reverse_dns_name = v_reverse_dns_name;
       reverse_dns_prefix = v_reverse_dns_prefix;
       service_id = v_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reverse_dns_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reverse_dns_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reverse_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reverse_dns_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_service

[@@@deriving.end]

let aws_service ?dns_name ?id ?region ?reverse_dns_name
    ?reverse_dns_prefix ?service_id () : aws_service =
  {
    dns_name;
    id;
    region;
    reverse_dns_name;
    reverse_dns_prefix;
    service_id;
  }

type t = {
  tf_name : string;
  dns_name : string prop;
  id : string prop;
  partition : string prop;
  region : string prop;
  reverse_dns_name : string prop;
  reverse_dns_prefix : string prop;
  service_id : string prop;
  supported : bool prop;
}

let make ?dns_name ?id ?region ?reverse_dns_name ?reverse_dns_prefix
    ?service_id __id =
  let __type = "aws_service" in
  let __attrs =
    ({
       tf_name = __id;
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       partition = Prop.computed __type __id "partition";
       region = Prop.computed __type __id "region";
       reverse_dns_name =
         Prop.computed __type __id "reverse_dns_name";
       reverse_dns_prefix =
         Prop.computed __type __id "reverse_dns_prefix";
       service_id = Prop.computed __type __id "service_id";
       supported = Prop.computed __type __id "supported";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service
        (aws_service ?dns_name ?id ?region ?reverse_dns_name
           ?reverse_dns_prefix ?service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_name ?id ?region ?reverse_dns_name
    ?reverse_dns_prefix ?service_id __id =
  let (r : _ Tf_core.resource) =
    make ?dns_name ?id ?region ?reverse_dns_name ?reverse_dns_prefix
      ?service_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
