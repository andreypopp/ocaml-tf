(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_behavior = {
  id : string prop option; [@option]
  location_granularity_type : string prop option; [@option]
  name : string prop;
  number_of_authentications : float prop option; [@option]
  radius_from_location : float prop option; [@option]
  status : string prop option; [@option]
  type_ : string prop; [@key "type"]
  velocity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_behavior) -> ()

let yojson_of_okta_behavior =
  (function
   | {
       id = v_id;
       location_granularity_type = v_location_granularity_type;
       name = v_name;
       number_of_authentications = v_number_of_authentications;
       radius_from_location = v_radius_from_location;
       status = v_status;
       type_ = v_type_;
       velocity = v_velocity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_velocity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "velocity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_radius_from_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "radius_from_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_authentications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_authentications", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location_granularity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_granularity_type", arg in
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
    : okta_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_behavior

[@@@deriving.end]

let okta_behavior ?id ?location_granularity_type
    ?number_of_authentications ?radius_from_location ?status
    ?velocity ~name ~type_ () : okta_behavior =
  {
    id;
    location_granularity_type;
    name;
    number_of_authentications;
    radius_from_location;
    status;
    type_;
    velocity;
  }

type t = {
  tf_name : string;
  id : string prop;
  location_granularity_type : string prop;
  name : string prop;
  number_of_authentications : float prop;
  radius_from_location : float prop;
  status : string prop;
  type_ : string prop;
  velocity : float prop;
}

let make ?id ?location_granularity_type ?number_of_authentications
    ?radius_from_location ?status ?velocity ~name ~type_ __id =
  let __type = "okta_behavior" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location_granularity_type =
         Prop.computed __type __id "location_granularity_type";
       name = Prop.computed __type __id "name";
       number_of_authentications =
         Prop.computed __type __id "number_of_authentications";
       radius_from_location =
         Prop.computed __type __id "radius_from_location";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       velocity = Prop.computed __type __id "velocity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_behavior
        (okta_behavior ?id ?location_granularity_type
           ?number_of_authentications ?radius_from_location ?status
           ?velocity ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location_granularity_type
    ?number_of_authentications ?radius_from_location ?status
    ?velocity ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location_granularity_type ?number_of_authentications
      ?radius_from_location ?status ?velocity ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
