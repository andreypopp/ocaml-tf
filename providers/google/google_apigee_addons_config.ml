(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addons_config__advanced_api_ops_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__advanced_api_ops_config) -> ()

let yojson_of_addons_config__advanced_api_ops_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addons_config__advanced_api_ops_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__advanced_api_ops_config

[@@@deriving.end]

type addons_config__api_security_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__api_security_config) -> ()

let yojson_of_addons_config__api_security_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addons_config__api_security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__api_security_config

[@@@deriving.end]

type addons_config__connectors_platform_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__connectors_platform_config) -> ()

let yojson_of_addons_config__connectors_platform_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addons_config__connectors_platform_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__connectors_platform_config

[@@@deriving.end]

type addons_config__integration_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__integration_config) -> ()

let yojson_of_addons_config__integration_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addons_config__integration_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__integration_config

[@@@deriving.end]

type addons_config__monetization_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__monetization_config) -> ()

let yojson_of_addons_config__monetization_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addons_config__monetization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__monetization_config

[@@@deriving.end]

type addons_config = {
  advanced_api_ops_config :
    addons_config__advanced_api_ops_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  api_security_config : addons_config__api_security_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connectors_platform_config :
    addons_config__connectors_platform_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  integration_config : addons_config__integration_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monetization_config : addons_config__monetization_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config) -> ()

let yojson_of_addons_config =
  (function
   | {
       advanced_api_ops_config = v_advanced_api_ops_config;
       api_security_config = v_api_security_config;
       connectors_platform_config = v_connectors_platform_config;
       integration_config = v_integration_config;
       monetization_config = v_monetization_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monetization_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__monetization_config)
               v_monetization_config
           in
           let bnd = "monetization_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_integration_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__integration_config)
               v_integration_config
           in
           let bnd = "integration_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connectors_platform_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__connectors_platform_config)
               v_connectors_platform_config
           in
           let bnd = "connectors_platform_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_security_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__api_security_config)
               v_api_security_config
           in
           let bnd = "api_security_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_api_ops_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__advanced_api_ops_config)
               v_advanced_api_ops_config
           in
           let bnd = "advanced_api_ops_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : addons_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config

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

type google_apigee_addons_config = {
  id : string prop option; [@option]
  org : string prop;
  addons_config : addons_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_addons_config) -> ()

let yojson_of_google_apigee_addons_config =
  (function
   | {
       id = v_id;
       org = v_org;
       addons_config = v_addons_config;
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
         if Stdlib.( = ) [] v_addons_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_addons_config) v_addons_config
           in
           let bnd = "addons_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org in
         ("org", arg) :: bnds
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
    : google_apigee_addons_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_addons_config

[@@@deriving.end]

let addons_config__advanced_api_ops_config ?enabled () :
    addons_config__advanced_api_ops_config =
  { enabled }

let addons_config__api_security_config ?enabled () :
    addons_config__api_security_config =
  { enabled }

let addons_config__connectors_platform_config ?enabled () :
    addons_config__connectors_platform_config =
  { enabled }

let addons_config__integration_config ?enabled () :
    addons_config__integration_config =
  { enabled }

let addons_config__monetization_config ?enabled () :
    addons_config__monetization_config =
  { enabled }

let addons_config ?(advanced_api_ops_config = [])
    ?(api_security_config = []) ?(connectors_platform_config = [])
    ?(integration_config = []) ?(monetization_config = []) () :
    addons_config =
  {
    advanced_api_ops_config;
    api_security_config;
    connectors_platform_config;
    integration_config;
    monetization_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_addons_config ?id ?(addons_config = []) ?timeouts
    ~org () : google_apigee_addons_config =
  { id; org; addons_config; timeouts }

type t = { tf_name : string; id : string prop; org : string prop }

let make ?id ?(addons_config = []) ?timeouts ~org __id =
  let __type = "google_apigee_addons_config" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       org = Prop.computed __type __id "org";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_addons_config
        (google_apigee_addons_config ?id ~addons_config ?timeouts
           ~org ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(addons_config = []) ?timeouts ~org __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~addons_config ?timeouts ~org __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
