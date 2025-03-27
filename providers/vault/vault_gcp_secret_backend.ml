(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_gcp_secret_backend = {
  credentials : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_audience : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  identity_token_ttl : float prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_email : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_gcp_secret_backend) -> ()

let yojson_of_vault_gcp_secret_backend =
  (function
   | {
       credentials = v_credentials;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_remount = v_disable_remount;
       id = v_id;
       identity_token_audience = v_identity_token_audience;
       identity_token_key = v_identity_token_key;
       identity_token_ttl = v_identity_token_ttl;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       path = v_path;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_email = v_service_account_email;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
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
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
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
     `Assoc bnds
    : vault_gcp_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_gcp_secret_backend

[@@@deriving.end]

let vault_gcp_secret_backend ?credentials ?default_lease_ttl_seconds ?description ?disable_automated_rotation
  ?disable_remount ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds
  ?namespace ?path ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email () =
  ({
     credentials;
     default_lease_ttl_seconds;
     description;
     disable_automated_rotation;
     disable_remount;
     id;
     identity_token_audience;
     identity_token_key;
     identity_token_ttl;
     local;
     max_lease_ttl_seconds;
     namespace;
     path;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_email;
   }
    : vault_gcp_secret_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  credentials : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  service_account_email : string prop;
}

let make ?credentials ?default_lease_ttl_seconds ?description ?disable_automated_rotation ?disable_remount ?id
  ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds ?namespace ?path
  ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email __id =
  let __type = "vault_gcp_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       credentials = Prop.computed __type __id "credentials";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       identity_token_audience = Prop.computed __type __id "identity_token_audience";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       identity_token_ttl = Prop.computed __type __id "identity_token_ttl";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       service_account_email = Prop.computed __type __id "service_account_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_gcp_secret_backend
        (vault_gcp_secret_backend ?credentials ?default_lease_ttl_seconds ?description ?disable_automated_rotation
           ?disable_remount ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local
           ?max_lease_ttl_seconds ?namespace ?path ?rotation_period ?rotation_schedule ?rotation_window
           ?service_account_email ());
    attrs = __attrs;
  }

let register ?tf_module ?credentials ?default_lease_ttl_seconds ?description ?disable_automated_rotation
  ?disable_remount ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds
  ?namespace ?path ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email __id =
  let (r : _ Tf_core.resource) =
    make ?credentials ?default_lease_ttl_seconds ?description ?disable_automated_rotation ?disable_remount ?id
      ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds ?namespace ?path
      ?rotation_period ?rotation_schedule ?rotation_window ?service_account_email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
