(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple = {
  account : string prop option; [@option]
  prefetch : bool prop option; [@option]
  sandbox : bool prop option; [@option]
  token : string prop option; [@option]
  user_agent : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple) -> ()

let yojson_of_dnsimple =
  (function
   | {
       account = v_account;
       prefetch = v_prefetch;
       sandbox = v_sandbox;
       token = v_token;
       user_agent = v_user_agent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_agent", arg in
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
         match v_sandbox with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sandbox", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefetch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prefetch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnsimple -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple

[@@@deriving.end]

let dnsimple ?account ?prefetch ?sandbox ?token ?user_agent () :
    dnsimple =
  { account; prefetch; sandbox; token; user_agent }

let make ?account ?prefetch ?sandbox ?token ?user_agent () =
  {
    Tf_core.id = "dnsimple";
    json =
      yojson_of_dnsimple
        (dnsimple ?account ?prefetch ?sandbox ?token ?user_agent ());
  }

let register ?tf_module ?account ?prefetch ?sandbox ?token
    ?user_agent ~version () =
  let (p : Tf_core.provider) =
    make ?account ?prefetch ?sandbox ?token ?user_agent ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/dnsimple/dnsimple";
        "version", `String version;
      ]);
  ()
