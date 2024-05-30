(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_auth = {
  id : string prop;
  installation_id : string prop;
  pem_file : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_auth) -> ()

let yojson_of_app_auth =
  (function
   | {
       id = v_id;
       installation_id = v_installation_id;
       pem_file = v_pem_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pem_file in
         ("pem_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_installation_id
         in
         ("installation_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : app_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_auth

[@@@deriving.end]

type github = {
  base_url : string prop option; [@option]
  insecure : bool prop option; [@option]
  max_retries : float prop option; [@option]
  organization : string prop option; [@option]
  owner : string prop option; [@option]
  parallel_requests : bool prop option; [@option]
  read_delay_ms : float prop option; [@option]
  retry_delay_ms : float prop option; [@option]
  retryable_errors : float prop list option; [@option]
  token : string prop option; [@option]
  write_delay_ms : float prop option; [@option]
  app_auth : app_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github) -> ()

let yojson_of_github =
  (function
   | {
       base_url = v_base_url;
       insecure = v_insecure;
       max_retries = v_max_retries;
       organization = v_organization;
       owner = v_owner;
       parallel_requests = v_parallel_requests;
       read_delay_ms = v_read_delay_ms;
       retry_delay_ms = v_retry_delay_ms;
       retryable_errors = v_retryable_errors;
       token = v_token;
       write_delay_ms = v_write_delay_ms;
       app_auth = v_app_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_app_auth then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_auth) v_app_auth
           in
           let bnd = "app_auth", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "write_delay_ms", arg in
             bnd :: bnds
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
         match v_retryable_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "retryable_errors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallel_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "parallel_requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
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
         match v_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure", arg in
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
       `Assoc bnds
    : github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github

[@@@deriving.end]

let app_auth ~id ~installation_id ~pem_file () : app_auth =
  { id; installation_id; pem_file }

let github ?base_url ?insecure ?max_retries ?organization ?owner
    ?parallel_requests ?read_delay_ms ?retry_delay_ms
    ?retryable_errors ?token ?write_delay_ms ?(app_auth = []) () :
    github =
  {
    base_url;
    insecure;
    max_retries;
    organization;
    owner;
    parallel_requests;
    read_delay_ms;
    retry_delay_ms;
    retryable_errors;
    token;
    write_delay_ms;
    app_auth;
  }

let make ?base_url ?insecure ?max_retries ?organization ?owner
    ?parallel_requests ?read_delay_ms ?retry_delay_ms
    ?retryable_errors ?token ?write_delay_ms ?(app_auth = []) () =
  {
    Tf_core.id = "github";
    json =
      yojson_of_github
        (github ?base_url ?insecure ?max_retries ?organization ?owner
           ?parallel_requests ?read_delay_ms ?retry_delay_ms
           ?retryable_errors ?token ?write_delay_ms ~app_auth ());
  }

let register ?tf_module ?base_url ?insecure ?max_retries
    ?organization ?owner ?parallel_requests ?read_delay_ms
    ?retry_delay_ms ?retryable_errors ?token ?write_delay_ms
    ?(app_auth = []) ~version () =
  let (p : Tf_core.provider) =
    make ?base_url ?insecure ?max_retries ?organization ?owner
      ?parallel_requests ?read_delay_ms ?retry_delay_ms
      ?retryable_errors ?token ?write_delay_ms ~app_auth ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/integrations/github";
        "version", `String version;
      ]);
  ()
