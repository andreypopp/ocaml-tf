(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secret__customer_certificate = {
  key_vault_certificate_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret__customer_certificate) -> ()

let yojson_of_secret__customer_certificate =
  (function
   | { key_vault_certificate_id = v_key_vault_certificate_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_certificate_id
         in
         ("key_vault_certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : secret__customer_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret__customer_certificate

[@@@deriving.end]

type secret = {
  customer_certificate : secret__customer_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | { customer_certificate = v_customer_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secret__customer_certificate)
               v_customer_certificate
           in
           let bnd = "customer_certificate", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_cdn_frontdoor_secret = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_secret) -> ()

let yojson_of_azurerm_cdn_frontdoor_secret =
  (function
   | {
       cdn_frontdoor_profile_id = v_cdn_frontdoor_profile_id;
       id = v_id;
       name = v_name;
       secret = v_secret;
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
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_profile_id
         in
         ("cdn_frontdoor_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_secret

[@@@deriving.end]

let secret__customer_certificate ~key_vault_certificate_id () :
    secret__customer_certificate =
  { key_vault_certificate_id }

let secret ~customer_certificate () : secret =
  { customer_certificate }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cdn_frontdoor_secret ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~secret () :
    azurerm_cdn_frontdoor_secret =
  { cdn_frontdoor_profile_id; id; name; secret; timeouts }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  cdn_frontdoor_profile_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_profile_id ~name ~secret __id =
  let __type = "azurerm_cdn_frontdoor_secret" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       cdn_frontdoor_profile_name =
         Prop.computed __type __id "cdn_frontdoor_profile_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_secret
        (azurerm_cdn_frontdoor_secret ?id ?timeouts
           ~cdn_frontdoor_profile_id ~name ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~secret __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_profile_id ~name ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
