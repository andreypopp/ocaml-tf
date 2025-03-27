(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  sub_key : string prop;
  sync_status : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { sub_key = v_sub_key; sync_status = v_sync_status; updated_at = v_updated_at } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_updated_at in
       ("updated_at", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_sync_status in
       ("sync_status", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_sub_key in
       ("sub_key", arg) :: bnds
     in
     `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type vault_secrets_sync_association = {
  id : string prop option; [@option]
  mount : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  secret_name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_association) -> ()

let yojson_of_vault_secrets_sync_association =
  (function
   | {
       id = v_id;
       mount = v_mount;
       name = v_name;
       namespace = v_namespace;
       secret_name = v_secret_name;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_secret_name in
       ("secret_name", arg) :: bnds
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
     `Assoc bnds
    : vault_secrets_sync_association -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_association

[@@@deriving.end]

let vault_secrets_sync_association ?id ?namespace ~mount ~name ~secret_name ~type_ () =
  ({ id; mount; name; namespace; secret_name; type_ } : vault_secrets_sync_association)

type t = {
  tf_name : string;
  id : string prop;
  metadata : metadata list prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  secret_name : string prop;
  type_ : string prop;
}

let make ?id ?namespace ~mount ~name ~secret_name ~type_ __id =
  let __type = "vault_secrets_sync_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       secret_name = Prop.computed __type __id "secret_name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_association
        (vault_secrets_sync_association ?id ?namespace ~mount ~name ~secret_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~mount ~name ~secret_name ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~mount ~name ~secret_name ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
