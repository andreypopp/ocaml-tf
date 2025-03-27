(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_public_keys = {
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_public_keys) -> ()

let yojson_of_vault_identity_oidc_public_keys =
  (function
   | { id = v_id; name = v_name; namespace = v_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
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
    : vault_identity_oidc_public_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_public_keys

[@@@deriving.end]

let vault_identity_oidc_public_keys ?id ?namespace ~name () =
  ({ id; name; namespace } : vault_identity_oidc_public_keys)

type t = {
  tf_name : string;
  id : string prop;
  keys : string Tf_core.assoc list prop;
  name : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~name __id =
  let __type = "vault_identity_oidc_public_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       keys = Prop.computed __type __id "keys";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_identity_oidc_public_keys (vault_identity_oidc_public_keys ?id ?namespace ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
