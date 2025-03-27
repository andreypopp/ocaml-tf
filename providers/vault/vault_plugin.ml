(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_plugin = {
  args : string prop list option; [@option]
  command : string prop;
  env : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  oci_image : string prop option; [@option]
  runtime : string prop option; [@option]
  sha256 : string prop;
  type_ : string prop; [@key "type"]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_plugin) -> ()

let yojson_of_vault_plugin =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       id = v_id;
       name = v_name;
       oci_image = v_oci_image;
       runtime = v_runtime;
       sha256 = v_sha256;
       type_ = v_type_;
       version = v_version;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "version", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_sha256 in
       ("sha256", arg) :: bnds
     in
     let bnds =
       match v_runtime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "runtime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_oci_image with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "oci_image", arg in
         bnd :: bnds
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
     let bnds =
       match v_env with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "env", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_command in
       ("command", arg) :: bnds
     in
     let bnds =
       match v_args with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "args", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_plugin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_plugin

[@@@deriving.end]

let vault_plugin ?args ?env ?id ?oci_image ?runtime ?version ~command ~name ~sha256 ~type_ () =
  ({ args; command; env; id; name; oci_image; runtime; sha256; type_; version } : vault_plugin)

type t = {
  tf_name : string;
  args : string list prop;
  command : string prop;
  env : string list prop;
  id : string prop;
  name : string prop;
  oci_image : string prop;
  runtime : string prop;
  sha256 : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?args ?env ?id ?oci_image ?runtime ?version ~command ~name ~sha256 ~type_ __id =
  let __type = "vault_plugin" in
  let __attrs =
    ({
       tf_name = __id;
       args = Prop.computed __type __id "args";
       command = Prop.computed __type __id "command";
       env = Prop.computed __type __id "env";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       oci_image = Prop.computed __type __id "oci_image";
       runtime = Prop.computed __type __id "runtime";
       sha256 = Prop.computed __type __id "sha256";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_plugin (vault_plugin ?args ?env ?id ?oci_image ?runtime ?version ~command ~name ~sha256 ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?args ?env ?id ?oci_image ?runtime ?version ~command ~name ~sha256 ~type_ __id =
  let (r : _ Tf_core.resource) = make ?args ?env ?id ?oci_image ?runtime ?version ~command ~name ~sha256 ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
