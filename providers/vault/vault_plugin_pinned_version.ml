(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_plugin_pinned_version = {
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_plugin_pinned_version) -> ()

let yojson_of_vault_plugin_pinned_version =
  (function
   | { id = v_id; name = v_name; type_ = v_type_; version = v_version } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_version in
       ("version", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_plugin_pinned_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_plugin_pinned_version

[@@@deriving.end]

let vault_plugin_pinned_version ?id ~name ~type_ ~version () =
  ({ id; name; type_; version } : vault_plugin_pinned_version)

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?id ~name ~type_ ~version __id =
  let __type = "vault_plugin_pinned_version" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_plugin_pinned_version (vault_plugin_pinned_version ?id ~name ~type_ ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~type_ ~version __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~type_ ~version __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
