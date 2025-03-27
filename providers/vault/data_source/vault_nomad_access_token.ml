(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_nomad_access_token = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_nomad_access_token) -> ()

let yojson_of_vault_nomad_access_token =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; role = v_role } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
     `Assoc bnds
    : vault_nomad_access_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_nomad_access_token

[@@@deriving.end]

let vault_nomad_access_token ?id ?namespace ~backend ~role () =
  ({ backend; id; namespace; role } : vault_nomad_access_token)

type t = {
  tf_name : string;
  accessor_id : string prop;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  role : string prop;
  secret_id : string prop;
}

let make ?id ?namespace ~backend ~role __id =
  let __type = "vault_nomad_access_token" in
  let __attrs =
    ({
       tf_name = __id;
       accessor_id = Prop.computed __type __id "accessor_id";
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       role = Prop.computed __type __id "role";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_nomad_access_token (vault_nomad_access_token ?id ?namespace ~backend ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~role __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~role __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
