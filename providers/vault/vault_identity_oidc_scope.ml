(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_scope = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_scope) -> ()

let yojson_of_vault_identity_oidc_scope =
  (function
   | { description = v_description; id = v_id; name = v_name; namespace = v_namespace; template = v_template } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
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
     `Assoc bnds
    : vault_identity_oidc_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_scope

[@@@deriving.end]

let vault_identity_oidc_scope ?description ?id ?namespace ?template ~name () =
  ({ description; id; name; namespace; template } : vault_identity_oidc_scope)

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  template : string prop;
}

let make ?description ?id ?namespace ?template ~name __id =
  let __type = "vault_identity_oidc_scope" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       template = Prop.computed __type __id "template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_scope (vault_identity_oidc_scope ?description ?id ?namespace ?template ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?namespace ?template ~name __id =
  let (r : _ Tf_core.resource) = make ?description ?id ?namespace ?template ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
