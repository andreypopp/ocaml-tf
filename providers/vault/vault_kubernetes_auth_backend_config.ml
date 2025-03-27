(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kubernetes_auth_backend_config = {
  backend : string prop option; [@option]
  disable_iss_validation : bool prop option; [@option]
  disable_local_ca_jwt : bool prop option; [@option]
  id : string prop option; [@option]
  issuer : string prop option; [@option]
  kubernetes_ca_cert : string prop option; [@option]
  kubernetes_host : string prop;
  namespace : string prop option; [@option]
  pem_keys : string prop list option; [@option]
  token_reviewer_jwt : string prop option; [@option]
  use_annotations_as_alias_metadata : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kubernetes_auth_backend_config) -> ()

let yojson_of_vault_kubernetes_auth_backend_config =
  (function
   | {
       backend = v_backend;
       disable_iss_validation = v_disable_iss_validation;
       disable_local_ca_jwt = v_disable_local_ca_jwt;
       id = v_id;
       issuer = v_issuer;
       kubernetes_ca_cert = v_kubernetes_ca_cert;
       kubernetes_host = v_kubernetes_host;
       namespace = v_namespace;
       pem_keys = v_pem_keys;
       token_reviewer_jwt = v_token_reviewer_jwt;
       use_annotations_as_alias_metadata = v_use_annotations_as_alias_metadata;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_annotations_as_alias_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_annotations_as_alias_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_reviewer_jwt with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_reviewer_jwt", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pem_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "pem_keys", arg in
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
       let arg = yojson_of_prop yojson_of_string v_kubernetes_host in
       ("kubernetes_host", arg) :: bnds
     in
     let bnds =
       match v_kubernetes_ca_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "kubernetes_ca_cert", arg in
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
     let bnds =
       match v_disable_local_ca_jwt with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_local_ca_jwt", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_iss_validation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_iss_validation", arg in
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
    : vault_kubernetes_auth_backend_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kubernetes_auth_backend_config

[@@@deriving.end]

let vault_kubernetes_auth_backend_config ?backend ?disable_iss_validation ?disable_local_ca_jwt ?id ?issuer
  ?kubernetes_ca_cert ?namespace ?pem_keys ?token_reviewer_jwt ?use_annotations_as_alias_metadata ~kubernetes_host () =
  ({
     backend;
     disable_iss_validation;
     disable_local_ca_jwt;
     id;
     issuer;
     kubernetes_ca_cert;
     kubernetes_host;
     namespace;
     pem_keys;
     token_reviewer_jwt;
     use_annotations_as_alias_metadata;
   }
    : vault_kubernetes_auth_backend_config)

type t = {
  tf_name : string;
  backend : string prop;
  disable_iss_validation : bool prop;
  disable_local_ca_jwt : bool prop;
  id : string prop;
  issuer : string prop;
  kubernetes_ca_cert : string prop;
  kubernetes_host : string prop;
  namespace : string prop;
  pem_keys : string list prop;
  token_reviewer_jwt : string prop;
  use_annotations_as_alias_metadata : bool prop;
}

let make ?backend ?disable_iss_validation ?disable_local_ca_jwt ?id ?issuer ?kubernetes_ca_cert ?namespace ?pem_keys
  ?token_reviewer_jwt ?use_annotations_as_alias_metadata ~kubernetes_host __id =
  let __type = "vault_kubernetes_auth_backend_config" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       disable_iss_validation = Prop.computed __type __id "disable_iss_validation";
       disable_local_ca_jwt = Prop.computed __type __id "disable_local_ca_jwt";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       kubernetes_ca_cert = Prop.computed __type __id "kubernetes_ca_cert";
       kubernetes_host = Prop.computed __type __id "kubernetes_host";
       namespace = Prop.computed __type __id "namespace";
       pem_keys = Prop.computed __type __id "pem_keys";
       token_reviewer_jwt = Prop.computed __type __id "token_reviewer_jwt";
       use_annotations_as_alias_metadata = Prop.computed __type __id "use_annotations_as_alias_metadata";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kubernetes_auth_backend_config
        (vault_kubernetes_auth_backend_config ?backend ?disable_iss_validation ?disable_local_ca_jwt ?id ?issuer
           ?kubernetes_ca_cert ?namespace ?pem_keys ?token_reviewer_jwt ?use_annotations_as_alias_metadata
           ~kubernetes_host ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?disable_iss_validation ?disable_local_ca_jwt ?id ?issuer ?kubernetes_ca_cert
  ?namespace ?pem_keys ?token_reviewer_jwt ?use_annotations_as_alias_metadata ~kubernetes_host __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?disable_iss_validation ?disable_local_ca_jwt ?id ?issuer ?kubernetes_ca_cert ?namespace ?pem_keys
      ?token_reviewer_jwt ?use_annotations_as_alias_metadata ~kubernetes_host __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
