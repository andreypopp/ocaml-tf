(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_azure_auth_backend_config = {
  backend : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  environment : string prop option; [@option]
  id : string prop option; [@option]
  identity_token_audience : string prop option; [@option]
  identity_token_ttl : float prop option; [@option]
  namespace : string prop option; [@option]
  resource : string prop;
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_azure_auth_backend_config) -> ()

let yojson_of_vault_azure_auth_backend_config =
  (function
   | {
       backend = v_backend;
       client_id = v_client_id;
       client_secret = v_client_secret;
       disable_automated_rotation = v_disable_automated_rotation;
       environment = v_environment;
       id = v_id;
       identity_token_audience = v_identity_token_audience;
       identity_token_ttl = v_identity_token_ttl;
       namespace = v_namespace;
       resource = v_resource;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       tenant_id = v_tenant_id;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_tenant_id in
       ("tenant_id", arg) :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_resource in
       ("resource", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "identity_token_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_audience with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_audience", arg in
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
     let bnds =
       match v_environment with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "environment", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
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
       match v_client_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_azure_auth_backend_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_azure_auth_backend_config

[@@@deriving.end]

let vault_azure_auth_backend_config ?backend ?client_id ?client_secret ?disable_automated_rotation ?environment ?id
  ?identity_token_audience ?identity_token_ttl ?namespace ?rotation_period ?rotation_schedule ?rotation_window ~resource
  ~tenant_id () =
  ({
     backend;
     client_id;
     client_secret;
     disable_automated_rotation;
     environment;
     id;
     identity_token_audience;
     identity_token_ttl;
     namespace;
     resource;
     rotation_period;
     rotation_schedule;
     rotation_window;
     tenant_id;
   }
    : vault_azure_auth_backend_config)

type t = {
  tf_name : string;
  backend : string prop;
  client_id : string prop;
  client_secret : string prop;
  disable_automated_rotation : bool prop;
  environment : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_ttl : float prop;
  namespace : string prop;
  resource : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  tenant_id : string prop;
}

let make ?backend ?client_id ?client_secret ?disable_automated_rotation ?environment ?id ?identity_token_audience
  ?identity_token_ttl ?namespace ?rotation_period ?rotation_schedule ?rotation_window ~resource ~tenant_id __id =
  let __type = "vault_azure_auth_backend_config" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       identity_token_audience = Prop.computed __type __id "identity_token_audience";
       identity_token_ttl = Prop.computed __type __id "identity_token_ttl";
       namespace = Prop.computed __type __id "namespace";
       resource = Prop.computed __type __id "resource";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_azure_auth_backend_config
        (vault_azure_auth_backend_config ?backend ?client_id ?client_secret ?disable_automated_rotation ?environment ?id
           ?identity_token_audience ?identity_token_ttl ?namespace ?rotation_period ?rotation_schedule ?rotation_window
           ~resource ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?client_id ?client_secret ?disable_automated_rotation ?environment ?id
  ?identity_token_audience ?identity_token_ttl ?namespace ?rotation_period ?rotation_schedule ?rotation_window ~resource
  ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?client_id ?client_secret ?disable_automated_rotation ?environment ?id ?identity_token_audience
      ?identity_token_ttl ?namespace ?rotation_period ?rotation_schedule ?rotation_window ~resource ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
