(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_client_creds = {
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_client_creds) -> ()

let yojson_of_vault_identity_oidc_client_creds =
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
    : vault_identity_oidc_client_creds -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_client_creds

[@@@deriving.end]

let vault_identity_oidc_client_creds ?id ?namespace ~name () =
  ({ id; name; namespace } : vault_identity_oidc_client_creds)

type t = {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~name __id =
  let __type = "vault_identity_oidc_client_creds" in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_identity_oidc_client_creds (vault_identity_oidc_client_creds ?id ?namespace ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
