(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean = {
  api_endpoint : string prop option; [@option]
  http_retry_max : float prop option; [@option]
  http_retry_wait_max : float prop option; [@option]
  http_retry_wait_min : float prop option; [@option]
  requests_per_second : float prop option; [@option]
  spaces_access_id : string prop option; [@option]
  spaces_endpoint : string prop option; [@option]
  spaces_secret_key : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean) -> ()

let yojson_of_digitalocean =
  (function
   | {
       api_endpoint = v_api_endpoint;
       http_retry_max = v_http_retry_max;
       http_retry_wait_max = v_http_retry_wait_max;
       http_retry_wait_min = v_http_retry_wait_min;
       requests_per_second = v_requests_per_second;
       spaces_access_id = v_spaces_access_id;
       spaces_endpoint = v_spaces_endpoint;
       spaces_secret_key = v_spaces_secret_key;
       token = v_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spaces_secret_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spaces_secret_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spaces_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spaces_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spaces_access_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spaces_access_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requests_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "requests_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_retry_wait_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_retry_wait_min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_retry_wait_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_retry_wait_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_retry_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_retry_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean

[@@@deriving.end]

let digitalocean ?api_endpoint ?http_retry_max ?http_retry_wait_max
    ?http_retry_wait_min ?requests_per_second ?spaces_access_id
    ?spaces_endpoint ?spaces_secret_key ?token () : digitalocean =
  {
    api_endpoint;
    http_retry_max;
    http_retry_wait_max;
    http_retry_wait_min;
    requests_per_second;
    spaces_access_id;
    spaces_endpoint;
    spaces_secret_key;
    token;
  }

let make ?api_endpoint ?http_retry_max ?http_retry_wait_max
    ?http_retry_wait_min ?requests_per_second ?spaces_access_id
    ?spaces_endpoint ?spaces_secret_key ?token () =
  {
    Tf_core.id = "digitalocean";
    json =
      yojson_of_digitalocean
        (digitalocean ?api_endpoint ?http_retry_max
           ?http_retry_wait_max ?http_retry_wait_min
           ?requests_per_second ?spaces_access_id ?spaces_endpoint
           ?spaces_secret_key ?token ());
  }

let register ?tf_module ?api_endpoint ?http_retry_max
    ?http_retry_wait_max ?http_retry_wait_min ?requests_per_second
    ?spaces_access_id ?spaces_endpoint ?spaces_secret_key ?token
    ~version () =
  let (p : Tf_core.provider) =
    make ?api_endpoint ?http_retry_max ?http_retry_wait_max
      ?http_retry_wait_min ?requests_per_second ?spaces_access_id
      ?spaces_endpoint ?spaces_secret_key ?token ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        ( "source",
          `String "registry.terraform.io/digitalocean/digitalocean" );
        "version", `String version;
      ]);
  ()
