(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_azure_destination = {
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  cloud : string prop option; [@option]
  custom_tags : string prop Tf_core.assoc option; [@option]
  granularity : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_uri : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  secret_name_template : string prop option; [@option]
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_azure_destination) -> ()

let yojson_of_vault_secrets_sync_azure_destination =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       cloud = v_cloud;
       custom_tags = v_custom_tags;
       granularity = v_granularity;
       id = v_id;
       key_vault_uri = v_key_vault_uri;
       name = v_name;
       namespace = v_namespace;
       secret_name_template = v_secret_name_template;
       tenant_id = v_tenant_id;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_tenant_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tenant_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_name_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_name_template", arg in
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
       match v_key_vault_uri with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_vault_uri", arg in
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
       match v_granularity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "granularity", arg in
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
       match v_cloud with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cloud", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_secret with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_secret", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_azure_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_azure_destination

[@@@deriving.end]

let vault_secrets_sync_azure_destination ?client_id ?client_secret ?cloud ?custom_tags ?granularity ?id ?key_vault_uri
  ?namespace ?secret_name_template ?tenant_id ~name () =
  ({
     client_id;
     client_secret;
     cloud;
     custom_tags;
     granularity;
     id;
     key_vault_uri;
     name;
     namespace;
     secret_name_template;
     tenant_id;
   }
    : vault_secrets_sync_azure_destination)

type t = {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  cloud : string prop;
  custom_tags : string Tf_core.assoc prop;
  granularity : string prop;
  id : string prop;
  key_vault_uri : string prop;
  name : string prop;
  namespace : string prop;
  secret_name_template : string prop;
  tenant_id : string prop;
  type_ : string prop;
}

let make ?client_id ?client_secret ?cloud ?custom_tags ?granularity ?id ?key_vault_uri ?namespace ?secret_name_template
  ?tenant_id ~name __id =
  let __type = "vault_secrets_sync_azure_destination" in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       cloud = Prop.computed __type __id "cloud";
       custom_tags = Prop.computed __type __id "custom_tags";
       granularity = Prop.computed __type __id "granularity";
       id = Prop.computed __type __id "id";
       key_vault_uri = Prop.computed __type __id "key_vault_uri";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       secret_name_template = Prop.computed __type __id "secret_name_template";
       tenant_id = Prop.computed __type __id "tenant_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_azure_destination
        (vault_secrets_sync_azure_destination ?client_id ?client_secret ?cloud ?custom_tags ?granularity ?id
           ?key_vault_uri ?namespace ?secret_name_template ?tenant_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?client_secret ?cloud ?custom_tags ?granularity ?id ?key_vault_uri ?namespace
  ?secret_name_template ?tenant_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?client_id ?client_secret ?cloud ?custom_tags ?granularity ?id ?key_vault_uri ?namespace ?secret_name_template
      ?tenant_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
