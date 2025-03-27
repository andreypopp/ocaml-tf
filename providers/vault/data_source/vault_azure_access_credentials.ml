(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_azure_access_credentials = {
  backend : string prop;
  environment : string prop option; [@option]
  id : string prop option; [@option]
  max_cred_validation_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  num_seconds_between_tests : float prop option; [@option]
  num_sequential_successes : float prop option; [@option]
  role : string prop;
  subscription_id : string prop option; [@option]
  tenant_id : string prop option; [@option]
  validate_creds : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_azure_access_credentials) -> ()

let yojson_of_vault_azure_access_credentials =
  (function
   | {
       backend = v_backend;
       environment = v_environment;
       id = v_id;
       max_cred_validation_seconds = v_max_cred_validation_seconds;
       namespace = v_namespace;
       num_seconds_between_tests = v_num_seconds_between_tests;
       num_sequential_successes = v_num_sequential_successes;
       role = v_role;
       subscription_id = v_subscription_id;
       tenant_id = v_tenant_id;
       validate_creds = v_validate_creds;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_validate_creds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "validate_creds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tenant_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tenant_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_subscription_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "subscription_id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       match v_num_sequential_successes with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "num_sequential_successes", arg in
         bnd :: bnds
     in
     let bnds =
       match v_num_seconds_between_tests with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "num_seconds_between_tests", arg in
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
       match v_max_cred_validation_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_cred_validation_seconds", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_azure_access_credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_azure_access_credentials

[@@@deriving.end]

let vault_azure_access_credentials ?environment ?id ?max_cred_validation_seconds ?namespace ?num_seconds_between_tests
  ?num_sequential_successes ?subscription_id ?tenant_id ?validate_creds ~backend ~role () =
  ({
     backend;
     environment;
     id;
     max_cred_validation_seconds;
     namespace;
     num_seconds_between_tests;
     num_sequential_successes;
     role;
     subscription_id;
     tenant_id;
     validate_creds;
   }
    : vault_azure_access_credentials)

type t = {
  tf_name : string;
  backend : string prop;
  client_id : string prop;
  client_secret : string prop;
  environment : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  lease_start_time : string prop;
  max_cred_validation_seconds : float prop;
  namespace : string prop;
  num_seconds_between_tests : float prop;
  num_sequential_successes : float prop;
  role : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
  validate_creds : bool prop;
}

let make ?environment ?id ?max_cred_validation_seconds ?namespace ?num_seconds_between_tests ?num_sequential_successes
  ?subscription_id ?tenant_id ?validate_creds ~backend ~role __id =
  let __type = "vault_azure_access_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_id = Prop.computed __type __id "lease_id";
       lease_renewable = Prop.computed __type __id "lease_renewable";
       lease_start_time = Prop.computed __type __id "lease_start_time";
       max_cred_validation_seconds = Prop.computed __type __id "max_cred_validation_seconds";
       namespace = Prop.computed __type __id "namespace";
       num_seconds_between_tests = Prop.computed __type __id "num_seconds_between_tests";
       num_sequential_successes = Prop.computed __type __id "num_sequential_successes";
       role = Prop.computed __type __id "role";
       subscription_id = Prop.computed __type __id "subscription_id";
       tenant_id = Prop.computed __type __id "tenant_id";
       validate_creds = Prop.computed __type __id "validate_creds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_azure_access_credentials
        (vault_azure_access_credentials ?environment ?id ?max_cred_validation_seconds ?namespace
           ?num_seconds_between_tests ?num_sequential_successes ?subscription_id ?tenant_id ?validate_creds ~backend
           ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?environment ?id ?max_cred_validation_seconds ?namespace ?num_seconds_between_tests
  ?num_sequential_successes ?subscription_id ?tenant_id ?validate_creds ~backend ~role __id =
  let (r : _ Tf_core.resource) =
    make ?environment ?id ?max_cred_validation_seconds ?namespace ?num_seconds_between_tests ?num_sequential_successes
      ?subscription_id ?tenant_id ?validate_creds ~backend ~role __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
