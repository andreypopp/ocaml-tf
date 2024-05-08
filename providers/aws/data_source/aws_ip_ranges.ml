(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ip_ranges = {
  id : string prop option; [@option]
  regions : string prop list option; [@option]
  services : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ip_ranges) -> ()

let yojson_of_aws_ip_ranges =
  (function
   | {
       id = v_id;
       regions = v_regions;
       services = v_services;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_services then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_services
           in
           let bnd = "services", arg in
           bnd :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
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
    : aws_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ip_ranges

[@@@deriving.end]

let aws_ip_ranges ?id ?regions ?url ~services () : aws_ip_ranges =
  { id; regions; services; url }

type t = {
  tf_name : string;
  cidr_blocks : string list prop;
  create_date : string prop;
  id : string prop;
  ipv6_cidr_blocks : string list prop;
  regions : string list prop;
  services : string list prop;
  sync_token : float prop;
  url : string prop;
}

let make ?id ?regions ?url ~services __id =
  let __type = "aws_ip_ranges" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       create_date = Prop.computed __type __id "create_date";
       id = Prop.computed __type __id "id";
       ipv6_cidr_blocks =
         Prop.computed __type __id "ipv6_cidr_blocks";
       regions = Prop.computed __type __id "regions";
       services = Prop.computed __type __id "services";
       sync_token = Prop.computed __type __id "sync_token";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ip_ranges
        (aws_ip_ranges ?id ?regions ?url ~services ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?regions ?url ~services __id =
  let (r : _ Tf_core.resource) =
    make ?id ?regions ?url ~services __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
