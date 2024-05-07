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

type google_identity_platform_default_supported_idp_config = {
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  idp_id : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_identity_platform_default_supported_idp_config) ->
  ()

let yojson_of_google_identity_platform_default_supported_idp_config =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       enabled = v_enabled;
       id = v_id;
       idp_id = v_idp_id;
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
         let arg = yojson_of_prop yojson_of_string v_idp_id in
         ("idp_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : google_identity_platform_default_supported_idp_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_identity_platform_default_supported_idp_config

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_default_supported_idp_config ?enabled
    ?id ?project ?timeouts ~client_id ~client_secret ~idp_id () :
    google_identity_platform_default_supported_idp_config =
  {
    client_id;
    client_secret;
    enabled;
    id;
    idp_id;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
  idp_id : string prop;
  name : string prop;
  project : string prop;
}

let make ?enabled ?id ?project ?timeouts ~client_id ~client_secret
    ~idp_id __id =
  let __type =
    "google_identity_platform_default_supported_idp_config"
  in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       idp_id = Prop.computed __type __id "idp_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_default_supported_idp_config
        (google_identity_platform_default_supported_idp_config
           ?enabled ?id ?project ?timeouts ~client_id ~client_secret
           ~idp_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?project ?timeouts ~client_id
    ~client_secret ~idp_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?project ?timeouts ~client_id ~client_secret
      ~idp_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
