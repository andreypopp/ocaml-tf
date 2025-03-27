(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transit_decrypt = {
  backend : string prop;
  ciphertext : string prop;
  context : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transit_decrypt) -> ()

let yojson_of_vault_transit_decrypt =
  (function
   | {
       backend = v_backend;
       ciphertext = v_ciphertext;
       context = v_context;
       id = v_id;
       key = v_key;
       namespace = v_namespace;
     } ->
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
       let arg = yojson_of_prop yojson_of_string v_key in
       ("key", arg) :: bnds
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
       match v_context with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "context", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_ciphertext in
       ("ciphertext", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_transit_decrypt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transit_decrypt

[@@@deriving.end]

let vault_transit_decrypt ?context ?id ?namespace ~backend ~ciphertext ~key () =
  ({ backend; ciphertext; context; id; key; namespace } : vault_transit_decrypt)

type t = {
  tf_name : string;
  backend : string prop;
  ciphertext : string prop;
  context : string prop;
  id : string prop;
  key : string prop;
  namespace : string prop;
  plaintext : string prop;
}

let make ?context ?id ?namespace ~backend ~ciphertext ~key __id =
  let __type = "vault_transit_decrypt" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       ciphertext = Prop.computed __type __id "ciphertext";
       context = Prop.computed __type __id "context";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       namespace = Prop.computed __type __id "namespace";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_transit_decrypt (vault_transit_decrypt ?context ?id ?namespace ~backend ~ciphertext ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?context ?id ?namespace ~backend ~ciphertext ~key __id =
  let (r : _ Tf_core.resource) = make ?context ?id ?namespace ~backend ~ciphertext ~key __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
