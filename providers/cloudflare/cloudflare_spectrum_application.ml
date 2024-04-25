(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns = { name : string prop; type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : dns) -> ()

let yojson_of_dns =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns

[@@@deriving.end]

type edge_ips = {
  connectivity : string prop option; [@option]
  ips : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : edge_ips) -> ()

let yojson_of_edge_ips =
  (function
   | { connectivity = v_connectivity; ips = v_ips; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connectivity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connectivity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : edge_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_edge_ips

[@@@deriving.end]

type origin_dns = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_dns) -> ()

let yojson_of_origin_dns =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : origin_dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_dns

[@@@deriving.end]

type origin_port_range = {
  end_ : float prop; [@key "end"]
  start : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_port_range) -> ()

let yojson_of_origin_port_range =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : origin_port_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_port_range

[@@@deriving.end]

type cloudflare_spectrum_application = {
  argo_smart_routing : bool prop option; [@option]
  id : string prop option; [@option]
  ip_firewall : bool prop option; [@option]
  origin_direct : string prop list option; [@option]
  origin_port : float prop option; [@option]
  protocol : string prop;
  proxy_protocol : string prop option; [@option]
  tls : string prop option; [@option]
  traffic_type : string prop option; [@option]
  zone_id : string prop;
  dns : dns list;
  edge_ips : edge_ips list;
  origin_dns : origin_dns list;
  origin_port_range : origin_port_range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_spectrum_application) -> ()

let yojson_of_cloudflare_spectrum_application =
  (function
   | {
       argo_smart_routing = v_argo_smart_routing;
       id = v_id;
       ip_firewall = v_ip_firewall;
       origin_direct = v_origin_direct;
       origin_port = v_origin_port;
       protocol = v_protocol;
       proxy_protocol = v_proxy_protocol;
       tls = v_tls;
       traffic_type = v_traffic_type;
       zone_id = v_zone_id;
       dns = v_dns;
       edge_ips = v_edge_ips;
       origin_dns = v_origin_dns;
       origin_port_range = v_origin_port_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_port_range
             v_origin_port_range
         in
         ("origin_port_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_dns v_origin_dns
         in
         ("origin_dns", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_edge_ips v_edge_ips in
         ("edge_ips", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_dns v_dns in
         ("dns", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_traffic_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "traffic_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_origin_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "origin_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_direct with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "origin_direct", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_firewall with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_firewall", arg in
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
         match v_argo_smart_routing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "argo_smart_routing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_spectrum_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_spectrum_application

[@@@deriving.end]

let dns ~name ~type_ () : dns = { name; type_ }

let edge_ips ?connectivity ?ips ~type_ () : edge_ips =
  { connectivity; ips; type_ }

let origin_dns ~name () : origin_dns = { name }

let origin_port_range ~end_ ~start () : origin_port_range =
  { end_; start }

let cloudflare_spectrum_application ?argo_smart_routing ?id
    ?ip_firewall ?origin_direct ?origin_port ?proxy_protocol ?tls
    ?traffic_type ?(edge_ips = []) ?(origin_dns = [])
    ?(origin_port_range = []) ~protocol ~zone_id ~dns () :
    cloudflare_spectrum_application =
  {
    argo_smart_routing;
    id;
    ip_firewall;
    origin_direct;
    origin_port;
    protocol;
    proxy_protocol;
    tls;
    traffic_type;
    zone_id;
    dns;
    edge_ips;
    origin_dns;
    origin_port_range;
  }

type t = {
  argo_smart_routing : bool prop;
  id : string prop;
  ip_firewall : bool prop;
  origin_direct : string list prop;
  origin_port : float prop;
  protocol : string prop;
  proxy_protocol : string prop;
  tls : string prop;
  traffic_type : string prop;
  zone_id : string prop;
}

let make ?argo_smart_routing ?id ?ip_firewall ?origin_direct
    ?origin_port ?proxy_protocol ?tls ?traffic_type ?(edge_ips = [])
    ?(origin_dns = []) ?(origin_port_range = []) ~protocol ~zone_id
    ~dns __id =
  let __type = "cloudflare_spectrum_application" in
  let __attrs =
    ({
       argo_smart_routing =
         Prop.computed __type __id "argo_smart_routing";
       id = Prop.computed __type __id "id";
       ip_firewall = Prop.computed __type __id "ip_firewall";
       origin_direct = Prop.computed __type __id "origin_direct";
       origin_port = Prop.computed __type __id "origin_port";
       protocol = Prop.computed __type __id "protocol";
       proxy_protocol = Prop.computed __type __id "proxy_protocol";
       tls = Prop.computed __type __id "tls";
       traffic_type = Prop.computed __type __id "traffic_type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_spectrum_application
        (cloudflare_spectrum_application ?argo_smart_routing ?id
           ?ip_firewall ?origin_direct ?origin_port ?proxy_protocol
           ?tls ?traffic_type ~edge_ips ~origin_dns
           ~origin_port_range ~protocol ~zone_id ~dns ());
    attrs = __attrs;
  }

let register ?tf_module ?argo_smart_routing ?id ?ip_firewall
    ?origin_direct ?origin_port ?proxy_protocol ?tls ?traffic_type
    ?(edge_ips = []) ?(origin_dns = []) ?(origin_port_range = [])
    ~protocol ~zone_id ~dns __id =
  let (r : _ Tf_core.resource) =
    make ?argo_smart_routing ?id ?ip_firewall ?origin_direct
      ?origin_port ?proxy_protocol ?tls ?traffic_type ~edge_ips
      ~origin_dns ~origin_port_range ~protocol ~zone_id ~dns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
