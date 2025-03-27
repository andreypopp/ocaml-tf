(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ad_secret_role = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  service_account_name : string prop;
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ad_secret_role) -> ()

let yojson_of_vault_ad_secret_role =
  (function
   | {
       backend = v_backend;
       id = v_id;
       namespace = v_namespace;
       role = v_role;
       service_account_name = v_service_account_name;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_service_account_name in
       ("service_account_name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_ad_secret_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ad_secret_role

[@@@deriving.end]

let vault_ad_secret_role ?id ?namespace ?ttl ~backend ~role ~service_account_name () =
  ({ backend; id; namespace; role; service_account_name; ttl } : vault_ad_secret_role)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  last_vault_rotation : string prop;
  namespace : string prop;
  password_last_set : string prop;
  role : string prop;
  service_account_name : string prop;
  ttl : float prop;
}

let make ?id ?namespace ?ttl ~backend ~role ~service_account_name __id =
  let __type = "vault_ad_secret_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       last_vault_rotation = Prop.computed __type __id "last_vault_rotation";
       namespace = Prop.computed __type __id "namespace";
       password_last_set = Prop.computed __type __id "password_last_set";
       role = Prop.computed __type __id "role";
       service_account_name = Prop.computed __type __id "service_account_name";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ad_secret_role (vault_ad_secret_role ?id ?namespace ?ttl ~backend ~role ~service_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?ttl ~backend ~role ~service_account_name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?ttl ~backend ~role ~service_account_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
