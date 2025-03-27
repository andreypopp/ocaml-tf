(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kv_secret_backend_v2 = {
  cas_required : bool prop option; [@option]
  delete_version_after : float prop option; [@option]
  id : string prop option; [@option]
  max_versions : float prop option; [@option]
  mount : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kv_secret_backend_v2) -> ()

let yojson_of_vault_kv_secret_backend_v2 =
  (function
   | {
       cas_required = v_cas_required;
       delete_version_after = v_delete_version_after;
       id = v_id;
       max_versions = v_max_versions;
       mount = v_mount;
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
       let arg = yojson_of_prop yojson_of_string v_mount in
       ("mount", arg) :: bnds
     in
     let bnds =
       match v_max_versions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_versions", arg in
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
       match v_delete_version_after with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "delete_version_after", arg in
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
    : vault_kv_secret_backend_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kv_secret_backend_v2

[@@@deriving.end]

let vault_kv_secret_backend_v2 ?cas_required ?delete_version_after ?id ?max_versions ?namespace ~mount () =
  ({ cas_required; delete_version_after; id; max_versions; mount; namespace } : vault_kv_secret_backend_v2)

type t = {
  tf_name : string;
  cas_required : bool prop;
  delete_version_after : float prop;
  id : string prop;
  max_versions : float prop;
  mount : string prop;
  namespace : string prop;
}

let make ?cas_required ?delete_version_after ?id ?max_versions ?namespace ~mount __id =
  let __type = "vault_kv_secret_backend_v2" in
  let __attrs =
    ({
       tf_name = __id;
       cas_required = Prop.computed __type __id "cas_required";
       delete_version_after = Prop.computed __type __id "delete_version_after";
       id = Prop.computed __type __id "id";
       max_versions = Prop.computed __type __id "max_versions";
       mount = Prop.computed __type __id "mount";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kv_secret_backend_v2
        (vault_kv_secret_backend_v2 ?cas_required ?delete_version_after ?id ?max_versions ?namespace ~mount ());
    attrs = __attrs;
  }

let register ?tf_module ?cas_required ?delete_version_after ?id ?max_versions ?namespace ~mount __id =
  let (r : _ Tf_core.resource) = make ?cas_required ?delete_version_after ?id ?max_versions ?namespace ~mount __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
