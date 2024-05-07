(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type tls = {
  cdn_frontdoor_secret_id : string prop;
  certificate_type : string prop;
  minimum_tls_version : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_minimum_tls_version
         in
         ("minimum_tls_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_type
         in
         ("certificate_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_secret_id
         in
         ("cdn_frontdoor_secret_id", arg) :: bnds
       in
       `Assoc bnds
    : tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls

[@@@deriving.end]

type azurerm_cdn_frontdoor_custom_domain = {
  id : string prop option; [@option]
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_custom_domain) -> ()

let yojson_of_azurerm_cdn_frontdoor_custom_domain =
  (function
   | {
       id = v_id;
       name = v_name;
       profile_name = v_profile_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_name in
         ("profile_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_cdn_frontdoor_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_custom_domain

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cdn_frontdoor_custom_domain ?id ?timeouts ~name
    ~profile_name ~resource_group_name () :
    azurerm_cdn_frontdoor_custom_domain =
  { id; name; profile_name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  dns_zone_id : string prop;
  expiration_date : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  tls : tls list prop;
  validation_token : string prop;
}

let make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
    =
  let __type = "azurerm_cdn_frontdoor_custom_domain" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       dns_zone_id = Prop.computed __type __id "dns_zone_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       profile_name = Prop.computed __type __id "profile_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tls = Prop.computed __type __id "tls";
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
        (azurerm_cdn_frontdoor_custom_domain ?id ?timeouts ~name
           ~profile_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~profile_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
