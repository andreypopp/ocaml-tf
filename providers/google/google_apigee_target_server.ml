(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s_sl_info__common_name = {
  value : string prop option; [@option]
  wildcard_match : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s_sl_info__common_name) -> ()

let yojson_of_s_sl_info__common_name =
  (function
   | { value = v_value; wildcard_match = v_wildcard_match } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wildcard_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wildcard_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s_sl_info__common_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s_sl_info__common_name

[@@@deriving.end]

type s_sl_info = {
  ciphers : string prop list option; [@option]
  client_auth_enabled : bool prop option; [@option]
  enabled : bool prop;
  ignore_validation_errors : bool prop option; [@option]
  key_alias : string prop option; [@option]
  key_store : string prop option; [@option]
  protocols : string prop list option; [@option]
  trust_store : string prop option; [@option]
  common_name : s_sl_info__common_name list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s_sl_info) -> ()

let yojson_of_s_sl_info =
  (function
   | {
       ciphers = v_ciphers;
       client_auth_enabled = v_client_auth_enabled;
       enabled = v_enabled;
       ignore_validation_errors = v_ignore_validation_errors;
       key_alias = v_key_alias;
       key_store = v_key_store;
       protocols = v_protocols;
       trust_store = v_trust_store;
       common_name = v_common_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_s_sl_info__common_name
             v_common_name
         in
         ("common_name", arg) :: bnds
       in
       let bnds =
         match v_trust_store with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trust_store", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_store with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_store", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_alias", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_validation_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_validation_errors", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_client_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ciphers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ciphers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s_sl_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s_sl_info

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_apigee_target_server = {
  description : string prop option; [@option]
  env_id : string prop;
  host : string prop;
  id : string prop option; [@option]
  is_enabled : bool prop option; [@option]
  name : string prop;
  port : float prop;
  protocol : string prop option; [@option]
  s_sl_info : s_sl_info list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_target_server) -> ()

let yojson_of_google_apigee_target_server =
  (function
   | {
       description = v_description;
       env_id = v_env_id;
       host = v_host;
       id = v_id;
       is_enabled = v_is_enabled;
       name = v_name;
       port = v_port;
       protocol = v_protocol;
       s_sl_info = v_s_sl_info;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_s_sl_info v_s_sl_info in
         ("s_sl_info", arg) :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_env_id in
         ("env_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_target_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_target_server

[@@@deriving.end]

let s_sl_info__common_name ?value ?wildcard_match () :
    s_sl_info__common_name =
  { value; wildcard_match }

let s_sl_info ?ciphers ?client_auth_enabled ?ignore_validation_errors
    ?key_alias ?key_store ?protocols ?trust_store ~enabled
    ~common_name () : s_sl_info =
  {
    ciphers;
    client_auth_enabled;
    enabled;
    ignore_validation_errors;
    key_alias;
    key_store;
    protocols;
    trust_store;
    common_name;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_target_server ?description ?id ?is_enabled
    ?protocol ?timeouts ~env_id ~host ~name ~port ~s_sl_info () :
    google_apigee_target_server =
  {
    description;
    env_id;
    host;
    id;
    is_enabled;
    name;
    port;
    protocol;
    s_sl_info;
    timeouts;
  }

type t = {
  description : string prop;
  env_id : string prop;
  host : string prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
}

let make ?description ?id ?is_enabled ?protocol ?timeouts ~env_id
    ~host ~name ~port ~s_sl_info __id =
  let __type = "google_apigee_target_server" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       env_id = Prop.computed __type __id "env_id";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       is_enabled = Prop.computed __type __id "is_enabled";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_target_server
        (google_apigee_target_server ?description ?id ?is_enabled
           ?protocol ?timeouts ~env_id ~host ~name ~port ~s_sl_info
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?is_enabled ?protocol
    ?timeouts ~env_id ~host ~name ~port ~s_sl_info __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?is_enabled ?protocol ?timeouts ~env_id
      ~host ~name ~port ~s_sl_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
