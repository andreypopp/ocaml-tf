(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_approle_auth_backend_role_id = {
  backend : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  role_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_approle_auth_backend_role_id) -> ()

let yojson_of_vault_approle_auth_backend_role_id =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; role_name = v_role_name } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
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
    : vault_approle_auth_backend_role_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_approle_auth_backend_role_id

[@@@deriving.end]

let vault_approle_auth_backend_role_id ?backend ?id ?namespace ~role_name () =
  ({ backend; id; namespace; role_name } : vault_approle_auth_backend_role_id)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  role_id : string prop;
  role_name : string prop;
}

let make ?backend ?id ?namespace ~role_name __id =
  let __type = "vault_approle_auth_backend_role_id" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       role_id = Prop.computed __type __id "role_id";
       role_name = Prop.computed __type __id "role_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_approle_auth_backend_role_id
        (vault_approle_auth_backend_role_id ?backend ?id ?namespace ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?namespace ~role_name __id =
  let (r : _ Tf_core.resource) = make ?backend ?id ?namespace ~role_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
