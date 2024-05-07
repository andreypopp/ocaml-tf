(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone) -> ()

let yojson_of_cloudflare_zone =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone

[@@@deriving.end]

let cloudflare_zone ?account_id ?id ?name ?zone_id () :
    cloudflare_zone =
  { account_id; id; name; zone_id }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  vanity_name_servers : string list prop;
  zone_id : string prop;
}

let make ?account_id ?id ?name ?zone_id __id =
  let __type = "cloudflare_zone" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       paused = Prop.computed __type __id "paused";
       plan = Prop.computed __type __id "plan";
       status = Prop.computed __type __id "status";
       vanity_name_servers =
         Prop.computed __type __id "vanity_name_servers";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone
        (cloudflare_zone ?account_id ?id ?name ?zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?name ?zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?name ?zone_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
