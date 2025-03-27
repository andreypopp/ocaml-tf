(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_config_identity = {
  backend : string prop option; [@option]
  ec2_alias : string prop option; [@option]
  ec2_metadata : string prop list option; [@option]
  iam_alias : string prop option; [@option]
  iam_metadata : string prop list option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_config_identity) -> ()

let yojson_of_vault_aws_auth_backend_config_identity =
  (function
   | {
       backend = v_backend;
       ec2_alias = v_ec2_alias;
       ec2_metadata = v_ec2_metadata;
       iam_alias = v_iam_alias;
       iam_metadata = v_iam_metadata;
       id = v_id;
       namespace = v_namespace;
     } ->
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "iam_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_alias with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_alias", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ec2_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ec2_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ec2_alias with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ec2_alias", arg in
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
     `Assoc bnds
    : vault_aws_auth_backend_config_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_config_identity

[@@@deriving.end]

let vault_aws_auth_backend_config_identity ?backend ?ec2_alias ?ec2_metadata ?iam_alias ?iam_metadata ?id ?namespace ()
    =
  ({ backend; ec2_alias; ec2_metadata; iam_alias; iam_metadata; id; namespace }
    : vault_aws_auth_backend_config_identity)

type t = {
  tf_name : string;
  backend : string prop;
  ec2_alias : string prop;
  ec2_metadata : string list prop;
  iam_alias : string prop;
  iam_metadata : string list prop;
  id : string prop;
  namespace : string prop;
}

let make ?backend ?ec2_alias ?ec2_metadata ?iam_alias ?iam_metadata ?id ?namespace __id =
  let __type = "vault_aws_auth_backend_config_identity" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       ec2_alias = Prop.computed __type __id "ec2_alias";
       ec2_metadata = Prop.computed __type __id "ec2_metadata";
       iam_alias = Prop.computed __type __id "iam_alias";
       iam_metadata = Prop.computed __type __id "iam_metadata";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_config_identity
        (vault_aws_auth_backend_config_identity ?backend ?ec2_alias ?ec2_metadata ?iam_alias ?iam_metadata ?id
           ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?ec2_alias ?ec2_metadata ?iam_alias ?iam_metadata ?id ?namespace __id =
  let (r : _ Tf_core.resource) = make ?backend ?ec2_alias ?ec2_metadata ?iam_alias ?iam_metadata ?id ?namespace __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
