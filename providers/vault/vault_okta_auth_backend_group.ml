(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_okta_auth_backend_group = {
  group_name : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  policies : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_okta_auth_backend_group) -> ()

let yojson_of_vault_okta_auth_backend_group =
  (function
   | { group_name = v_group_name; id = v_id; namespace = v_namespace; path = v_path; policies = v_policies } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policies", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_group_name in
       ("group_name", arg) :: bnds
     in
     `Assoc bnds
    : vault_okta_auth_backend_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_okta_auth_backend_group

[@@@deriving.end]

let vault_okta_auth_backend_group ?id ?namespace ?policies ~group_name ~path () =
  ({ group_name; id; namespace; path; policies } : vault_okta_auth_backend_group)

type t = {
  tf_name : string;
  group_name : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  policies : string list prop;
}

let make ?id ?namespace ?policies ~group_name ~path __id =
  let __type = "vault_okta_auth_backend_group" in
  let __attrs =
    ({
       tf_name = __id;
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       policies = Prop.computed __type __id "policies";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_okta_auth_backend_group
        (vault_okta_auth_backend_group ?id ?namespace ?policies ~group_name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?policies ~group_name ~path __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?policies ~group_name ~path __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
