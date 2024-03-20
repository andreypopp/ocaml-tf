(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__end_time = { hours : float prop; minutes : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__end_time) -> ()

let yojson_of_config__end_time =
  (function
   | { hours = v_hours; minutes = v_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : config__end_time -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__end_time

[@@@deriving.end]

type config__start_time = {
  hours : float prop;
  minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__start_time) -> ()

let yojson_of_config__start_time =
  (function
   | { hours = v_hours; minutes = v_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : config__start_time -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__start_time

[@@@deriving.end]

type config = {
  day : string prop;
  end_time : config__end_time list;
  start_time : config__start_time list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       day = v_day;
       end_time = v_end_time;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__start_time v_start_time
         in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__end_time v_end_time
         in
         ("end_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type aws_connect_hours_of_operation = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  time_zone : string prop;
  config : config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_hours_of_operation) -> ()

let yojson_of_aws_connect_hours_of_operation =
  (function
   | {
       description = v_description;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       time_zone = v_time_zone;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_config v_config in
         ("config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_hours_of_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_hours_of_operation

[@@@deriving.end]

let config__end_time ~hours ~minutes () : config__end_time =
  { hours; minutes }

let config__start_time ~hours ~minutes () : config__start_time =
  { hours; minutes }

let config ~day ~end_time ~start_time () : config =
  { day; end_time; start_time }

let aws_connect_hours_of_operation ?description ?id ?tags ?tags_all
    ~instance_id ~name ~time_zone ~config () :
    aws_connect_hours_of_operation =
  {
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    time_zone;
    config;
  }

type t = {
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  time_zone : string prop;
}

let make ?description ?id ?tags ?tags_all ~instance_id ~name
    ~time_zone ~config __id =
  let __type = "aws_connect_hours_of_operation" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hours_of_operation_id =
         Prop.computed __type __id "hours_of_operation_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_hours_of_operation
        (aws_connect_hours_of_operation ?description ?id ?tags
           ?tags_all ~instance_id ~name ~time_zone ~config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~instance_id
    ~name ~time_zone ~config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~instance_id ~name
      ~time_zone ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
