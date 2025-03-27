(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transform_decode = {
  batch_input : string prop Tf_core.assoc list option; [@option]
  batch_results : string prop Tf_core.assoc list option; [@option]
  decoded_value : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  role_name : string prop;
  transformation : string prop option; [@option]
  tweak : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transform_decode) -> ()

let yojson_of_vault_transform_decode =
  (function
   | {
       batch_input = v_batch_input;
       batch_results = v_batch_results;
       decoded_value = v_decoded_value;
       id = v_id;
       namespace = v_namespace;
       path = v_path;
       role_name = v_role_name;
       transformation = v_transformation;
       tweak = v_tweak;
       value = v_value;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_value with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "value", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tweak with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tweak", arg in
         bnd :: bnds
     in
     let bnds =
       match v_transformation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "transformation", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_decoded_value with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "decoded_value", arg in
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
    : vault_transform_decode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transform_decode

[@@@deriving.end]

let vault_transform_decode ?batch_input ?batch_results ?decoded_value ?id ?namespace ?transformation ?tweak ?value ~path
  ~role_name () =
  ({ batch_input; batch_results; decoded_value; id; namespace; path; role_name; transformation; tweak; value }
    : vault_transform_decode)

type t = {
  tf_name : string;
  batch_input : string Tf_core.assoc list prop;
  batch_results : string Tf_core.assoc list prop;
  decoded_value : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  role_name : string prop;
  transformation : string prop;
  tweak : string prop;
  value : string prop;
}

let make ?batch_input ?batch_results ?decoded_value ?id ?namespace ?transformation ?tweak ?value ~path ~role_name __id =
  let __type = "vault_transform_decode" in
  let __attrs =
    ({
       tf_name = __id;
       batch_input = Prop.computed __type __id "batch_input";
       batch_results = Prop.computed __type __id "batch_results";
       decoded_value = Prop.computed __type __id "decoded_value";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       role_name = Prop.computed __type __id "role_name";
       transformation = Prop.computed __type __id "transformation";
       tweak = Prop.computed __type __id "tweak";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transform_decode
        (vault_transform_decode ?batch_input ?batch_results ?decoded_value ?id ?namespace ?transformation ?tweak ?value
           ~path ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_input ?batch_results ?decoded_value ?id ?namespace ?transformation ?tweak ?value ~path
  ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?batch_input ?batch_results ?decoded_value ?id ?namespace ?transformation ?tweak ?value ~path ~role_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
