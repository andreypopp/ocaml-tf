(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kv_secret_subkeys_v2 = {
  depth : float prop option; [@option]
  id : string prop option; [@option]
  mount : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  version : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kv_secret_subkeys_v2) -> ()

let yojson_of_vault_kv_secret_subkeys_v2 =
  (function
   | { depth = v_depth; id = v_id; mount = v_mount; name = v_name; namespace = v_namespace; version = v_version } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "version", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount in
       ("mount", arg) :: bnds
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
       match v_depth with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "depth", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kv_secret_subkeys_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kv_secret_subkeys_v2

[@@@deriving.end]

let vault_kv_secret_subkeys_v2 ?depth ?id ?namespace ?version ~mount ~name () =
  ({ depth; id; mount; name; namespace; version } : vault_kv_secret_subkeys_v2)

type t = {
  tf_name : string;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  depth : float prop;
  id : string prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  version : float prop;
}

let make ?depth ?id ?namespace ?version ~mount ~name __id =
  let __type = "vault_kv_secret_subkeys_v2" in
  let __attrs =
    ({
       tf_name = __id;
       data = Prop.computed __type __id "data";
       data_json = Prop.computed __type __id "data_json";
       depth = Prop.computed __type __id "depth";
       id = Prop.computed __type __id "id";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kv_secret_subkeys_v2 (vault_kv_secret_subkeys_v2 ?depth ?id ?namespace ?version ~mount ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?depth ?id ?namespace ?version ~mount ~name __id =
  let (r : _ Tf_core.resource) = make ?depth ?id ?namespace ?version ~mount ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
