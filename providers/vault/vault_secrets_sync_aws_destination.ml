(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_aws_destination = {
  access_key_id : string prop option; [@option]
  custom_tags : string prop Tf_core.assoc option; [@option]
  external_id : string prop option; [@option]
  granularity : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  region : string prop option; [@option]
  role_arn : string prop option; [@option]
  secret_access_key : string prop option; [@option]
  secret_name_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_aws_destination) -> ()

let yojson_of_vault_secrets_sync_aws_destination =
  (function
   | {
       access_key_id = v_access_key_id;
       custom_tags = v_custom_tags;
       external_id = v_external_id;
       granularity = v_granularity;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       region = v_region;
       role_arn = v_role_arn;
       secret_access_key = v_secret_access_key;
       secret_name_template = v_secret_name_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_secret_name_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_name_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_access_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_access_key", arg in
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
       match v_granularity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "granularity", arg in
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
       match v_custom_tags with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "custom_tags", arg in
         bnd :: bnds
     in
     let bnds =
       match v_access_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "access_key_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_aws_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_aws_destination

[@@@deriving.end]

let vault_secrets_sync_aws_destination ?access_key_id ?custom_tags ?external_id ?granularity ?id ?namespace ?region
  ?role_arn ?secret_access_key ?secret_name_template ~name () =
  ({
     access_key_id;
     custom_tags;
     external_id;
     granularity;
     id;
     name;
     namespace;
     region;
     role_arn;
     secret_access_key;
     secret_name_template;
   }
    : vault_secrets_sync_aws_destination)

type t = {
  tf_name : string;
  access_key_id : string prop;
  custom_tags : string Tf_core.assoc prop;
  external_id : string prop;
  granularity : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  region : string prop;
  role_arn : string prop;
  secret_access_key : string prop;
  secret_name_template : string prop;
  type_ : string prop;
}

let make ?access_key_id ?custom_tags ?external_id ?granularity ?id ?namespace ?region ?role_arn ?secret_access_key
  ?secret_name_template ~name __id =
  let __type = "vault_secrets_sync_aws_destination" in
  let __attrs =
    ({
       tf_name = __id;
       access_key_id = Prop.computed __type __id "access_key_id";
       custom_tags = Prop.computed __type __id "custom_tags";
       external_id = Prop.computed __type __id "external_id";
       granularity = Prop.computed __type __id "granularity";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       region = Prop.computed __type __id "region";
       role_arn = Prop.computed __type __id "role_arn";
       secret_access_key = Prop.computed __type __id "secret_access_key";
       secret_name_template = Prop.computed __type __id "secret_name_template";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_aws_destination
        (vault_secrets_sync_aws_destination ?access_key_id ?custom_tags ?external_id ?granularity ?id ?namespace ?region
           ?role_arn ?secret_access_key ?secret_name_template ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key_id ?custom_tags ?external_id ?granularity ?id ?namespace ?region ?role_arn
  ?secret_access_key ?secret_name_template ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access_key_id ?custom_tags ?external_id ?granularity ?id ?namespace ?region ?role_arn ?secret_access_key
      ?secret_name_template ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
