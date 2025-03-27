(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_key = {
  backend : string prop;
  id : string prop option; [@option]
  key_ref : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_key) -> ()

let yojson_of_vault_pki_secret_backend_key =
  (function
   | { backend = v_backend; id = v_id; key_ref = v_key_ref; namespace = v_namespace } ->
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
       let arg = yojson_of_prop yojson_of_string v_key_ref in
       ("key_ref", arg) :: bnds
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
    : vault_pki_secret_backend_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_key

[@@@deriving.end]

let vault_pki_secret_backend_key ?id ?namespace ~backend ~key_ref () =
  ({ backend; id; key_ref; namespace } : vault_pki_secret_backend_key)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  key_id : string prop;
  key_name : string prop;
  key_ref : string prop;
  key_type : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~backend ~key_ref __id =
  let __type = "vault_pki_secret_backend_key" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_name = Prop.computed __type __id "key_name";
       key_ref = Prop.computed __type __id "key_ref";
       key_type = Prop.computed __type __id "key_type";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_pki_secret_backend_key (vault_pki_secret_backend_key ?id ?namespace ~backend ~key_ref ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~key_ref __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~key_ref __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
