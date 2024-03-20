(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules = {
  action : string prop;
  description : string prop option; [@option]
  expression : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       action = v_action;
       description = v_description;
       expression = v_expression;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type cloudflare_waiting_room_rules = {
  id : string prop option; [@option]
  waiting_room_id : string prop;
  zone_id : string prop;
  rules : rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_waiting_room_rules) -> ()

let yojson_of_cloudflare_waiting_room_rules =
  (function
   | {
       id = v_id;
       waiting_room_id = v_waiting_room_id;
       zone_id = v_zone_id;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_waiting_room_id
         in
         ("waiting_room_id", arg) :: bnds
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
    : cloudflare_waiting_room_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_waiting_room_rules

[@@@deriving.end]

let rules ?description ?status ~action ~expression () : rules =
  { action; description; expression; status }

let cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
    ~rules () : cloudflare_waiting_room_rules =
  { id; waiting_room_id; zone_id; rules }

type t = {
  id : string prop;
  waiting_room_id : string prop;
  zone_id : string prop;
}

let make ?id ~waiting_room_id ~zone_id ~rules __id =
  let __type = "cloudflare_waiting_room_rules" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       waiting_room_id = Prop.computed __type __id "waiting_room_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room_rules
        (cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
           ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~waiting_room_id ~zone_id ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ~waiting_room_id ~zone_id ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
