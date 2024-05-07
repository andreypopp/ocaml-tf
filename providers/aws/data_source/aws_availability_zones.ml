(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_availability_zones = {
  all_availability_zones : bool prop option; [@option]
  exclude_names : string prop list option; [@option]
  exclude_zone_ids : string prop list option; [@option]
  id : string prop option; [@option]
  state : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_availability_zones) -> ()

let yojson_of_aws_availability_zones =
  (function
   | {
       all_availability_zones = v_all_availability_zones;
       exclude_names = v_exclude_names;
       exclude_zone_ids = v_exclude_zone_ids;
       id = v_id;
       state = v_state;
       filter = v_filter;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
         match v_exclude_zone_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_zone_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_availability_zones", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_availability_zones -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_availability_zones

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_availability_zones ?all_availability_zones ?exclude_names
    ?exclude_zone_ids ?id ?state ?timeouts ~filter () :
    aws_availability_zones =
  {
    all_availability_zones;
    exclude_names;
    exclude_zone_ids;
    id;
    state;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  all_availability_zones : bool prop;
  exclude_names : string list prop;
  exclude_zone_ids : string list prop;
  group_names : string list prop;
  id : string prop;
  names : string list prop;
  state : string prop;
  zone_ids : string list prop;
}

let make ?all_availability_zones ?exclude_names ?exclude_zone_ids ?id
    ?state ?timeouts ~filter __id =
  let __type = "aws_availability_zones" in
  let __attrs =
    ({
       tf_name = __id;
       all_availability_zones =
         Prop.computed __type __id "all_availability_zones";
       exclude_names = Prop.computed __type __id "exclude_names";
       exclude_zone_ids =
         Prop.computed __type __id "exclude_zone_ids";
       group_names = Prop.computed __type __id "group_names";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       state = Prop.computed __type __id "state";
       zone_ids = Prop.computed __type __id "zone_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_availability_zones
        (aws_availability_zones ?all_availability_zones
           ?exclude_names ?exclude_zone_ids ?id ?state ?timeouts
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?all_availability_zones ?exclude_names
    ?exclude_zone_ids ?id ?state ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?all_availability_zones ?exclude_names ?exclude_zone_ids ?id
      ?state ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
