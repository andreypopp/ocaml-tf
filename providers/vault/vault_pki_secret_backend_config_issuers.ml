(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_issuers = {
  backend : string prop;
  default : string prop option; [@option]
  default_follows_latest_issuer : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_issuers) -> ()

let yojson_of_vault_pki_secret_backend_config_issuers =
  (function
   | {
       backend = v_backend;
       default = v_default;
       default_follows_latest_issuer = v_default_follows_latest_issuer;
       id = v_id;
       namespace = v_namespace;
     } ->
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_follows_latest_issuer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "default_follows_latest_issuer", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_issuers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_issuers

[@@@deriving.end]

let vault_pki_secret_backend_config_issuers ?default ?default_follows_latest_issuer ?id ?namespace ~backend () =
  ({ backend; default; default_follows_latest_issuer; id; namespace } : vault_pki_secret_backend_config_issuers)

type t = {
  tf_name : string;
  backend : string prop;
  default : string prop;
  default_follows_latest_issuer : bool prop;
  id : string prop;
  namespace : string prop;
}

let make ?default ?default_follows_latest_issuer ?id ?namespace ~backend __id =
  let __type = "vault_pki_secret_backend_config_issuers" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       default = Prop.computed __type __id "default";
       default_follows_latest_issuer = Prop.computed __type __id "default_follows_latest_issuer";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_issuers
        (vault_pki_secret_backend_config_issuers ?default ?default_follows_latest_issuer ?id ?namespace ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?default ?default_follows_latest_issuer ?id ?namespace ~backend __id =
  let (r : _ Tf_core.resource) = make ?default ?default_follows_latest_issuer ?id ?namespace ~backend __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
