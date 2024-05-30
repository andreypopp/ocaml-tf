(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_network_zone = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_network_zone) -> ()

let yojson_of_okta_network_zone =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : okta_network_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_network_zone

[@@@deriving.end]

let okta_network_zone ?id ?name () : okta_network_zone = { id; name }

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

let make ?id ?name __id =
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
      yojson_of_okta_network_zone (okta_network_zone ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
