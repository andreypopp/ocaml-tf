(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_logpush_ownership_challenge = {
  account_id : string prop option; [@option]
  destination_conf : string prop;
  id : string prop option; [@option]
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_logpush_ownership_challenge) -> ()

let yojson_of_cloudflare_logpush_ownership_challenge =
  (function
   | {
       account_id = v_account_id;
       destination_conf = v_destination_conf;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_conf
         in
         ("destination_conf", arg) :: bnds
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
    : cloudflare_logpush_ownership_challenge ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_logpush_ownership_challenge

[@@@deriving.end]

let cloudflare_logpush_ownership_challenge ?account_id ?id ?zone_id
    ~destination_conf () : cloudflare_logpush_ownership_challenge =
  { account_id; destination_conf; id; zone_id }

type t = {
  tf_name : string;
  account_id : string prop;
  destination_conf : string prop;
  id : string prop;
  ownership_challenge_filename : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?zone_id ~destination_conf __id =
  let __type = "cloudflare_logpush_ownership_challenge" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       destination_conf =
         Prop.computed __type __id "destination_conf";
       id = Prop.computed __type __id "id";
       ownership_challenge_filename =
         Prop.computed __type __id "ownership_challenge_filename";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_logpush_ownership_challenge
        (cloudflare_logpush_ownership_challenge ?account_id ?id
           ?zone_id ~destination_conf ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?zone_id ~destination_conf
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?zone_id ~destination_conf __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
