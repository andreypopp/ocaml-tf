(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_static_access_credentials = {
  backend : string prop;
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_static_access_credentials) -> ()

let yojson_of_vault_aws_static_access_credentials =
  (function
   | { backend = v_backend; id = v_id; name = v_name; namespace = v_namespace } ->
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_aws_static_access_credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_static_access_credentials

[@@@deriving.end]

let vault_aws_static_access_credentials ?id ?namespace ~backend ~name () =
  ({ backend; id; name; namespace } : vault_aws_static_access_credentials)

type t = {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  secret_key : string prop;
}

let make ?id ?namespace ~backend ~name __id =
  let __type = "vault_aws_static_access_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       secret_key = Prop.computed __type __id "secret_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_static_access_credentials
        (vault_aws_static_access_credentials ?id ?namespace ~backend ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
