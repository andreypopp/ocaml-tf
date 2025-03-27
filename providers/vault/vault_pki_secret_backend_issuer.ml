(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_issuer = {
  backend : string prop;
  crl_distribution_points : string prop list option; [@option]
  disable_critical_extension_checks : bool prop option; [@option]
  disable_name_checks : bool prop option; [@option]
  disable_name_constraint_checks : bool prop option; [@option]
  disable_path_length_checks : bool prop option; [@option]
  enable_aia_url_templating : bool prop option; [@option]
  id : string prop option; [@option]
  issuer_name : string prop option; [@option]
  issuer_ref : string prop;
  issuing_certificates : string prop list option; [@option]
  leaf_not_after_behavior : string prop option; [@option]
  manual_chain : string prop list option; [@option]
  namespace : string prop option; [@option]
  ocsp_servers : string prop list option; [@option]
  revocation_signature_algorithm : string prop option; [@option]
  usage : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_issuer) -> ()

let yojson_of_vault_pki_secret_backend_issuer =
  (function
   | {
       backend = v_backend;
       crl_distribution_points = v_crl_distribution_points;
       disable_critical_extension_checks = v_disable_critical_extension_checks;
       disable_name_checks = v_disable_name_checks;
       disable_name_constraint_checks = v_disable_name_constraint_checks;
       disable_path_length_checks = v_disable_path_length_checks;
       enable_aia_url_templating = v_enable_aia_url_templating;
       id = v_id;
       issuer_name = v_issuer_name;
       issuer_ref = v_issuer_ref;
       issuing_certificates = v_issuing_certificates;
       leaf_not_after_behavior = v_leaf_not_after_behavior;
       manual_chain = v_manual_chain;
       namespace = v_namespace;
       ocsp_servers = v_ocsp_servers;
       revocation_signature_algorithm = v_revocation_signature_algorithm;
       usage = v_usage;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_usage with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "usage", arg in
         bnd :: bnds
     in
     let bnds =
       match v_revocation_signature_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "revocation_signature_algorithm", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_servers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ocsp_servers", arg in
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
       match v_manual_chain with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "manual_chain", arg in
         bnd :: bnds
     in
     let bnds =
       match v_leaf_not_after_behavior with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "leaf_not_after_behavior", arg in
         bnd :: bnds
     in
     let bnds =
       match v_issuing_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "issuing_certificates", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_issuer_ref in
       ("issuer_ref", arg) :: bnds
     in
     let bnds =
       match v_issuer_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer_name", arg in
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
       match v_enable_aia_url_templating with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enable_aia_url_templating", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_path_length_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_path_length_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_name_constraint_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_name_constraint_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_name_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_name_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_critical_extension_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_critical_extension_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_crl_distribution_points with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "crl_distribution_points", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_issuer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_issuer

[@@@deriving.end]

let vault_pki_secret_backend_issuer ?crl_distribution_points ?disable_critical_extension_checks ?disable_name_checks
  ?disable_name_constraint_checks ?disable_path_length_checks ?enable_aia_url_templating ?id ?issuer_name
  ?issuing_certificates ?leaf_not_after_behavior ?manual_chain ?namespace ?ocsp_servers ?revocation_signature_algorithm
  ?usage ~backend ~issuer_ref () =
  ({
     backend;
     crl_distribution_points;
     disable_critical_extension_checks;
     disable_name_checks;
     disable_name_constraint_checks;
     disable_path_length_checks;
     enable_aia_url_templating;
     id;
     issuer_name;
     issuer_ref;
     issuing_certificates;
     leaf_not_after_behavior;
     manual_chain;
     namespace;
     ocsp_servers;
     revocation_signature_algorithm;
     usage;
   }
    : vault_pki_secret_backend_issuer)

type t = {
  tf_name : string;
  backend : string prop;
  crl_distribution_points : string list prop;
  disable_critical_extension_checks : bool prop;
  disable_name_checks : bool prop;
  disable_name_constraint_checks : bool prop;
  disable_path_length_checks : bool prop;
  enable_aia_url_templating : bool prop;
  id : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuer_ref : string prop;
  issuing_certificates : string list prop;
  leaf_not_after_behavior : string prop;
  manual_chain : string list prop;
  namespace : string prop;
  ocsp_servers : string list prop;
  revocation_signature_algorithm : string prop;
  usage : string prop;
}

let make ?crl_distribution_points ?disable_critical_extension_checks ?disable_name_checks
  ?disable_name_constraint_checks ?disable_path_length_checks ?enable_aia_url_templating ?id ?issuer_name
  ?issuing_certificates ?leaf_not_after_behavior ?manual_chain ?namespace ?ocsp_servers ?revocation_signature_algorithm
  ?usage ~backend ~issuer_ref __id =
  let __type = "vault_pki_secret_backend_issuer" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       crl_distribution_points = Prop.computed __type __id "crl_distribution_points";
       disable_critical_extension_checks = Prop.computed __type __id "disable_critical_extension_checks";
       disable_name_checks = Prop.computed __type __id "disable_name_checks";
       disable_name_constraint_checks = Prop.computed __type __id "disable_name_constraint_checks";
       disable_path_length_checks = Prop.computed __type __id "disable_path_length_checks";
       enable_aia_url_templating = Prop.computed __type __id "enable_aia_url_templating";
       id = Prop.computed __type __id "id";
       issuer_id = Prop.computed __type __id "issuer_id";
       issuer_name = Prop.computed __type __id "issuer_name";
       issuer_ref = Prop.computed __type __id "issuer_ref";
       issuing_certificates = Prop.computed __type __id "issuing_certificates";
       leaf_not_after_behavior = Prop.computed __type __id "leaf_not_after_behavior";
       manual_chain = Prop.computed __type __id "manual_chain";
       namespace = Prop.computed __type __id "namespace";
       ocsp_servers = Prop.computed __type __id "ocsp_servers";
       revocation_signature_algorithm = Prop.computed __type __id "revocation_signature_algorithm";
       usage = Prop.computed __type __id "usage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_issuer
        (vault_pki_secret_backend_issuer ?crl_distribution_points ?disable_critical_extension_checks
           ?disable_name_checks ?disable_name_constraint_checks ?disable_path_length_checks ?enable_aia_url_templating
           ?id ?issuer_name ?issuing_certificates ?leaf_not_after_behavior ?manual_chain ?namespace ?ocsp_servers
           ?revocation_signature_algorithm ?usage ~backend ~issuer_ref ());
    attrs = __attrs;
  }

let register ?tf_module ?crl_distribution_points ?disable_critical_extension_checks ?disable_name_checks
  ?disable_name_constraint_checks ?disable_path_length_checks ?enable_aia_url_templating ?id ?issuer_name
  ?issuing_certificates ?leaf_not_after_behavior ?manual_chain ?namespace ?ocsp_servers ?revocation_signature_algorithm
  ?usage ~backend ~issuer_ref __id =
  let (r : _ Tf_core.resource) =
    make ?crl_distribution_points ?disable_critical_extension_checks ?disable_name_checks
      ?disable_name_constraint_checks ?disable_path_length_checks ?enable_aia_url_templating ?id ?issuer_name
      ?issuing_certificates ?leaf_not_after_behavior ?manual_chain ?namespace ?ocsp_servers
      ?revocation_signature_algorithm ?usage ~backend ~issuer_ref __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
