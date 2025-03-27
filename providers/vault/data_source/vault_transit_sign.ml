(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transit_sign = {
  batch_input : string prop Tf_core.assoc list option; [@option]
  batch_results : string prop Tf_core.assoc list option; [@option]
  context : string prop option; [@option]
  hash_algorithm : string prop option; [@option]
  id : string prop option; [@option]
  input : string prop option; [@option]
  key_version : float prop option; [@option]
  marshaling_algorithm : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
  prehashed : bool prop option; [@option]
  reference : string prop option; [@option]
  salt_length : string prop option; [@option]
  signature : string prop option; [@option]
  signature_algorithm : string prop option; [@option]
  signature_context : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transit_sign) -> ()

let yojson_of_vault_transit_sign =
  (function
   | {
       batch_input = v_batch_input;
       batch_results = v_batch_results;
       context = v_context;
       hash_algorithm = v_hash_algorithm;
       id = v_id;
       input = v_input;
       key_version = v_key_version;
       marshaling_algorithm = v_marshaling_algorithm;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       prehashed = v_prehashed;
       reference = v_reference;
       salt_length = v_salt_length;
       signature = v_signature;
       signature_algorithm = v_signature_algorithm;
       signature_context = v_signature_context;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_signature_context with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "signature_context", arg in
         bnd :: bnds
     in
     let bnds =
       match v_signature_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "signature_algorithm", arg in
         bnd :: bnds
     in
     let bnds =
       match v_signature with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "signature", arg in
         bnd :: bnds
     in
     let bnds =
       match v_salt_length with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "salt_length", arg in
         bnd :: bnds
     in
     let bnds =
       match v_reference with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "reference", arg in
         bnd :: bnds
     in
     let bnds =
       match v_prehashed with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "prehashed", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_marshaling_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "marshaling_algorithm", arg in
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
       match v_input with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "input", arg in
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
       match v_hash_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "hash_algorithm", arg in
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
       match v_batch_results with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string)) v in
         let bnd = "batch_results", arg in
         bnd :: bnds
     in
     let bnds =
       match v_batch_input with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string)) v in
         let bnd = "batch_input", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_transit_sign -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transit_sign

[@@@deriving.end]

let vault_transit_sign ?batch_input ?batch_results ?context ?hash_algorithm ?id ?input ?key_version
  ?marshaling_algorithm ?namespace ?prehashed ?reference ?salt_length ?signature ?signature_algorithm ?signature_context
  ~name ~path () =
  ({
     batch_input;
     batch_results;
     context;
     hash_algorithm;
     id;
     input;
     key_version;
     marshaling_algorithm;
     name;
     namespace;
     path;
     prehashed;
     reference;
     salt_length;
     signature;
     signature_algorithm;
     signature_context;
   }
    : vault_transit_sign)

type t = {
  tf_name : string;
  batch_input : string Tf_core.assoc list prop;
  batch_results : string Tf_core.assoc list prop;
  context : string prop;
  hash_algorithm : string prop;
  id : string prop;
  input : string prop;
  key_version : float prop;
  marshaling_algorithm : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  prehashed : bool prop;
  reference : string prop;
  salt_length : string prop;
  signature : string prop;
  signature_algorithm : string prop;
  signature_context : string prop;
}

let make ?batch_input ?batch_results ?context ?hash_algorithm ?id ?input ?key_version ?marshaling_algorithm ?namespace
  ?prehashed ?reference ?salt_length ?signature ?signature_algorithm ?signature_context ~name ~path __id =
  let __type = "vault_transit_sign" in
  let __attrs =
    ({
       tf_name = __id;
       batch_input = Prop.computed __type __id "batch_input";
       batch_results = Prop.computed __type __id "batch_results";
       context = Prop.computed __type __id "context";
       hash_algorithm = Prop.computed __type __id "hash_algorithm";
       id = Prop.computed __type __id "id";
       input = Prop.computed __type __id "input";
       key_version = Prop.computed __type __id "key_version";
       marshaling_algorithm = Prop.computed __type __id "marshaling_algorithm";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       prehashed = Prop.computed __type __id "prehashed";
       reference = Prop.computed __type __id "reference";
       salt_length = Prop.computed __type __id "salt_length";
       signature = Prop.computed __type __id "signature";
       signature_algorithm = Prop.computed __type __id "signature_algorithm";
       signature_context = Prop.computed __type __id "signature_context";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transit_sign
        (vault_transit_sign ?batch_input ?batch_results ?context ?hash_algorithm ?id ?input ?key_version
           ?marshaling_algorithm ?namespace ?prehashed ?reference ?salt_length ?signature ?signature_algorithm
           ?signature_context ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_input ?batch_results ?context ?hash_algorithm ?id ?input ?key_version
  ?marshaling_algorithm ?namespace ?prehashed ?reference ?salt_length ?signature ?signature_algorithm ?signature_context
  ~name ~path __id =
  let (r : _ Tf_core.resource) =
    make ?batch_input ?batch_results ?context ?hash_algorithm ?id ?input ?key_version ?marshaling_algorithm ?namespace
      ?prehashed ?reference ?salt_length ?signature ?signature_algorithm ?signature_context ~name ~path __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
