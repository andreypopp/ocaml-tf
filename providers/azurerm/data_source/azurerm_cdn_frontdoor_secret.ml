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

type secret__customer_certificate = {
  expiration_date : string prop;
  key_vault_certificate_id : string prop;
  subject_alternative_names : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret__customer_certificate) -> ()

let yojson_of_secret__customer_certificate =
  (function
   | {
       expiration_date = v_expiration_date;
       key_vault_certificate_id = v_key_vault_certificate_id;
       subject_alternative_names = v_subject_alternative_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_certificate_id
         in
         ("key_vault_certificate_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_date
         in
         ("expiration_date", arg) :: bnds
       in
       `Assoc bnds
    : secret__customer_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret__customer_certificate

[@@@deriving.end]

type secret = {
  customer_certificate : secret__customer_certificate list;
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
         let arg =
           yojson_of_list yojson_of_secret__customer_certificate
             v_customer_certificate
         in
         ("customer_certificate", arg) :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type azurerm_cdn_frontdoor_secret = {
  id : string prop option; [@option]
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_secret) -> ()

let yojson_of_azurerm_cdn_frontdoor_secret =
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
    : azurerm_cdn_frontdoor_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_secret

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cdn_frontdoor_secret ?id ?timeouts ~name ~profile_name
    ~resource_group_name () : azurerm_cdn_frontdoor_secret =
  { id; name; profile_name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  secret : secret list prop;
}

let make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
    =
  let __type = "azurerm_cdn_frontdoor_secret" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       profile_name = Prop.computed __type __id "profile_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secret = Prop.computed __type __id "secret";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_secret
        (azurerm_cdn_frontdoor_secret ?id ?timeouts ~name
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
