(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_issuers = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_issuers) -> ()

let yojson_of_vault_pki_secret_backend_issuers =
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
    : vault_pki_secret_backend_issuers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_issuers

[@@@deriving.end]

let vault_pki_secret_backend_issuers ?id ?namespace ~backend () =
  ({ backend; id; namespace } : vault_pki_secret_backend_issuers)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  key_info : string Tf_core.assoc prop;
  key_info_json : string prop;
  keys : string list prop;
  namespace : string prop;
}

let make ?id ?namespace ~backend __id =
  let __type = "vault_pki_secret_backend_issuers" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       key_info = Prop.computed __type __id "key_info";
       key_info_json = Prop.computed __type __id "key_info_json";
       keys = Prop.computed __type __id "keys";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_pki_secret_backend_issuers (vault_pki_secret_backend_issuers ?id ?namespace ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
