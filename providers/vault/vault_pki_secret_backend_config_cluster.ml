(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_cluster = {
  aia_path : string prop option; [@option]
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_cluster) -> ()

let yojson_of_vault_pki_secret_backend_config_cluster =
  (function
   | { aia_path = v_aia_path; backend = v_backend; id = v_id; namespace = v_namespace; path = v_path } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_aia_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aia_path", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_cluster

[@@@deriving.end]

let vault_pki_secret_backend_config_cluster ?aia_path ?id ?namespace ?path ~backend () =
  ({ aia_path; backend; id; namespace; path } : vault_pki_secret_backend_config_cluster)

type t = {
  tf_name : string;
  aia_path : string prop;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
}

let make ?aia_path ?id ?namespace ?path ~backend __id =
  let __type = "vault_pki_secret_backend_config_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       aia_path = Prop.computed __type __id "aia_path";
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_cluster
        (vault_pki_secret_backend_config_cluster ?aia_path ?id ?namespace ?path ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?aia_path ?id ?namespace ?path ~backend __id =
  let (r : _ Tf_core.resource) = make ?aia_path ?id ?namespace ?path ~backend __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
