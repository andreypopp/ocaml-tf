(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_intermediate_set_signed = {
  backend : string prop;
  certificate : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_intermediate_set_signed) -> ()

let yojson_of_vault_pki_secret_backend_intermediate_set_signed =
  (function
   | { backend = v_backend; certificate = v_certificate; id = v_id; namespace = v_namespace } ->
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
       let arg = yojson_of_prop yojson_of_string v_certificate in
       ("certificate", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_intermediate_set_signed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_intermediate_set_signed

[@@@deriving.end]

let vault_pki_secret_backend_intermediate_set_signed ?id ?namespace ~backend ~certificate () =
  ({ backend; certificate; id; namespace } : vault_pki_secret_backend_intermediate_set_signed)

type t = {
  tf_name : string;
  backend : string prop;
  certificate : string prop;
  id : string prop;
  imported_issuers : string list prop;
  imported_keys : string list prop;
  namespace : string prop;
}

let make ?id ?namespace ~backend ~certificate __id =
  let __type = "vault_pki_secret_backend_intermediate_set_signed" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       certificate = Prop.computed __type __id "certificate";
       id = Prop.computed __type __id "id";
       imported_issuers = Prop.computed __type __id "imported_issuers";
       imported_keys = Prop.computed __type __id "imported_keys";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_intermediate_set_signed
        (vault_pki_secret_backend_intermediate_set_signed ?id ?namespace ~backend ~certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~certificate __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~certificate __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
