(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transit_encrypt = {
  backend : string prop;
  context : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  key_version : float prop option; [@option]
  namespace : string prop option; [@option]
  plaintext : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transit_encrypt) -> ()

let yojson_of_vault_transit_encrypt =
  (function
   | {
       backend = v_backend;
       context = v_context;
       id = v_id;
       key = v_key;
       key_version = v_key_version;
       namespace = v_namespace;
       plaintext = v_plaintext;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_plaintext in
       ("plaintext", arg) :: bnds
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
       match v_key_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_version", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_transit_encrypt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transit_encrypt

[@@@deriving.end]

let vault_transit_encrypt ?context ?id ?key_version ?namespace ~backend ~key ~plaintext () =
  ({ backend; context; id; key; key_version; namespace; plaintext } : vault_transit_encrypt)

type t = {
  tf_name : string;
  backend : string prop;
  ciphertext : string prop;
  context : string prop;
  id : string prop;
  key : string prop;
  key_version : float prop;
  namespace : string prop;
  plaintext : string prop;
}

let make ?context ?id ?key_version ?namespace ~backend ~key ~plaintext __id =
  let __type = "vault_transit_encrypt" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       ciphertext = Prop.computed __type __id "ciphertext";
       context = Prop.computed __type __id "context";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_version = Prop.computed __type __id "key_version";
       namespace = Prop.computed __type __id "namespace";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transit_encrypt
        (vault_transit_encrypt ?context ?id ?key_version ?namespace ~backend ~key ~plaintext ());
    attrs = __attrs;
  }

let register ?tf_module ?context ?id ?key_version ?namespace ~backend ~key ~plaintext __id =
  let (r : _ Tf_core.resource) = make ?context ?id ?key_version ?namespace ~backend ~key ~plaintext __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
