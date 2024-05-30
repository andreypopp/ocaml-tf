(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta = {
  access_token : string prop option; [@option]
  api_token : string prop option; [@option]
  backoff : bool prop option; [@option]
  base_url : string prop option; [@option]
  client_id : string prop option; [@option]
  http_proxy : string prop option; [@option]
  log_level : float prop option; [@option]
  max_api_capacity : float prop option; [@option]
  max_retries : float prop option; [@option]
  max_wait_seconds : float prop option; [@option]
  min_wait_seconds : float prop option; [@option]
  org_name : string prop option; [@option]
  parallelism : float prop option; [@option]
  private_key : string prop option; [@option]
  private_key_id : string prop option; [@option]
  request_timeout : float prop option; [@option]
  scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta) -> ()

let yojson_of_okta =
  (function
   | {
       access_token = v_access_token;
       api_token = v_api_token;
       backoff = v_backoff;
       base_url = v_base_url;
       client_id = v_client_id;
       http_proxy = v_http_proxy;
       log_level = v_log_level;
       max_api_capacity = v_max_api_capacity;
       max_retries = v_max_retries;
       max_wait_seconds = v_max_wait_seconds;
       min_wait_seconds = v_min_wait_seconds;
       org_name = v_org_name;
       parallelism = v_parallelism;
       private_key = v_private_key;
       private_key_id = v_private_key_id;
       request_timeout = v_request_timeout;
       scopes = v_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "request_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_wait_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_wait_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_wait_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_wait_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_api_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_api_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_proxy", arg in
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
         match v_base_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "backoff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta

[@@@deriving.end]

let okta ?access_token ?api_token ?backoff ?base_url ?client_id
    ?http_proxy ?log_level ?max_api_capacity ?max_retries
    ?max_wait_seconds ?min_wait_seconds ?org_name ?parallelism
    ?private_key ?private_key_id ?request_timeout ?scopes () : okta =
  {
    access_token;
    api_token;
    backoff;
    base_url;
    client_id;
    http_proxy;
    log_level;
    max_api_capacity;
    max_retries;
    max_wait_seconds;
    min_wait_seconds;
    org_name;
    parallelism;
    private_key;
    private_key_id;
    request_timeout;
    scopes;
  }

let make ?access_token ?api_token ?backoff ?base_url ?client_id
    ?http_proxy ?log_level ?max_api_capacity ?max_retries
    ?max_wait_seconds ?min_wait_seconds ?org_name ?parallelism
    ?private_key ?private_key_id ?request_timeout ?scopes () =
  {
    Tf_core.id = "okta";
    json =
      yojson_of_okta
        (okta ?access_token ?api_token ?backoff ?base_url ?client_id
           ?http_proxy ?log_level ?max_api_capacity ?max_retries
           ?max_wait_seconds ?min_wait_seconds ?org_name ?parallelism
           ?private_key ?private_key_id ?request_timeout ?scopes ());
  }

let register ?tf_module ?access_token ?api_token ?backoff ?base_url
    ?client_id ?http_proxy ?log_level ?max_api_capacity ?max_retries
    ?max_wait_seconds ?min_wait_seconds ?org_name ?parallelism
    ?private_key ?private_key_id ?request_timeout ?scopes ~version ()
    =
  let (p : Tf_core.provider) =
    make ?access_token ?api_token ?backoff ?base_url ?client_id
      ?http_proxy ?log_level ?max_api_capacity ?max_retries
      ?max_wait_seconds ?min_wait_seconds ?org_name ?parallelism
      ?private_key ?private_key_id ?request_timeout ?scopes ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/okta/okta";
        "version", `String version;
      ]);
  ()
