(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_endpoint = {
  api : string prop option; [@option]
  compute : string prop option; [@option]
  crm : string prop option; [@option]
  iam : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_endpoint) -> ()

let yojson_of_custom_endpoint =
  (function
   | { api = v_api; compute = v_compute; crm = v_crm; iam = v_iam } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_iam with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam", arg in
         bnd :: bnds
     in
     let bnds =
       match v_crm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "crm", arg in
         bnd :: bnds
     in
     let bnds =
       match v_compute with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "compute", arg in
         bnd :: bnds
     in
     let bnds =
       match v_api with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "api", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : custom_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_endpoint

[@@@deriving.end]

type tune = {
  allowed_response_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  audit_non_hmac_request_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  audit_non_hmac_response_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  default_lease_ttl : string prop;
  listing_visibility : string prop;
  max_lease_ttl : string prop;
  passthrough_request_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  token_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tune) -> ()

let yojson_of_tune =
  (function
   | {
       allowed_response_headers = v_allowed_response_headers;
       audit_non_hmac_request_keys = v_audit_non_hmac_request_keys;
       audit_non_hmac_response_keys = v_audit_non_hmac_response_keys;
       default_lease_ttl = v_default_lease_ttl;
       listing_visibility = v_listing_visibility;
       max_lease_ttl = v_max_lease_ttl;
       passthrough_request_headers = v_passthrough_request_headers;
       token_type = v_token_type;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_token_type in
       ("token_type", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_passthrough_request_headers then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_passthrough_request_headers in
         let bnd = "passthrough_request_headers", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_max_lease_ttl in
       ("max_lease_ttl", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_listing_visibility in
       ("listing_visibility", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_default_lease_ttl in
       ("default_lease_ttl", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_audit_non_hmac_response_keys then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_audit_non_hmac_response_keys in
         let bnd = "audit_non_hmac_response_keys", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_audit_non_hmac_request_keys then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_audit_non_hmac_request_keys in
         let bnd = "audit_non_hmac_request_keys", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_allowed_response_headers then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_allowed_response_headers in
         let bnd = "allowed_response_headers", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : tune -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tune

[@@@deriving.end]

type vault_gcp_auth_backend = {
  client_email : string prop option; [@option]
  client_id : string prop option; [@option]
  credentials : string prop option; [@option]
  description : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_audience : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  identity_token_ttl : float prop option; [@option]
  local : bool prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  private_key_id : string prop option; [@option]
  project_id : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_email : string prop option; [@option]
  tune : tune list option; [@option]
  custom_endpoint : custom_endpoint list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_gcp_auth_backend) -> ()

let yojson_of_vault_gcp_auth_backend =
  (function
   | {
       client_email = v_client_email;
       client_id = v_client_id;
       credentials = v_credentials;
       description = v_description;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_remount = v_disable_remount;
       id = v_id;
       identity_token_audience = v_identity_token_audience;
       identity_token_key = v_identity_token_key;
       identity_token_ttl = v_identity_token_ttl;
       local = v_local;
       namespace = v_namespace;
       path = v_path;
       private_key_id = v_private_key_id;
       project_id = v_project_id;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_email = v_service_account_email;
       tune = v_tune;
       custom_endpoint = v_custom_endpoint;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_custom_endpoint then bnds
       else (
         let arg = (yojson_of_list yojson_of_custom_endpoint) v_custom_endpoint in
         let bnd = "custom_endpoint", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_tune with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list yojson_of_tune v in
         let bnd = "tune", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_email with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_email", arg in
         bnd :: bnds
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
       match v_project_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "project_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_private_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
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
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
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
       match v_identity_token_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_key", arg in
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
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
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
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     let bnds =
       match v_credentials with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "credentials", arg in
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
       match v_client_email with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_email", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_gcp_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_gcp_auth_backend

[@@@deriving.end]

let custom_endpoint ?api ?compute ?crm ?iam () = ({ api; compute; crm; iam } : custom_endpoint)

let vault_gcp_auth_backend ?client_email ?client_id ?credentials ?description ?disable_automated_rotation
  ?disable_remount ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?namespace ?path
  ?private_key_id ?project_id ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email ?tune
  ?(custom_endpoint = []) () =
  ({
     client_email;
     client_id;
     credentials;
     description;
     disable_automated_rotation;
     disable_remount;
     id;
     identity_token_audience;
     identity_token_key;
     identity_token_ttl;
     local;
     namespace;
     path;
     private_key_id;
     project_id;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_email;
     tune;
     custom_endpoint;
   }
    : vault_gcp_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  client_email : string prop;
  client_id : string prop;
  credentials : string prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  namespace : string prop;
  path : string prop;
  private_key_id : string prop;
  project_id : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  service_account_email : string prop;
  tune : tune list prop;
}

let make ?client_email ?client_id ?credentials ?description ?disable_automated_rotation ?disable_remount ?id
  ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?namespace ?path ?private_key_id ?project_id
  ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email ?tune ?(custom_endpoint = []) __id =
  let __type = "vault_gcp_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       client_email = Prop.computed __type __id "client_email";
       client_id = Prop.computed __type __id "client_id";
       credentials = Prop.computed __type __id "credentials";
       description = Prop.computed __type __id "description";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       identity_token_audience = Prop.computed __type __id "identity_token_audience";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       identity_token_ttl = Prop.computed __type __id "identity_token_ttl";
       local = Prop.computed __type __id "local";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       private_key_id = Prop.computed __type __id "private_key_id";
       project_id = Prop.computed __type __id "project_id";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       service_account_email = Prop.computed __type __id "service_account_email";
       tune = Prop.computed __type __id "tune";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_gcp_auth_backend
        (vault_gcp_auth_backend ?client_email ?client_id ?credentials ?description ?disable_automated_rotation
           ?disable_remount ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?namespace ?path
           ?private_key_id ?project_id ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email ?tune
           ~custom_endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?client_email ?client_id ?credentials ?description ?disable_automated_rotation ?disable_remount
  ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?namespace ?path ?private_key_id
  ?project_id ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email ?tune ?(custom_endpoint = [])
  __id =
  let (r : _ Tf_core.resource) =
    make ?client_email ?client_id ?credentials ?description ?disable_automated_rotation ?disable_remount ?id
      ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?namespace ?path ?private_key_id
      ?project_id ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email ?tune ~custom_endpoint
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
