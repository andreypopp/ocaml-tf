(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_url_normalization_settings = {
  id : string prop option; [@option]
  scope : string prop;
  type_ : string prop; [@key "type"]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_url_normalization_settings) -> ()

let yojson_of_cloudflare_url_normalization_settings =
  (function
   | {
       id = v_id;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_url_normalization_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_url_normalization_settings

[@@@deriving.end]

let cloudflare_url_normalization_settings ?id ~scope ~type_ ~zone_id
    () : cloudflare_url_normalization_settings =
  { id; scope; type_; zone_id }

type t = {
  tf_name : string;
  id : string prop;
  scope : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?id ~scope ~type_ ~zone_id __id =
  let __type = "cloudflare_url_normalization_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       scope = Prop.computed __type __id "scope";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_url_normalization_settings
        (cloudflare_url_normalization_settings ?id ~scope ~type_
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~scope ~type_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~scope ~type_ ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
