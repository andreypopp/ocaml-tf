(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_client = {
  access_token_ttl : float prop option; [@option]
  assignments : string prop list option; [@option]
  client_type : string prop option; [@option]
  id : string prop option; [@option]
  id_token_ttl : float prop option; [@option]
  key : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  redirect_uris : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_client) -> ()

let yojson_of_vault_identity_oidc_client =
  (function
   | {
       access_token_ttl = v_access_token_ttl;
       assignments = v_assignments;
       client_type = v_client_type;
       id = v_id;
       id_token_ttl = v_id_token_ttl;
       key = v_key;
       name = v_name;
       namespace = v_namespace;
       redirect_uris = v_redirect_uris;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_redirect_uris with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "redirect_uris", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_id_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "id_token_ttl", arg in
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
       match v_client_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_assignments with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "assignments", arg in
         bnd :: bnds
     in
     let bnds =
       match v_access_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "access_token_ttl", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_client

[@@@deriving.end]

let vault_identity_oidc_client ?access_token_ttl ?assignments ?client_type ?id ?id_token_ttl ?key ?namespace
  ?redirect_uris ~name () =
  ({ access_token_ttl; assignments; client_type; id; id_token_ttl; key; name; namespace; redirect_uris }
    : vault_identity_oidc_client)

type t = {
  tf_name : string;
  access_token_ttl : float prop;
  assignments : string list prop;
  client_id : string prop;
  client_secret : string prop;
  client_type : string prop;
  id : string prop;
  id_token_ttl : float prop;
  key : string prop;
  name : string prop;
  namespace : string prop;
  redirect_uris : string list prop;
}

let make ?access_token_ttl ?assignments ?client_type ?id ?id_token_ttl ?key ?namespace ?redirect_uris ~name __id =
  let __type = "vault_identity_oidc_client" in
  let __attrs =
    ({
       tf_name = __id;
       access_token_ttl = Prop.computed __type __id "access_token_ttl";
       assignments = Prop.computed __type __id "assignments";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       client_type = Prop.computed __type __id "client_type";
       id = Prop.computed __type __id "id";
       id_token_ttl = Prop.computed __type __id "id_token_ttl";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       redirect_uris = Prop.computed __type __id "redirect_uris";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_client
        (vault_identity_oidc_client ?access_token_ttl ?assignments ?client_type ?id ?id_token_ttl ?key ?namespace
           ?redirect_uris ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token_ttl ?assignments ?client_type ?id ?id_token_ttl ?key ?namespace ?redirect_uris
  ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access_token_ttl ?assignments ?client_type ?id ?id_token_ttl ?key ?namespace ?redirect_uris ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
