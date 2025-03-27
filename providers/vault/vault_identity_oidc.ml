(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc = {
  id : string prop option; [@option]
  issuer : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc) -> ()

let yojson_of_vault_identity_oidc =
  (function
   | { id = v_id; issuer = v_issuer; namespace = v_namespace } ->
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
       match v_issuer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer", arg in
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
     `Assoc bnds
    : vault_identity_oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc

[@@@deriving.end]

let vault_identity_oidc ?id ?issuer ?namespace () = ({ id; issuer; namespace } : vault_identity_oidc)

type t = {
  tf_name : string;
  id : string prop;
  issuer : string prop;
  namespace : string prop;
}

let make ?id ?issuer ?namespace __id =
  let __type = "vault_identity_oidc" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_identity_oidc (vault_identity_oidc ?id ?issuer ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?issuer ?namespace __id =
  let (r : _ Tf_core.resource) = make ?id ?issuer ?namespace __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
