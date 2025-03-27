(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kmip_secret_scope = {
  force : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kmip_secret_scope) -> ()

let yojson_of_vault_kmip_secret_scope =
  (function
   | { force = v_force; id = v_id; namespace = v_namespace; path = v_path; scope = v_scope } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_scope in
       ("scope", arg) :: bnds
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
       match v_force with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "force", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kmip_secret_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kmip_secret_scope

[@@@deriving.end]

let vault_kmip_secret_scope ?force ?id ?namespace ~path ~scope () =
  ({ force; id; namespace; path; scope } : vault_kmip_secret_scope)

type t = {
  tf_name : string;
  force : bool prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  scope : string prop;
}

let make ?force ?id ?namespace ~path ~scope __id =
  let __type = "vault_kmip_secret_scope" in
  let __attrs =
    ({
       tf_name = __id;
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_kmip_secret_scope (vault_kmip_secret_scope ?force ?id ?namespace ~path ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?force ?id ?namespace ~path ~scope __id =
  let (r : _ Tf_core.resource) = make ?force ?id ?namespace ~path ~scope __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
