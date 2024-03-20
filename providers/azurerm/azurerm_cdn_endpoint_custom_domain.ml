(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdn_managed_https = {
  certificate_type : string prop;
  protocol_type : string prop;
  tls_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_managed_https) -> ()

let yojson_of_cdn_managed_https =
  (function
   | {
       certificate_type = v_certificate_type;
       protocol_type = v_protocol_type;
       tls_version = v_tls_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol_type in
         ("protocol_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_type
         in
         ("certificate_type", arg) :: bnds
       in
       `Assoc bnds
    : cdn_managed_https -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_managed_https

[@@@deriving.end]

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

type user_managed_https = {
  key_vault_certificate_id : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  tls_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_managed_https) -> ()

let yojson_of_user_managed_https =
  (function
   | {
       key_vault_certificate_id = v_key_vault_certificate_id;
       key_vault_secret_id = v_key_vault_secret_id;
       tls_version = v_tls_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_managed_https -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_managed_https

[@@@deriving.end]

type azurerm_cdn_endpoint_custom_domain = {
  cdn_endpoint_id : string prop;
  host_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  cdn_managed_https : cdn_managed_https list;
  timeouts : timeouts option;
  user_managed_https : user_managed_https list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_endpoint_custom_domain) -> ()

let yojson_of_azurerm_cdn_endpoint_custom_domain =
  (function
   | {
       cdn_endpoint_id = v_cdn_endpoint_id;
       host_name = v_host_name;
       id = v_id;
       name = v_name;
       cdn_managed_https = v_cdn_managed_https;
       timeouts = v_timeouts;
       user_managed_https = v_user_managed_https;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_user_managed_https
             v_user_managed_https
         in
         ("user_managed_https", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cdn_managed_https
             v_cdn_managed_https
         in
         ("cdn_managed_https", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_cdn_endpoint_id
         in
         ("cdn_endpoint_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_endpoint_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_endpoint_custom_domain

[@@@deriving.end]

let cdn_managed_https ?tls_version ~certificate_type ~protocol_type
    () : cdn_managed_https =
  { certificate_type; protocol_type; tls_version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user_managed_https ?key_vault_certificate_id ?key_vault_secret_id
    ?tls_version () : user_managed_https =
  { key_vault_certificate_id; key_vault_secret_id; tls_version }

let azurerm_cdn_endpoint_custom_domain ?id ?timeouts ~cdn_endpoint_id
    ~host_name ~name ~cdn_managed_https ~user_managed_https () :
    azurerm_cdn_endpoint_custom_domain =
  {
    cdn_endpoint_id;
    host_name;
    id;
    name;
    cdn_managed_https;
    timeouts;
    user_managed_https;
  }

type t = {
  cdn_endpoint_id : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_endpoint_id ~host_name ~name
    ~cdn_managed_https ~user_managed_https __id =
  let __type = "azurerm_cdn_endpoint_custom_domain" in
  let __attrs =
    ({
       cdn_endpoint_id = Prop.computed __type __id "cdn_endpoint_id";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_endpoint_custom_domain
        (azurerm_cdn_endpoint_custom_domain ?id ?timeouts
           ~cdn_endpoint_id ~host_name ~name ~cdn_managed_https
           ~user_managed_https ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_endpoint_id ~host_name
    ~name ~cdn_managed_https ~user_managed_https __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_endpoint_id ~host_name ~name
      ~cdn_managed_https ~user_managed_https __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
