(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_kubernetes_versions = {
  id : string prop option; [@option]
  version_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_kubernetes_versions) -> ()

let yojson_of_digitalocean_kubernetes_versions =
  (function
   | { id = v_id; version_prefix = v_version_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_prefix", arg in
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
       `Assoc bnds
    : digitalocean_kubernetes_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_kubernetes_versions

[@@@deriving.end]

let digitalocean_kubernetes_versions ?id ?version_prefix () :
    digitalocean_kubernetes_versions =
  { id; version_prefix }

type t = {
  id : string prop;
  latest_version : string prop;
  valid_versions : string list prop;
  version_prefix : string prop;
}

let make ?id ?version_prefix __id =
  let __type = "digitalocean_kubernetes_versions" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       latest_version = Prop.computed __type __id "latest_version";
       valid_versions = Prop.computed __type __id "valid_versions";
       version_prefix = Prop.computed __type __id "version_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_kubernetes_versions
        (digitalocean_kubernetes_versions ?id ?version_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version_prefix __id =
  let (r : _ Tf_core.resource) = make ?id ?version_prefix __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
