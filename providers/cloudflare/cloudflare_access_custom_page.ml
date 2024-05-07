(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_custom_page = {
  account_id : string prop option; [@option]
  app_count : float prop option; [@option]
  custom_html : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_custom_page) -> ()

let yojson_of_cloudflare_access_custom_page =
  (function
   | {
       account_id = v_account_id;
       app_count = v_app_count;
       custom_html = v_custom_html;
       id = v_id;
       name = v_name;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_custom_html with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_html", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_count", arg in
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
    : cloudflare_access_custom_page ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_custom_page

[@@@deriving.end]

let cloudflare_access_custom_page ?account_id ?app_count ?custom_html
    ?id ?zone_id ~name ~type_ () : cloudflare_access_custom_page =
  { account_id; app_count; custom_html; id; name; type_; zone_id }

type t = {
  tf_name : string;
  account_id : string prop;
  app_count : float prop;
  custom_html : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?account_id ?app_count ?custom_html ?id ?zone_id ~name
    ~type_ __id =
  let __type = "cloudflare_access_custom_page" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       app_count = Prop.computed __type __id "app_count";
       custom_html = Prop.computed __type __id "custom_html";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_custom_page
        (cloudflare_access_custom_page ?account_id ?app_count
           ?custom_html ?id ?zone_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?app_count ?custom_html ?id
    ?zone_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?app_count ?custom_html ?id ?zone_id ~name
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
