(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_auth_backends = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_auth_backends) -> ()

let yojson_of_vault_auth_backends =
  (function
   | { id = v_id; namespace = v_namespace; type_ = v_type_ } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
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
     `Assoc bnds
    : vault_auth_backends -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_auth_backends

[@@@deriving.end]

let vault_auth_backends ?id ?namespace ?type_ () = ({ id; namespace; type_ } : vault_auth_backends)

type t = {
  tf_name : string;
  accessors : string list prop;
  id : string prop;
  namespace : string prop;
  paths : string list prop;
  type_ : string prop;
}

let make ?id ?namespace ?type_ __id =
  let __type = "vault_auth_backends" in
  let __attrs =
    ({
       tf_name = __id;
       accessors = Prop.computed __type __id "accessors";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       paths = Prop.computed __type __id "paths";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_auth_backends (vault_auth_backends ?id ?namespace ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
