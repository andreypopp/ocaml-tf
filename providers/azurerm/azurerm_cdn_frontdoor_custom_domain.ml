(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type tls = {
  cdn_frontdoor_secret_id : string prop option; [@option]
  certificate_type : string prop option; [@option]
  minimum_tls_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls) -> ()

let yojson_of_tls =
  (function
   | {
       cdn_frontdoor_secret_id = v_cdn_frontdoor_secret_id;
       certificate_type = v_certificate_type;
       minimum_tls_version = v_minimum_tls_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_frontdoor_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdn_frontdoor_secret_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls

[@@@deriving.end]

type azurerm_cdn_frontdoor_custom_domain = {
  cdn_frontdoor_profile_id : string prop;
  dns_zone_id : string prop option; [@option]
  host_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
  tls : tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_custom_domain) -> ()

let yojson_of_azurerm_cdn_frontdoor_custom_domain =
  (function
   | {
       cdn_frontdoor_profile_id = v_cdn_frontdoor_profile_id;
       dns_zone_id = v_dns_zone_id;
       host_name = v_host_name;
       id = v_id;
       name = v_name;
       timeouts = v_timeouts;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_tls v_tls in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_dns_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_profile_id
         in
         ("cdn_frontdoor_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_custom_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls ?cdn_frontdoor_secret_id ?certificate_type
    ?minimum_tls_version () : tls =
  { cdn_frontdoor_secret_id; certificate_type; minimum_tls_version }

let azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls () :
    azurerm_cdn_frontdoor_custom_domain =
  {
    cdn_frontdoor_profile_id;
    dns_zone_id;
    host_name;
    id;
    name;
    timeouts;
    tls;
  }

type t = {
  cdn_frontdoor_profile_id : string prop;
  dns_zone_id : string prop;
  expiration_date : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  validation_token : string prop;
}

let make ?dns_zone_id ?id ?timeouts ~cdn_frontdoor_profile_id
    ~host_name ~name ~tls __id =
  let __type = "azurerm_cdn_frontdoor_custom_domain" in
  let __attrs =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       dns_zone_id = Prop.computed __type __id "dns_zone_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       validation_token =
         Prop.computed __type __id "validation_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_custom_domain
        (azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?id
           ?timeouts ~cdn_frontdoor_profile_id ~host_name ~name ~tls
           ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_zone_id ?id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls __id =
  let (r : _ Tf_core.resource) =
    make ?dns_zone_id ?id ?timeouts ~cdn_frontdoor_profile_id
      ~host_name ~name ~tls __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
