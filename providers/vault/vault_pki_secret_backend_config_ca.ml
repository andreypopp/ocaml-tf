(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_ca = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  pem_bundle : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_ca) -> ()

let yojson_of_vault_pki_secret_backend_config_ca =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; pem_bundle = v_pem_bundle } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_pem_bundle in
       ("pem_bundle", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_ca -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_ca

[@@@deriving.end]

let vault_pki_secret_backend_config_ca ?id ?namespace ~backend ~pem_bundle () =
  ({ backend; id; namespace; pem_bundle } : vault_pki_secret_backend_config_ca)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  pem_bundle : string prop;
}

let make ?id ?namespace ~backend ~pem_bundle __id =
  let __type = "vault_pki_secret_backend_config_ca" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       pem_bundle = Prop.computed __type __id "pem_bundle";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_ca
        (vault_pki_secret_backend_config_ca ?id ?namespace ~backend ~pem_bundle ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~pem_bundle __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~pem_bundle __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
