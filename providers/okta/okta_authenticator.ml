(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_authenticator = {
  id : string prop option; [@option]
  key : string prop;
  name : string prop;
  provider_auth_port : float prop option; [@option]
  provider_host : string prop option; [@option]
  provider_hostname : string prop option; [@option]
  provider_integration_key : string prop option; [@option]
  provider_json : string prop option; [@option]
  provider_secret_key : string prop option; [@option]
  provider_shared_secret : string prop option; [@option]
  provider_user_name_template : string prop option; [@option]
  settings : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_authenticator) -> ()

let yojson_of_okta_authenticator =
  (function
   | {
       id = v_id;
       key = v_key;
       name = v_name;
       provider_auth_port = v_provider_auth_port;
       provider_host = v_provider_host;
       provider_hostname = v_provider_hostname;
       provider_integration_key = v_provider_integration_key;
       provider_json = v_provider_json;
       provider_secret_key = v_provider_secret_key;
       provider_shared_secret = v_provider_shared_secret;
       provider_user_name_template = v_provider_user_name_template;
       settings = v_settings;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_user_name_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_user_name_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_shared_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_shared_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_secret_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_secret_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_integration_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_integration_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_auth_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provider_auth_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
    : okta_authenticator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_authenticator

[@@@deriving.end]

let okta_authenticator ?id ?provider_auth_port ?provider_host
    ?provider_hostname ?provider_integration_key ?provider_json
    ?provider_secret_key ?provider_shared_secret
    ?provider_user_name_template ?settings ?status ~key ~name () :
    okta_authenticator =
  {
    id;
    key;
    name;
    provider_auth_port;
    provider_host;
    provider_hostname;
    provider_integration_key;
    provider_json;
    provider_secret_key;
    provider_shared_secret;
    provider_user_name_template;
    settings;
    status;
  }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  name : string prop;
  provider_auth_port : float prop;
  provider_host : string prop;
  provider_hostname : string prop;
  provider_instance_id : string prop;
  provider_integration_key : string prop;
  provider_json : string prop;
  provider_secret_key : string prop;
  provider_shared_secret : string prop;
  provider_type : string prop;
  provider_user_name_template : string prop;
  settings : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?id ?provider_auth_port ?provider_host ?provider_hostname
    ?provider_integration_key ?provider_json ?provider_secret_key
    ?provider_shared_secret ?provider_user_name_template ?settings
    ?status ~key ~name __id =
  let __type = "okta_authenticator" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       provider_auth_port =
         Prop.computed __type __id "provider_auth_port";
       provider_host = Prop.computed __type __id "provider_host";
       provider_hostname =
         Prop.computed __type __id "provider_hostname";
       provider_instance_id =
         Prop.computed __type __id "provider_instance_id";
       provider_integration_key =
         Prop.computed __type __id "provider_integration_key";
       provider_json = Prop.computed __type __id "provider_json";
       provider_secret_key =
         Prop.computed __type __id "provider_secret_key";
       provider_shared_secret =
         Prop.computed __type __id "provider_shared_secret";
       provider_type = Prop.computed __type __id "provider_type";
       provider_user_name_template =
         Prop.computed __type __id "provider_user_name_template";
       settings = Prop.computed __type __id "settings";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_authenticator
        (okta_authenticator ?id ?provider_auth_port ?provider_host
           ?provider_hostname ?provider_integration_key
           ?provider_json ?provider_secret_key
           ?provider_shared_secret ?provider_user_name_template
           ?settings ?status ~key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?provider_auth_port ?provider_host
    ?provider_hostname ?provider_integration_key ?provider_json
    ?provider_secret_key ?provider_shared_secret
    ?provider_user_name_template ?settings ?status ~key ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?provider_auth_port ?provider_host ?provider_hostname
      ?provider_integration_key ?provider_json ?provider_secret_key
      ?provider_shared_secret ?provider_user_name_template ?settings
      ?status ~key ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
