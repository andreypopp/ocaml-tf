(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_service_token = {
  account_id : string prop option; [@option]
  duration : string prop option; [@option]
  id : string prop option; [@option]
  min_days_for_renewal : float prop option; [@option]
  name : string prop;
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_service_token) -> ()

let yojson_of_cloudflare_access_service_token =
  (function
   | {
       account_id = v_account_id;
       duration = v_duration;
       id = v_id;
       min_days_for_renewal = v_min_days_for_renewal;
       name = v_name;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_days_for_renewal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_days_for_renewal", arg in
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
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_service_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_service_token

[@@@deriving.end]

let cloudflare_access_service_token ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name () :
    cloudflare_access_service_token =
  { account_id; duration; id; min_days_for_renewal; name; zone_id }

type t = {
  account_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  duration : string prop;
  expires_at : string prop;
  id : string prop;
  min_days_for_renewal : float prop;
  name : string prop;
  zone_id : string prop;
}

let make ?account_id ?duration ?id ?min_days_for_renewal ?zone_id
    ~name __id =
  let __type = "cloudflare_access_service_token" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       duration = Prop.computed __type __id "duration";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       min_days_for_renewal =
         Prop.computed __type __id "min_days_for_renewal";
       name = Prop.computed __type __id "name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_service_token
        (cloudflare_access_service_token ?account_id ?duration ?id
           ?min_days_for_renewal ?zone_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?duration ?id ?min_days_for_renewal ?zone_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
