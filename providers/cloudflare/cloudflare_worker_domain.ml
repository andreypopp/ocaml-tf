(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_domain = {
  account_id : string prop;
  environment : string prop option; [@option]
  hostname : string prop;
  id : string prop option; [@option]
  service : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_worker_domain) -> ()

let yojson_of_cloudflare_worker_domain =
  (function
   | {
       account_id = v_account_id;
       environment = v_environment;
       hostname = v_hostname;
       id = v_id;
       service = v_service;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_worker_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_worker_domain

[@@@deriving.end]

let cloudflare_worker_domain ?environment ?id ~account_id ~hostname
    ~service ~zone_id () : cloudflare_worker_domain =
  { account_id; environment; hostname; id; service; zone_id }

type t = {
  tf_name : string;
  account_id : string prop;
  environment : string prop;
  hostname : string prop;
  id : string prop;
  service : string prop;
  zone_id : string prop;
}

let make ?environment ?id ~account_id ~hostname ~service ~zone_id
    __id =
  let __type = "cloudflare_worker_domain" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       environment = Prop.computed __type __id "environment";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       service = Prop.computed __type __id "service";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_domain
        (cloudflare_worker_domain ?environment ?id ~account_id
           ~hostname ~service ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?environment ?id ~account_id ~hostname
    ~service ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?environment ?id ~account_id ~hostname ~service ~zone_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
