(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_schema_validation_settings = {
  id : string prop option; [@option]
  validation_default_mitigation_action : string prop;
  validation_override_mitigation_action : string prop option;
      [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cloudflare_api_shield_schema_validation_settings) -> ()

let yojson_of_cloudflare_api_shield_schema_validation_settings =
  (function
   | {
       id = v_id;
       validation_default_mitigation_action =
         v_validation_default_mitigation_action;
       validation_override_mitigation_action =
         v_validation_override_mitigation_action;
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
         match v_validation_override_mitigation_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "validation_override_mitigation_action", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_validation_default_mitigation_action
         in
         ("validation_default_mitigation_action", arg) :: bnds
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
    : cloudflare_api_shield_schema_validation_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_shield_schema_validation_settings

[@@@deriving.end]

let cloudflare_api_shield_schema_validation_settings ?id
    ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id () :
    cloudflare_api_shield_schema_validation_settings =
  {
    id;
    validation_default_mitigation_action;
    validation_override_mitigation_action;
    zone_id;
  }

type t = {
  tf_name : string;
  id : string prop;
  validation_default_mitigation_action : string prop;
  validation_override_mitigation_action : string prop;
  zone_id : string prop;
}

let make ?id ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id __id =
  let __type = "cloudflare_api_shield_schema_validation_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       validation_default_mitigation_action =
         Prop.computed __type __id
           "validation_default_mitigation_action";
       validation_override_mitigation_action =
         Prop.computed __type __id
           "validation_override_mitigation_action";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_schema_validation_settings
        (cloudflare_api_shield_schema_validation_settings ?id
           ?validation_override_mitigation_action
           ~validation_default_mitigation_action ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validation_override_mitigation_action
      ~validation_default_mitigation_action ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
