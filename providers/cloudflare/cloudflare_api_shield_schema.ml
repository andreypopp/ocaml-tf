(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_schema = {
  id : string prop option; [@option]
  kind : string prop option; [@option]
  name : string prop;
  source : string prop;
  validation_enabled : bool prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_api_shield_schema) -> ()

let yojson_of_cloudflare_api_shield_schema =
  (function
   | {
       id = v_id;
       kind = v_kind;
       name = v_name;
       source = v_source;
       validation_enabled = v_validation_enabled;
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
         match v_validation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
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
       `Assoc bnds
    : cloudflare_api_shield_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_shield_schema

[@@@deriving.end]

let cloudflare_api_shield_schema ?id ?kind ?validation_enabled ~name
    ~source ~zone_id () : cloudflare_api_shield_schema =
  { id; kind; name; source; validation_enabled; zone_id }

type t = {
  id : string prop;
  kind : string prop;
  name : string prop;
  source : string prop;
  validation_enabled : bool prop;
  zone_id : string prop;
}

let make ?id ?kind ?validation_enabled ~name ~source ~zone_id __id =
  let __type = "cloudflare_api_shield_schema" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       source = Prop.computed __type __id "source";
       validation_enabled =
         Prop.computed __type __id "validation_enabled";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_schema
        (cloudflare_api_shield_schema ?id ?kind ?validation_enabled
           ~name ~source ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kind ?validation_enabled ~name ~source
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kind ?validation_enabled ~name ~source ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
