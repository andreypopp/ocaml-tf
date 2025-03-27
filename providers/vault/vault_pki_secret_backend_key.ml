(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_key = {
  backend : string prop;
  id : string prop option; [@option]
  key_bits : float prop option; [@option]
  key_name : string prop option; [@option]
  key_type : string prop option; [@option]
  managed_key_id : string prop option; [@option]
  managed_key_name : string prop option; [@option]
  namespace : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_key) -> ()

let yojson_of_vault_pki_secret_backend_key =
  (function
   | {
       backend = v_backend;
       id = v_id;
       key_bits = v_key_bits;
       key_name = v_key_name;
       key_type = v_key_type;
       managed_key_id = v_managed_key_id;
       managed_key_name = v_managed_key_name;
       namespace = v_namespace;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
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
       match v_managed_key_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "managed_key_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_managed_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "managed_key_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_bits", arg in
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
    : vault_pki_secret_backend_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_key

[@@@deriving.end]

let vault_pki_secret_backend_key ?id ?key_bits ?key_name ?key_type ?managed_key_id ?managed_key_name ?namespace ~backend
  ~type_ () =
  ({ backend; id; key_bits; key_name; key_type; managed_key_id; managed_key_name; namespace; type_ }
    : vault_pki_secret_backend_key)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  key_bits : float prop;
  key_id : string prop;
  key_name : string prop;
  key_type : string prop;
  managed_key_id : string prop;
  managed_key_name : string prop;
  namespace : string prop;
  type_ : string prop;
}

let make ?id ?key_bits ?key_name ?key_type ?managed_key_id ?managed_key_name ?namespace ~backend ~type_ __id =
  let __type = "vault_pki_secret_backend_key" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       key_bits = Prop.computed __type __id "key_bits";
       key_id = Prop.computed __type __id "key_id";
       key_name = Prop.computed __type __id "key_name";
       key_type = Prop.computed __type __id "key_type";
       managed_key_id = Prop.computed __type __id "managed_key_id";
       managed_key_name = Prop.computed __type __id "managed_key_name";
       namespace = Prop.computed __type __id "namespace";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_key
        (vault_pki_secret_backend_key ?id ?key_bits ?key_name ?key_type ?managed_key_id ?managed_key_name ?namespace
           ~backend ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_bits ?key_name ?key_type ?managed_key_id ?managed_key_name ?namespace ~backend ~type_
  __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_bits ?key_name ?key_type ?managed_key_id ?managed_key_name ?namespace ~backend ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
