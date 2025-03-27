(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authenticators = { cert : string prop Tf_core.assoc option [@option] } [@@deriving_inline yojson_of]

let _ = fun (_ : authenticators) -> ()

let yojson_of_authenticators =
  (function
   | { cert = v_cert } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "cert", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : authenticators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authenticators

[@@@deriving.end]

type vault_pki_secret_backend_config_cmpv2 = {
  audit_fields : string prop list option; [@option]
  backend : string prop;
  default_path_policy : string prop option; [@option]
  disabled_validations : string prop list option; [@option]
  enable_sentinel_parsing : bool prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  authenticators : authenticators list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_cmpv2) -> ()

let yojson_of_vault_pki_secret_backend_config_cmpv2 =
  (function
   | {
       audit_fields = v_audit_fields;
       backend = v_backend;
       default_path_policy = v_default_path_policy;
       disabled_validations = v_disabled_validations;
       enable_sentinel_parsing = v_enable_sentinel_parsing;
       enabled = v_enabled;
       id = v_id;
       namespace = v_namespace;
       authenticators = v_authenticators;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_authenticators then bnds
       else (
         let arg = (yojson_of_list yojson_of_authenticators) v_authenticators in
         let bnd = "authenticators", arg in
         bnd :: bnds)
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_enabled with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enabled", arg in
         bnd :: bnds
     in
     let bnds =
       match v_enable_sentinel_parsing with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enable_sentinel_parsing", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disabled_validations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "disabled_validations", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_path_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_path_policy", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_audit_fields with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_fields", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_cmpv2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_cmpv2

[@@@deriving.end]

let authenticators ?cert () = ({ cert } : authenticators)

let vault_pki_secret_backend_config_cmpv2 ?audit_fields ?default_path_policy ?disabled_validations
  ?enable_sentinel_parsing ?enabled ?id ?namespace ?(authenticators = []) ~backend () =
  ({
     audit_fields;
     backend;
     default_path_policy;
     disabled_validations;
     enable_sentinel_parsing;
     enabled;
     id;
     namespace;
     authenticators;
   }
    : vault_pki_secret_backend_config_cmpv2)

type t = {
  tf_name : string;
  audit_fields : string list prop;
  backend : string prop;
  default_path_policy : string prop;
  disabled_validations : string list prop;
  enable_sentinel_parsing : bool prop;
  enabled : bool prop;
  id : string prop;
  last_updated : string prop;
  namespace : string prop;
}

let make ?audit_fields ?default_path_policy ?disabled_validations ?enable_sentinel_parsing ?enabled ?id ?namespace
  ?(authenticators = []) ~backend __id =
  let __type = "vault_pki_secret_backend_config_cmpv2" in
  let __attrs =
    ({
       tf_name = __id;
       audit_fields = Prop.computed __type __id "audit_fields";
       backend = Prop.computed __type __id "backend";
       default_path_policy = Prop.computed __type __id "default_path_policy";
       disabled_validations = Prop.computed __type __id "disabled_validations";
       enable_sentinel_parsing = Prop.computed __type __id "enable_sentinel_parsing";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       last_updated = Prop.computed __type __id "last_updated";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_cmpv2
        (vault_pki_secret_backend_config_cmpv2 ?audit_fields ?default_path_policy ?disabled_validations
           ?enable_sentinel_parsing ?enabled ?id ?namespace ~authenticators ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_fields ?default_path_policy ?disabled_validations ?enable_sentinel_parsing ?enabled ?id
  ?namespace ?(authenticators = []) ~backend __id =
  let (r : _ Tf_core.resource) =
    make ?audit_fields ?default_path_policy ?disabled_validations ?enable_sentinel_parsing ?enabled ?id ?namespace
      ~authenticators ~backend __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
