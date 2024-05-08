(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domains = {
  description : string prop option; [@option]
  dns_server : string prop list option; [@option]
  suffix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domains) -> ()

let yojson_of_domains =
  (function
   | {
       description = v_description;
       dns_server = v_dns_server;
       suffix = v_suffix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_server", arg in
             bnd :: bnds
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
    : domains -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domains

[@@@deriving.end]

type cloudflare_fallback_domain = {
  account_id : string prop;
  id : string prop option; [@option]
  policy_id : string prop option; [@option]
  domains : domains list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_fallback_domain) -> ()

let yojson_of_cloudflare_fallback_domain =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       policy_id = v_policy_id;
       domains = v_domains;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_domains then bnds
         else
           let arg = (yojson_of_list yojson_of_domains) v_domains in
           let bnd = "domains", arg in
           bnd :: bnds
       in
       let bnds =
         match v_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_id", arg in
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
    : cloudflare_fallback_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_fallback_domain

[@@@deriving.end]

let domains ?description ?dns_server ?suffix () : domains =
  { description; dns_server; suffix }

let cloudflare_fallback_domain ?id ?policy_id ~account_id ~domains ()
    : cloudflare_fallback_domain =
  { account_id; id; policy_id; domains }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  policy_id : string prop;
}

let make ?id ?policy_id ~account_id ~domains __id =
  let __type = "cloudflare_fallback_domain" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_fallback_domain
        (cloudflare_fallback_domain ?id ?policy_id ~account_id
           ~domains ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_id ~account_id ~domains __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_id ~account_id ~domains __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
