(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_operation_schema_validation_settings = {
  id : string prop option; [@option]
  mitigation_action : string prop option; [@option]
  operation_id : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cloudflare_api_shield_operation_schema_validation_settings) ->
  ()

let yojson_of_cloudflare_api_shield_operation_schema_validation_settings
    =
  (function
   | {
       id = v_id;
       mitigation_action = v_mitigation_action;
       operation_id = v_operation_id;
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
         let arg = yojson_of_prop yojson_of_string v_operation_id in
         ("operation_id", arg) :: bnds
       in
       let bnds =
         match v_mitigation_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mitigation_action", arg in
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
    : cloudflare_api_shield_operation_schema_validation_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cloudflare_api_shield_operation_schema_validation_settings

[@@@deriving.end]

let cloudflare_api_shield_operation_schema_validation_settings ?id
    ?mitigation_action ~operation_id ~zone_id () :
    cloudflare_api_shield_operation_schema_validation_settings =
  { id; mitigation_action; operation_id; zone_id }

type t = {
  id : string prop;
  mitigation_action : string prop;
  operation_id : string prop;
  zone_id : string prop;
}

let make ?id ?mitigation_action ~operation_id ~zone_id __id =
  let __type =
    "cloudflare_api_shield_operation_schema_validation_settings"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       mitigation_action =
         Prop.computed __type __id "mitigation_action";
       operation_id = Prop.computed __type __id "operation_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_operation_schema_validation_settings
        (cloudflare_api_shield_operation_schema_validation_settings
           ?id ?mitigation_action ~operation_id ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mitigation_action ~operation_id ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mitigation_action ~operation_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
