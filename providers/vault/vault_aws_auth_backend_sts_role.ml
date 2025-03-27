(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_sts_role = {
  account_id : string prop;
  backend : string prop option; [@option]
  external_id : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  sts_role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_sts_role) -> ()

let yojson_of_vault_aws_auth_backend_sts_role =
  (function
   | {
       account_id = v_account_id;
       backend = v_backend;
       external_id = v_external_id;
       id = v_id;
       namespace = v_namespace;
       sts_role = v_sts_role;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_sts_role in
       ("sts_role", arg) :: bnds
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
       match v_external_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "external_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_account_id in
       ("account_id", arg) :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_sts_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_sts_role

[@@@deriving.end]

let vault_aws_auth_backend_sts_role ?backend ?external_id ?id ?namespace ~account_id ~sts_role () =
  ({ account_id; backend; external_id; id; namespace; sts_role } : vault_aws_auth_backend_sts_role)

type t = {
  tf_name : string;
  account_id : string prop;
  backend : string prop;
  external_id : string prop;
  id : string prop;
  namespace : string prop;
  sts_role : string prop;
}

let make ?backend ?external_id ?id ?namespace ~account_id ~sts_role __id =
  let __type = "vault_aws_auth_backend_sts_role" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       backend = Prop.computed __type __id "backend";
       external_id = Prop.computed __type __id "external_id";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       sts_role = Prop.computed __type __id "sts_role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_sts_role
        (vault_aws_auth_backend_sts_role ?backend ?external_id ?id ?namespace ~account_id ~sts_role ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?external_id ?id ?namespace ~account_id ~sts_role __id =
  let (r : _ Tf_core.resource) = make ?backend ?external_id ?id ?namespace ~account_id ~sts_role __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
