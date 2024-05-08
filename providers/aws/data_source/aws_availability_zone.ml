(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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

type aws_availability_zone = {
  all_availability_zones : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  state : string prop option; [@option]
  zone_id : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_availability_zone) -> ()

let yojson_of_aws_availability_zone =
  (function
   | {
       all_availability_zones = v_all_availability_zones;
       id = v_id;
       name = v_name;
       state = v_state;
       zone_id = v_zone_id;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_all_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_availability_zones", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_availability_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_availability_zone

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_availability_zone ?all_availability_zones ?id ?name ?state
    ?zone_id ?timeouts ~filter () : aws_availability_zone =
  {
    all_availability_zones;
    id;
    name;
    state;
    zone_id;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  all_availability_zones : bool prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  name_suffix : string prop;
  network_border_group : string prop;
  opt_in_status : string prop;
  parent_zone_id : string prop;
  parent_zone_name : string prop;
  region : string prop;
  state : string prop;
  zone_id : string prop;
  zone_type : string prop;
}

let make ?all_availability_zones ?id ?name ?state ?zone_id ?timeouts
    ~filter __id =
  let __type = "aws_availability_zone" in
  let __attrs =
    ({
       tf_name = __id;
       all_availability_zones =
         Prop.computed __type __id "all_availability_zones";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_suffix = Prop.computed __type __id "name_suffix";
       network_border_group =
         Prop.computed __type __id "network_border_group";
       opt_in_status = Prop.computed __type __id "opt_in_status";
       parent_zone_id = Prop.computed __type __id "parent_zone_id";
       parent_zone_name =
         Prop.computed __type __id "parent_zone_name";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       zone_id = Prop.computed __type __id "zone_id";
       zone_type = Prop.computed __type __id "zone_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_availability_zone
        (aws_availability_zone ?all_availability_zones ?id ?name
           ?state ?zone_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?all_availability_zones ?id ?name ?state
    ?zone_id ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?all_availability_zones ?id ?name ?state ?zone_id ?timeouts
      ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
