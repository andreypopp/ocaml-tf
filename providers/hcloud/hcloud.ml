(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud = {
  endpoint : string prop option; [@option]
  poll_function : string prop option; [@option]
  poll_interval : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud) -> ()

let yojson_of_hcloud =
  (function
   | {
       endpoint = v_endpoint;
       poll_function = v_poll_function;
       poll_interval = v_poll_interval;
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
         match v_poll_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "poll_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_poll_function with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "poll_function", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud

[@@@deriving.end]

let hcloud ?endpoint ?poll_function ?poll_interval ?token () : hcloud
    =
  { endpoint; poll_function; poll_interval; token }

let make ?endpoint ?poll_function ?poll_interval ?token () =
  {
    Tf_core.id = "hcloud";
    json =
      yojson_of_hcloud
        (hcloud ?endpoint ?poll_function ?poll_interval ?token ());
  }

let register ?tf_module ?endpoint ?poll_function ?poll_interval
    ?token ~version () =
  let (p : Tf_core.provider) =
    make ?endpoint ?poll_function ?poll_interval ?token ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/hetznercloud/hcloud";
        "version", `String version;
      ]);
  ()
