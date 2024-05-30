(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_network_zone = {
  asns : string prop list option; [@option]
  dynamic_locations : string prop list option; [@option]
  dynamic_proxy_type : string prop option; [@option]
  gateways : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  proxies : string prop list option; [@option]
  status : string prop option; [@option]
  type_ : string prop; [@key "type"]
  usage : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_network_zone) -> ()

let yojson_of_okta_network_zone =
  (function
   | {
       asns = v_asns;
       dynamic_locations = v_dynamic_locations;
       dynamic_proxy_type = v_dynamic_proxy_type;
       gateways = v_gateways;
       id = v_id;
       name = v_name;
       proxies = v_proxies;
       status = v_status;
       type_ = v_type_;
       usage = v_usage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_usage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_proxies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "proxies", arg in
             bnd :: bnds
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
         match v_gateways with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gateways", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_proxy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dynamic_proxy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dynamic_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "asns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_network_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_network_zone

[@@@deriving.end]

let okta_network_zone ?asns ?dynamic_locations ?dynamic_proxy_type
    ?gateways ?id ?proxies ?status ?usage ~name ~type_ () :
    okta_network_zone =
  {
    asns;
    dynamic_locations;
    dynamic_proxy_type;
    gateways;
    id;
    name;
    proxies;
    status;
    type_;
    usage;
  }

type t = {
  tf_name : string;
  asns : string list prop;
  dynamic_locations : string list prop;
  dynamic_proxy_type : string prop;
  gateways : string list prop;
  id : string prop;
  name : string prop;
  proxies : string list prop;
  status : string prop;
  type_ : string prop;
  usage : string prop;
}

let make ?asns ?dynamic_locations ?dynamic_proxy_type ?gateways ?id
    ?proxies ?status ?usage ~name ~type_ __id =
  let __type = "okta_network_zone" in
  let __attrs =
    ({
       tf_name = __id;
       asns = Prop.computed __type __id "asns";
       dynamic_locations =
         Prop.computed __type __id "dynamic_locations";
       dynamic_proxy_type =
         Prop.computed __type __id "dynamic_proxy_type";
       gateways = Prop.computed __type __id "gateways";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       proxies = Prop.computed __type __id "proxies";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       usage = Prop.computed __type __id "usage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_network_zone
        (okta_network_zone ?asns ?dynamic_locations
           ?dynamic_proxy_type ?gateways ?id ?proxies ?status ?usage
           ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?asns ?dynamic_locations ?dynamic_proxy_type
    ?gateways ?id ?proxies ?status ?usage ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?asns ?dynamic_locations ?dynamic_proxy_type ?gateways ?id
      ?proxies ?status ?usage ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
