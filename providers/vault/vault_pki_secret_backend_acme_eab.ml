(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_acme_eab = {
  backend : string prop;
  id : string prop option; [@option]
  issuer : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_acme_eab) -> ()

let yojson_of_vault_pki_secret_backend_acme_eab =
  (function
   | { backend = v_backend; id = v_id; issuer = v_issuer; namespace = v_namespace; role = v_role } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_acme_eab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_acme_eab

[@@@deriving.end]

let vault_pki_secret_backend_acme_eab ?id ?issuer ?namespace ?role ~backend () =
  ({ backend; id; issuer; namespace; role } : vault_pki_secret_backend_acme_eab)

type t = {
  tf_name : string;
  acme_directory : string prop;
  backend : string prop;
  created_on : string prop;
  eab_id : string prop;
  id : string prop;
  issuer : string prop;
  key : string prop;
  key_type : string prop;
  namespace : string prop;
  role : string prop;
}

let make ?id ?issuer ?namespace ?role ~backend __id =
  let __type = "vault_pki_secret_backend_acme_eab" in
  let __attrs =
    ({
       tf_name = __id;
       acme_directory = Prop.computed __type __id "acme_directory";
       backend = Prop.computed __type __id "backend";
       created_on = Prop.computed __type __id "created_on";
       eab_id = Prop.computed __type __id "eab_id";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       key = Prop.computed __type __id "key";
       key_type = Prop.computed __type __id "key_type";
       namespace = Prop.computed __type __id "namespace";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_acme_eab
        (vault_pki_secret_backend_acme_eab ?id ?issuer ?namespace ?role ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?issuer ?namespace ?role ~backend __id =
  let (r : _ Tf_core.resource) = make ?id ?issuer ?namespace ?role ~backend __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
