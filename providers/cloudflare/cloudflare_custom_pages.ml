(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_custom_pages = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  state : string prop option; [@option]
  type_ : string prop; [@key "type"]
  url : string prop;
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_custom_pages) -> ()

let yojson_of_cloudflare_custom_pages =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       state = v_state;
       type_ = v_type_;
       url = v_url;
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
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
    : cloudflare_custom_pages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_custom_pages

[@@@deriving.end]

let cloudflare_custom_pages ?account_id ?id ?state ?zone_id ~type_
    ~url () : cloudflare_custom_pages =
  { account_id; id; state; type_; url; zone_id }

type t = {
  account_id : string prop;
  id : string prop;
  state : string prop;
  type_ : string prop;
  url : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?state ?zone_id ~type_ ~url __id =
  let __type = "cloudflare_custom_pages" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_custom_pages
        (cloudflare_custom_pages ?account_id ?id ?state ?zone_id
           ~type_ ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?state ?zone_id ~type_ ~url
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?state ?zone_id ~type_ ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
