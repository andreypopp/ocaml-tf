(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_crl_config = {
  auto_rebuild : bool prop option; [@option]
  auto_rebuild_grace_period : string prop option; [@option]
  backend : string prop;
  cross_cluster_revocation : bool prop option; [@option]
  delta_rebuild_interval : string prop option; [@option]
  disable : bool prop option; [@option]
  enable_delta : bool prop option; [@option]
  expiry : string prop option; [@option]
  id : string prop option; [@option]
  max_crl_entries : float prop option; [@option]
  namespace : string prop option; [@option]
  ocsp_disable : bool prop option; [@option]
  ocsp_expiry : string prop option; [@option]
  unified_crl : bool prop option; [@option]
  unified_crl_on_existing_paths : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_crl_config) -> ()

let yojson_of_vault_pki_secret_backend_crl_config =
  (function
   | {
       auto_rebuild = v_auto_rebuild;
       auto_rebuild_grace_period = v_auto_rebuild_grace_period;
       backend = v_backend;
       cross_cluster_revocation = v_cross_cluster_revocation;
       delta_rebuild_interval = v_delta_rebuild_interval;
       disable = v_disable;
       enable_delta = v_enable_delta;
       expiry = v_expiry;
       id = v_id;
       max_crl_entries = v_max_crl_entries;
       namespace = v_namespace;
       ocsp_disable = v_ocsp_disable;
       ocsp_expiry = v_ocsp_expiry;
       unified_crl = v_unified_crl;
       unified_crl_on_existing_paths = v_unified_crl_on_existing_paths;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_unified_crl_on_existing_paths with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "unified_crl_on_existing_paths", arg in
         bnd :: bnds
     in
     let bnds =
       match v_unified_crl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "unified_crl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_expiry with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ocsp_expiry", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_disable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "ocsp_disable", arg in
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
       match v_max_crl_entries with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_crl_entries", arg in
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
       match v_expiry with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "expiry", arg in
         bnd :: bnds
     in
     let bnds =
       match v_enable_delta with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enable_delta", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable", arg in
         bnd :: bnds
     in
     let bnds =
       match v_delta_rebuild_interval with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "delta_rebuild_interval", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cross_cluster_revocation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "cross_cluster_revocation", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_auto_rebuild_grace_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auto_rebuild_grace_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auto_rebuild with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "auto_rebuild", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_crl_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_crl_config

[@@@deriving.end]

let vault_pki_secret_backend_crl_config ?auto_rebuild ?auto_rebuild_grace_period ?cross_cluster_revocation
  ?delta_rebuild_interval ?disable ?enable_delta ?expiry ?id ?max_crl_entries ?namespace ?ocsp_disable ?ocsp_expiry
  ?unified_crl ?unified_crl_on_existing_paths ~backend () =
  ({
     auto_rebuild;
     auto_rebuild_grace_period;
     backend;
     cross_cluster_revocation;
     delta_rebuild_interval;
     disable;
     enable_delta;
     expiry;
     id;
     max_crl_entries;
     namespace;
     ocsp_disable;
     ocsp_expiry;
     unified_crl;
     unified_crl_on_existing_paths;
   }
    : vault_pki_secret_backend_crl_config)

type t = {
  tf_name : string;
  auto_rebuild : bool prop;
  auto_rebuild_grace_period : string prop;
  backend : string prop;
  cross_cluster_revocation : bool prop;
  delta_rebuild_interval : string prop;
  disable : bool prop;
  enable_delta : bool prop;
  expiry : string prop;
  id : string prop;
  max_crl_entries : float prop;
  namespace : string prop;
  ocsp_disable : bool prop;
  ocsp_expiry : string prop;
  unified_crl : bool prop;
  unified_crl_on_existing_paths : bool prop;
}

let make ?auto_rebuild ?auto_rebuild_grace_period ?cross_cluster_revocation ?delta_rebuild_interval ?disable
  ?enable_delta ?expiry ?id ?max_crl_entries ?namespace ?ocsp_disable ?ocsp_expiry ?unified_crl
  ?unified_crl_on_existing_paths ~backend __id =
  let __type = "vault_pki_secret_backend_crl_config" in
  let __attrs =
    ({
       tf_name = __id;
       auto_rebuild = Prop.computed __type __id "auto_rebuild";
       auto_rebuild_grace_period = Prop.computed __type __id "auto_rebuild_grace_period";
       backend = Prop.computed __type __id "backend";
       cross_cluster_revocation = Prop.computed __type __id "cross_cluster_revocation";
       delta_rebuild_interval = Prop.computed __type __id "delta_rebuild_interval";
       disable = Prop.computed __type __id "disable";
       enable_delta = Prop.computed __type __id "enable_delta";
       expiry = Prop.computed __type __id "expiry";
       id = Prop.computed __type __id "id";
       max_crl_entries = Prop.computed __type __id "max_crl_entries";
       namespace = Prop.computed __type __id "namespace";
       ocsp_disable = Prop.computed __type __id "ocsp_disable";
       ocsp_expiry = Prop.computed __type __id "ocsp_expiry";
       unified_crl = Prop.computed __type __id "unified_crl";
       unified_crl_on_existing_paths = Prop.computed __type __id "unified_crl_on_existing_paths";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_crl_config
        (vault_pki_secret_backend_crl_config ?auto_rebuild ?auto_rebuild_grace_period ?cross_cluster_revocation
           ?delta_rebuild_interval ?disable ?enable_delta ?expiry ?id ?max_crl_entries ?namespace ?ocsp_disable
           ?ocsp_expiry ?unified_crl ?unified_crl_on_existing_paths ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_rebuild ?auto_rebuild_grace_period ?cross_cluster_revocation ?delta_rebuild_interval
  ?disable ?enable_delta ?expiry ?id ?max_crl_entries ?namespace ?ocsp_disable ?ocsp_expiry ?unified_crl
  ?unified_crl_on_existing_paths ~backend __id =
  let (r : _ Tf_core.resource) =
    make ?auto_rebuild ?auto_rebuild_grace_period ?cross_cluster_revocation ?delta_rebuild_interval ?disable
      ?enable_delta ?expiry ?id ?max_crl_entries ?namespace ?ocsp_disable ?ocsp_expiry ?unified_crl
      ?unified_crl_on_existing_paths ~backend __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
