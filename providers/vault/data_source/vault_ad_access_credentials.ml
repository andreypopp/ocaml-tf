(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ad_access_credentials = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ad_access_credentials) -> ()

let yojson_of_vault_ad_access_credentials =
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
    : vault_ad_access_credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ad_access_credentials

[@@@deriving.end]

let vault_ad_access_credentials ?id ?namespace ~backend ~role () =
  ({ backend; id; namespace; role } : vault_ad_access_credentials)

type t = {
  tf_name : string;
  backend : string prop;
  current_password : string prop;
  id : string prop;
  last_password : string prop;
  namespace : string prop;
  role : string prop;
  username : string prop;
}

let make ?id ?namespace ~backend ~role __id =
  let __type = "vault_ad_access_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       current_password = Prop.computed __type __id "current_password";
       id = Prop.computed __type __id "id";
       last_password = Prop.computed __type __id "last_password";
       namespace = Prop.computed __type __id "namespace";
       role = Prop.computed __type __id "role";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_ad_access_credentials (vault_ad_access_credentials ?id ?namespace ~backend ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~role __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~role __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
