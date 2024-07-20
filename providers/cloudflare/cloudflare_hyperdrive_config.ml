(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_hyperdrive_config = {
  account_id : string prop;
  caching : json prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  origin : json prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_hyperdrive_config) -> ()

let yojson_of_cloudflare_hyperdrive_config =
  (function
   | {
       account_id = v_account_id;
       caching = v_caching;
       id = v_id;
       name = v_name;
       origin = v_origin;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_json v_origin in
         ("origin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_json v in
             let bnd = "caching", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_hyperdrive_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_hyperdrive_config

[@@@deriving.end]

let cloudflare_hyperdrive_config ?caching ?id ~account_id ~name
    ~origin () : cloudflare_hyperdrive_config =
  { account_id; caching; id; name; origin }

type t = {
  tf_name : string;
  account_id : string prop;
  caching : json prop;
  id : string prop;
  name : string prop;
  origin : json prop;
}

let make ?caching ?id ~account_id ~name ~origin __id =
  let __type = "cloudflare_hyperdrive_config" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       caching = Prop.computed __type __id "caching";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin = Prop.computed __type __id "origin";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_hyperdrive_config
        (cloudflare_hyperdrive_config ?caching ?id ~account_id ~name
           ~origin ());
    attrs = __attrs;
  }

let register ?tf_module ?caching ?id ~account_id ~name ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?caching ?id ~account_id ~name ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
