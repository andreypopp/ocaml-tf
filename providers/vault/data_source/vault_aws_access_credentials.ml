(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_access_credentials = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  region : string prop option; [@option]
  role : string prop;
  role_arn : string prop option; [@option]
  ttl : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_access_credentials) -> ()

let yojson_of_vault_aws_access_credentials =
  (function
   | {
       backend = v_backend;
       id = v_id;
       namespace = v_namespace;
       region = v_region;
       role = v_role;
       role_arn = v_role_arn;
       ttl = v_ttl;
       type_ = v_type_;
     } ->
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
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role_arn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_arn", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       match v_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "region", arg in
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
     `Assoc bnds
    : vault_aws_access_credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_access_credentials

[@@@deriving.end]

let vault_aws_access_credentials ?id ?namespace ?region ?role_arn ?ttl ?type_ ~backend ~role () =
  ({ backend; id; namespace; region; role; role_arn; ttl; type_ } : vault_aws_access_credentials)

type t = {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  lease_start_time : string prop;
  namespace : string prop;
  region : string prop;
  role : string prop;
  role_arn : string prop;
  secret_key : string prop;
  security_token : string prop;
  ttl : string prop;
  type_ : string prop;
}

let make ?id ?namespace ?region ?role_arn ?ttl ?type_ ~backend ~role __id =
  let __type = "vault_aws_access_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_id = Prop.computed __type __id "lease_id";
       lease_renewable = Prop.computed __type __id "lease_renewable";
       lease_start_time = Prop.computed __type __id "lease_start_time";
       namespace = Prop.computed __type __id "namespace";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
       role_arn = Prop.computed __type __id "role_arn";
       secret_key = Prop.computed __type __id "secret_key";
       security_token = Prop.computed __type __id "security_token";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_access_credentials
        (vault_aws_access_credentials ?id ?namespace ?region ?role_arn ?ttl ?type_ ~backend ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?region ?role_arn ?ttl ?type_ ~backend ~role __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?region ?role_arn ?ttl ?type_ ~backend ~role __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
