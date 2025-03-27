(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_approle_auth_backend_login = {
  backend : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  role_id : string prop;
  secret_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_approle_auth_backend_login) -> ()

let yojson_of_vault_approle_auth_backend_login =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; role_id = v_role_id; secret_id = v_secret_id } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_secret_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_id in
       ("role_id", arg) :: bnds
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
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
    : vault_approle_auth_backend_login -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_approle_auth_backend_login

[@@@deriving.end]

let vault_approle_auth_backend_login ?backend ?id ?namespace ?secret_id ~role_id () =
  ({ backend; id; namespace; role_id; secret_id } : vault_approle_auth_backend_login)

type t = {
  tf_name : string;
  accessor : string prop;
  backend : string prop;
  client_token : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_started : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  policies : string list prop;
  renewable : bool prop;
  role_id : string prop;
  secret_id : string prop;
}

let make ?backend ?id ?namespace ?secret_id ~role_id __id =
  let __type = "vault_approle_auth_backend_login" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       backend = Prop.computed __type __id "backend";
       client_token = Prop.computed __type __id "client_token";
       id = Prop.computed __type __id "id";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_started = Prop.computed __type __id "lease_started";
       metadata = Prop.computed __type __id "metadata";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
       renewable = Prop.computed __type __id "renewable";
       role_id = Prop.computed __type __id "role_id";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_approle_auth_backend_login
        (vault_approle_auth_backend_login ?backend ?id ?namespace ?secret_id ~role_id ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?namespace ?secret_id ~role_id __id =
  let (r : _ Tf_core.resource) = make ?backend ?id ?namespace ?secret_id ~role_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
