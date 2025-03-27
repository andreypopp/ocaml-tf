(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_urls = {
  backend : string prop;
  crl_distribution_points : string prop list option; [@option]
  enable_templating : bool prop option; [@option]
  id : string prop option; [@option]
  issuing_certificates : string prop list option; [@option]
  namespace : string prop option; [@option]
  ocsp_servers : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_urls) -> ()

let yojson_of_vault_pki_secret_backend_config_urls =
  (function
   | {
       backend = v_backend;
       crl_distribution_points = v_crl_distribution_points;
       enable_templating = v_enable_templating;
       id = v_id;
       issuing_certificates = v_issuing_certificates;
       namespace = v_namespace;
       ocsp_servers = v_ocsp_servers;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_issuing_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "issuing_certificates", arg in
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
       match v_enable_templating with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enable_templating", arg in
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
    : vault_pki_secret_backend_config_urls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_urls

[@@@deriving.end]

let vault_pki_secret_backend_config_urls ?crl_distribution_points ?enable_templating ?id ?issuing_certificates
  ?namespace ?ocsp_servers ~backend () =
  ({ backend; crl_distribution_points; enable_templating; id; issuing_certificates; namespace; ocsp_servers }
    : vault_pki_secret_backend_config_urls)

type t = {
  tf_name : string;
  backend : string prop;
  crl_distribution_points : string list prop;
  enable_templating : bool prop;
  id : string prop;
  issuing_certificates : string list prop;
  namespace : string prop;
  ocsp_servers : string list prop;
}

let make ?crl_distribution_points ?enable_templating ?id ?issuing_certificates ?namespace ?ocsp_servers ~backend __id =
  let __type = "vault_pki_secret_backend_config_urls" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       crl_distribution_points = Prop.computed __type __id "crl_distribution_points";
       enable_templating = Prop.computed __type __id "enable_templating";
       id = Prop.computed __type __id "id";
       issuing_certificates = Prop.computed __type __id "issuing_certificates";
       namespace = Prop.computed __type __id "namespace";
       ocsp_servers = Prop.computed __type __id "ocsp_servers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_urls
        (vault_pki_secret_backend_config_urls ?crl_distribution_points ?enable_templating ?id ?issuing_certificates
           ?namespace ?ocsp_servers ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?crl_distribution_points ?enable_templating ?id ?issuing_certificates ?namespace ?ocsp_servers
  ~backend __id =
  let (r : _ Tf_core.resource) =
    make ?crl_distribution_points ?enable_templating ?id ?issuing_certificates ?namespace ?ocsp_servers ~backend __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
