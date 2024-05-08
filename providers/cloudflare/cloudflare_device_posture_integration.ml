(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config = {
  access_client_id : string prop option; [@option]
  access_client_secret : string prop option; [@option]
  api_url : string prop option; [@option]
  auth_url : string prop option; [@option]
  client_id : string prop option; [@option]
  client_key : string prop option; [@option]
  client_secret : string prop option; [@option]
  customer_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       access_client_id = v_access_client_id;
       access_client_secret = v_access_client_secret;
       api_url = v_api_url;
       auth_url = v_auth_url;
       client_id = v_client_id;
       client_key = v_client_key;
       client_secret = v_client_secret;
       customer_id = v_customer_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_customer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_id", arg in
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
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
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
       let bnds =
         match v_auth_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type cloudflare_device_posture_integration = {
  account_id : string prop;
  id : string prop option; [@option]
  identifier : string prop option; [@option]
  interval : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  config : config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_posture_integration) -> ()

let yojson_of_cloudflare_device_posture_integration =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       identifier = v_identifier;
       interval = v_interval;
       name = v_name;
       type_ = v_type_;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_device_posture_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_posture_integration

[@@@deriving.end]

let config ?access_client_id ?access_client_secret ?api_url ?auth_url
    ?client_id ?client_key ?client_secret ?customer_id () : config =
  {
    access_client_id;
    access_client_secret;
    api_url;
    auth_url;
    client_id;
    client_key;
    client_secret;
    customer_id;
  }

let cloudflare_device_posture_integration ?id ?identifier ?interval
    ?(config = []) ~account_id ~name ~type_ () :
    cloudflare_device_posture_integration =
  { account_id; id; identifier; interval; name; type_; config }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  identifier : string prop;
  interval : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?id ?identifier ?interval ?(config = []) ~account_id ~name
    ~type_ __id =
  let __type = "cloudflare_device_posture_integration" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_posture_integration
        (cloudflare_device_posture_integration ?id ?identifier
           ?interval ~config ~account_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?identifier ?interval ?(config = [])
    ~account_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?identifier ?interval ~config ~account_id ~name ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
