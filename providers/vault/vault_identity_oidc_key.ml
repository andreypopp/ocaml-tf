(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_key = {
  algorithm : string prop option; [@option]
  allowed_client_ids : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  rotation_period : float prop option; [@option]
  verification_ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_key) -> ()

let yojson_of_vault_identity_oidc_key =
  (function
   | {
       algorithm = v_algorithm;
       allowed_client_ids = v_allowed_client_ids;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       rotation_period = v_rotation_period;
       verification_ttl = v_verification_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_verification_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "verification_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
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
       match v_allowed_client_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_client_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "algorithm", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_key

[@@@deriving.end]

let vault_identity_oidc_key ?algorithm ?allowed_client_ids ?id ?namespace ?rotation_period ?verification_ttl ~name () =
  ({ algorithm; allowed_client_ids; id; name; namespace; rotation_period; verification_ttl } : vault_identity_oidc_key)

type t = {
  tf_name : string;
  algorithm : string prop;
  allowed_client_ids : string list prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  rotation_period : float prop;
  verification_ttl : float prop;
}

let make ?algorithm ?allowed_client_ids ?id ?namespace ?rotation_period ?verification_ttl ~name __id =
  let __type = "vault_identity_oidc_key" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       allowed_client_ids = Prop.computed __type __id "allowed_client_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       rotation_period = Prop.computed __type __id "rotation_period";
       verification_ttl = Prop.computed __type __id "verification_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_key
        (vault_identity_oidc_key ?algorithm ?allowed_client_ids ?id ?namespace ?rotation_period ?verification_ttl ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?algorithm ?allowed_client_ids ?id ?namespace ?rotation_period ?verification_ttl ~name __id =
  let (r : _ Tf_core.resource) =
    make ?algorithm ?allowed_client_ids ?id ?namespace ?rotation_period ?verification_ttl ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
