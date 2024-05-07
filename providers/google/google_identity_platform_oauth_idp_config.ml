(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_identity_platform_oauth_idp_config = {
  client_id : string prop;
  client_secret : string prop option; [@option]
  display_name : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  issuer : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_identity_platform_oauth_idp_config) -> ()

let yojson_of_google_identity_platform_oauth_idp_config =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       issuer = v_issuer;
       name = v_name;
       project = v_project;
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
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : google_identity_platform_oauth_idp_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_identity_platform_oauth_idp_config

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_oauth_idp_config ?client_secret
    ?display_name ?enabled ?id ?project ?timeouts ~client_id ~issuer
    ~name () : google_identity_platform_oauth_idp_config =
  {
    client_id;
    client_secret;
    display_name;
    enabled;
    id;
    issuer;
    name;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  project : string prop;
}

let make ?client_secret ?display_name ?enabled ?id ?project ?timeouts
    ~client_id ~issuer ~name __id =
  let __type = "google_identity_platform_oauth_idp_config" in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_oauth_idp_config
        (google_identity_platform_oauth_idp_config ?client_secret
           ?display_name ?enabled ?id ?project ?timeouts ~client_id
           ~issuer ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_secret ?display_name ?enabled ?id
    ?project ?timeouts ~client_id ~issuer ~name __id =
  let (r : _ Tf_core.resource) =
    make ?client_secret ?display_name ?enabled ?id ?project ?timeouts
      ~client_id ~issuer ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
