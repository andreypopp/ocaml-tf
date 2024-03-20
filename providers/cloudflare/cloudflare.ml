(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare = {
  api_base_path : string prop option; [@option]
  api_client_logging : bool prop option; [@option]
  api_hostname : string prop option; [@option]
  api_key : string prop option; [@option]
  api_token : string prop option; [@option]
  api_user_service_key : string prop option; [@option]
  email : string prop option; [@option]
  max_backoff : float prop option; [@option]
  min_backoff : float prop option; [@option]
  retries : float prop option; [@option]
  rps : float prop option; [@option]
  user_agent_operator_suffix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare) -> ()

let yojson_of_cloudflare =
  (function
   | {
       api_base_path = v_api_base_path;
       api_client_logging = v_api_client_logging;
       api_hostname = v_api_hostname;
       api_key = v_api_key;
       api_token = v_api_token;
       api_user_service_key = v_api_user_service_key;
       email = v_email;
       max_backoff = v_max_backoff;
       min_backoff = v_min_backoff;
       retries = v_retries;
       rps = v_rps;
       user_agent_operator_suffix = v_user_agent_operator_suffix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_agent_operator_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_agent_operator_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_backoff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_backoff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_user_service_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_user_service_key", arg in
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
         match v_api_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_client_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_client_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_base_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_base_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare

[@@@deriving.end]

let cloudflare ?api_base_path ?api_client_logging ?api_hostname
    ?api_key ?api_token ?api_user_service_key ?email ?max_backoff
    ?min_backoff ?retries ?rps ?user_agent_operator_suffix () :
    cloudflare =
  {
    api_base_path;
    api_client_logging;
    api_hostname;
    api_key;
    api_token;
    api_user_service_key;
    email;
    max_backoff;
    min_backoff;
    retries;
    rps;
    user_agent_operator_suffix;
  }

let make ?api_base_path ?api_client_logging ?api_hostname ?api_key
    ?api_token ?api_user_service_key ?email ?max_backoff ?min_backoff
    ?retries ?rps ?user_agent_operator_suffix () =
  {
    Tf_core.id = "cloudflare";
    json =
      yojson_of_cloudflare
        (cloudflare ?api_base_path ?api_client_logging ?api_hostname
           ?api_key ?api_token ?api_user_service_key ?email
           ?max_backoff ?min_backoff ?retries ?rps
           ?user_agent_operator_suffix ());
  }

let register ?tf_module ?api_base_path ?api_client_logging
    ?api_hostname ?api_key ?api_token ?api_user_service_key ?email
    ?max_backoff ?min_backoff ?retries ?rps
    ?user_agent_operator_suffix ~version () =
  let (p : Tf_core.provider) =
    make ?api_base_path ?api_client_logging ?api_hostname ?api_key
      ?api_token ?api_user_service_key ?email ?max_backoff
      ?min_backoff ?retries ?rps ?user_agent_operator_suffix ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        ( "source",
          `String "registry.terraform.io/cloudflare/cloudflare" );
        "version", `String version;
      ]);
  ()
