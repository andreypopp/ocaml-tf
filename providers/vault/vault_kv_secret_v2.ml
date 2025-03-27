(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_metadata = {
  cas_required : bool prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  delete_version_after : float prop option; [@option]
  max_versions : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_metadata) -> ()

let yojson_of_custom_metadata =
  (function
   | {
       cas_required = v_cas_required;
       data = v_data;
       delete_version_after = v_delete_version_after;
       max_versions = v_max_versions;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_max_versions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_versions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_delete_version_after with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "delete_version_after", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cas_required with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "cas_required", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : custom_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_metadata

[@@@deriving.end]

type vault_kv_secret_v2 = {
  cas : float prop option; [@option]
  data_json : string prop;
  delete_all_versions : bool prop option; [@option]
  disable_read : bool prop option; [@option]
  id : string prop option; [@option]
  mount : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc option; [@option]
  custom_metadata : custom_metadata list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kv_secret_v2) -> ()

let yojson_of_vault_kv_secret_v2 =
  (function
   | {
       cas = v_cas;
       data_json = v_data_json;
       delete_all_versions = v_delete_all_versions;
       disable_read = v_disable_read;
       id = v_id;
       mount = v_mount;
       name = v_name;
       namespace = v_namespace;
       options = v_options;
       custom_metadata = v_custom_metadata;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_custom_metadata then bnds
       else (
         let arg = (yojson_of_list yojson_of_custom_metadata) v_custom_metadata in
         let bnd = "custom_metadata", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "options", arg in
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
       match v_disable_read with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_read", arg in
         bnd :: bnds
     in
     let bnds =
       match v_delete_all_versions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "delete_all_versions", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_data_json in
       ("data_json", arg) :: bnds
     in
     let bnds =
       match v_cas with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "cas", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kv_secret_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kv_secret_v2

[@@@deriving.end]

let custom_metadata ?cas_required ?data ?delete_version_after ?max_versions () =
  ({ cas_required; data; delete_version_after; max_versions } : custom_metadata)

let vault_kv_secret_v2 ?cas ?delete_all_versions ?disable_read ?id ?namespace ?options ?(custom_metadata = [])
  ~data_json ~mount ~name () =
  ({ cas; data_json; delete_all_versions; disable_read; id; mount; name; namespace; options; custom_metadata }
    : vault_kv_secret_v2)

type t = {
  tf_name : string;
  cas : float prop;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  delete_all_versions : bool prop;
  disable_read : bool prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  path : string prop;
}

let make ?cas ?delete_all_versions ?disable_read ?id ?namespace ?options ?(custom_metadata = []) ~data_json ~mount ~name
  __id =
  let __type = "vault_kv_secret_v2" in
  let __attrs =
    ({
       tf_name = __id;
       cas = Prop.computed __type __id "cas";
       data = Prop.computed __type __id "data";
       data_json = Prop.computed __type __id "data_json";
       delete_all_versions = Prop.computed __type __id "delete_all_versions";
       disable_read = Prop.computed __type __id "disable_read";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kv_secret_v2
        (vault_kv_secret_v2 ?cas ?delete_all_versions ?disable_read ?id ?namespace ?options ~custom_metadata ~data_json
           ~mount ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cas ?delete_all_versions ?disable_read ?id ?namespace ?options ?(custom_metadata = [])
  ~data_json ~mount ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cas ?delete_all_versions ?disable_read ?id ?namespace ?options ~custom_metadata ~data_json ~mount ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
