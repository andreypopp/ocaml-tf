(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authenticators = {
  cert : string prop Tf_core.assoc;
  userpass : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authenticators) -> ()

let yojson_of_authenticators =
  (function
   | { cert = v_cert; userpass = v_userpass } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v_userpass in
       ("userpass", arg) :: bnds
     in
     let bnds =
       let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v_cert in
       ("cert", arg) :: bnds
     in
     `Assoc bnds
    : authenticators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authenticators

[@@@deriving.end]

type vault_pki_secret_backend_config_est = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_est) -> ()

let yojson_of_vault_pki_secret_backend_config_est =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace } ->
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_est -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_est

[@@@deriving.end]

let vault_pki_secret_backend_config_est ?id ?namespace ~backend () =
  ({ backend; id; namespace } : vault_pki_secret_backend_config_est)

type t = {
  tf_name : string;
  audit_fields : string list prop;
  authenticators : authenticators list prop;
  backend : string prop;
  default_mount : bool prop;
  default_path_policy : string prop;
  enable_sentinel_parsing : bool prop;
  enabled : bool prop;
  id : string prop;
  label_to_path_policy : string Tf_core.assoc prop;
  last_updated : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~backend __id =
  let __type = "vault_pki_secret_backend_config_est" in
  let __attrs =
    ({
       tf_name = __id;
       audit_fields = Prop.computed __type __id "audit_fields";
       authenticators = Prop.computed __type __id "authenticators";
       backend = Prop.computed __type __id "backend";
       default_mount = Prop.computed __type __id "default_mount";
       default_path_policy = Prop.computed __type __id "default_path_policy";
       enable_sentinel_parsing = Prop.computed __type __id "enable_sentinel_parsing";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       label_to_path_policy = Prop.computed __type __id "label_to_path_policy";
       last_updated = Prop.computed __type __id "last_updated";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_est (vault_pki_secret_backend_config_est ?id ?namespace ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
