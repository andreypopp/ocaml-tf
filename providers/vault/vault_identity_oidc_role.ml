(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_role = {
  client_id : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  template : string prop option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_role) -> ()

let yojson_of_vault_identity_oidc_role =
  (function
   | {
       client_id = v_client_id;
       id = v_id;
       key = v_key;
       name = v_name;
       namespace = v_namespace;
       template = v_template;
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
       match v_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "template", arg in
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
       let arg = yojson_of_prop yojson_of_string v_key in
       ("key", arg) :: bnds
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
       match v_client_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_role

[@@@deriving.end]

let vault_identity_oidc_role ?client_id ?id ?namespace ?template ?ttl ~key ~name () =
  ({ client_id; id; key; name; namespace; template; ttl } : vault_identity_oidc_role)

type t = {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  key : string prop;
  name : string prop;
  namespace : string prop;
  template : string prop;
  ttl : float prop;
}

let make ?client_id ?id ?namespace ?template ?ttl ~key ~name __id =
  let __type = "vault_identity_oidc_role" in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       template = Prop.computed __type __id "template";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_role
        (vault_identity_oidc_role ?client_id ?id ?namespace ?template ?ttl ~key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?id ?namespace ?template ?ttl ~key ~name __id =
  let (r : _ Tf_core.resource) = make ?client_id ?id ?namespace ?template ?ttl ~key ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
