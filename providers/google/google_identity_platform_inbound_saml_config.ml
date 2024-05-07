(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type idp_config__idp_certificates = {
  x509_certificate : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : idp_config__idp_certificates) -> ()

let yojson_of_idp_config__idp_certificates =
  (function
   | { x509_certificate = v_x509_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_x509_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "x509_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : idp_config__idp_certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_idp_config__idp_certificates

[@@@deriving.end]

type idp_config = {
  idp_entity_id : string prop;
  sign_request : bool prop option; [@option]
  sso_url : string prop;
  idp_certificates : idp_config__idp_certificates list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : idp_config) -> ()

let yojson_of_idp_config =
  (function
   | {
       idp_entity_id = v_idp_entity_id;
       sign_request = v_sign_request;
       sso_url = v_sso_url;
       idp_certificates = v_idp_certificates;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_idp_config__idp_certificates
             v_idp_certificates
         in
         ("idp_certificates", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sso_url in
         ("sso_url", arg) :: bnds
       in
       let bnds =
         match v_sign_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sign_request", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_idp_entity_id in
         ("idp_entity_id", arg) :: bnds
       in
       `Assoc bnds
    : idp_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_idp_config

[@@@deriving.end]

type sp_config__sp_certificates = { x509_certificate : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sp_config__sp_certificates) -> ()

let yojson_of_sp_config__sp_certificates =
  (function
   | { x509_certificate = v_x509_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_x509_certificate
         in
         ("x509_certificate", arg) :: bnds
       in
       `Assoc bnds
    : sp_config__sp_certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sp_config__sp_certificates

[@@@deriving.end]

type sp_config = {
  callback_uri : string prop option; [@option]
  sp_entity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sp_config) -> ()

let yojson_of_sp_config =
  (function
   | { callback_uri = v_callback_uri; sp_entity_id = v_sp_entity_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sp_entity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sp_entity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_callback_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "callback_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sp_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sp_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_identity_platform_inbound_saml_config = {
  display_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  idp_config : idp_config list;
  sp_config : sp_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_identity_platform_inbound_saml_config) -> ()

let yojson_of_google_identity_platform_inbound_saml_config =
  (function
   | {
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       project = v_project;
       idp_config = v_idp_config;
       sp_config = v_sp_config;
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
         let arg = yojson_of_list yojson_of_sp_config v_sp_config in
         ("sp_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_idp_config v_idp_config
         in
         ("idp_config", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_identity_platform_inbound_saml_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_identity_platform_inbound_saml_config

[@@@deriving.end]

let idp_config__idp_certificates ?x509_certificate () :
    idp_config__idp_certificates =
  { x509_certificate }

let idp_config ?sign_request ~idp_entity_id ~sso_url
    ~idp_certificates () : idp_config =
  { idp_entity_id; sign_request; sso_url; idp_certificates }

let sp_config ?callback_uri ?sp_entity_id () : sp_config =
  { callback_uri; sp_entity_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_inbound_saml_config ?enabled ?id
    ?project ?timeouts ~display_name ~name ~idp_config ~sp_config ()
    : google_identity_platform_inbound_saml_config =
  {
    display_name;
    enabled;
    id;
    name;
    project;
    idp_config;
    sp_config;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?enabled ?id ?project ?timeouts ~display_name ~name
    ~idp_config ~sp_config __id =
  let __type = "google_identity_platform_inbound_saml_config" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_inbound_saml_config
        (google_identity_platform_inbound_saml_config ?enabled ?id
           ?project ?timeouts ~display_name ~name ~idp_config
           ~sp_config ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?project ?timeouts ~display_name
    ~name ~idp_config ~sp_config __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?project ?timeouts ~display_name ~name
      ~idp_config ~sp_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
