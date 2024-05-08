(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type segment_configurations = {
  db_paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segment_configurations) -> ()

let yojson_of_segment_configurations =
  (function
   | { db_paths = v_db_paths; volume_name = v_volume_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_db_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_db_paths
           in
           let bnd = "db_paths", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : segment_configurations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segment_configurations

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_finspace_kx_dataview = {
  auto_update : bool prop;
  availability_zone_id : string prop option; [@option]
  az_mode : string prop;
  changeset_id : string prop option; [@option]
  database_name : string prop;
  description : string prop option; [@option]
  environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  segment_configurations : segment_configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_finspace_kx_dataview) -> ()

let yojson_of_aws_finspace_kx_dataview =
  (function
   | {
       auto_update = v_auto_update;
       availability_zone_id = v_availability_zone_id;
       az_mode = v_az_mode;
       changeset_id = v_changeset_id;
       database_name = v_database_name;
       description = v_description;
       environment_id = v_environment_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       segment_configurations = v_segment_configurations;
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
         if Stdlib.( = ) [] v_segment_configurations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_segment_configurations)
               v_segment_configurations
           in
           let bnd = "segment_configurations", arg in
           bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_changeset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "changeset_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_az_mode in
         ("az_mode", arg) :: bnds
       in
       let bnds =
         match v_availability_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_update in
         ("auto_update", arg) :: bnds
       in
       `Assoc bnds
    : aws_finspace_kx_dataview -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_finspace_kx_dataview

[@@@deriving.end]

let segment_configurations ~db_paths ~volume_name () :
    segment_configurations =
  { db_paths; volume_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?(segment_configurations = [])
    ?timeouts ~auto_update ~az_mode ~database_name ~environment_id
    ~name () : aws_finspace_kx_dataview =
  {
    auto_update;
    availability_zone_id;
    az_mode;
    changeset_id;
    database_name;
    description;
    environment_id;
    id;
    name;
    tags;
    tags_all;
    segment_configurations;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_update : bool prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  changeset_id : string prop;
  created_timestamp : string prop;
  database_name : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?availability_zone_id ?changeset_id ?description ?id ?tags
    ?tags_all ?(segment_configurations = []) ?timeouts ~auto_update
    ~az_mode ~database_name ~environment_id ~name __id =
  let __type = "aws_finspace_kx_dataview" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_update = Prop.computed __type __id "auto_update";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       az_mode = Prop.computed __type __id "az_mode";
       changeset_id = Prop.computed __type __id "changeset_id";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       database_name = Prop.computed __type __id "database_name";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_dataview
        (aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
           ?description ?id ?tags ?tags_all ~segment_configurations
           ?timeouts ~auto_update ~az_mode ~database_name
           ~environment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?(segment_configurations = [])
    ?timeouts ~auto_update ~az_mode ~database_name ~environment_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_id ?changeset_id ?description ?id ?tags
      ?tags_all ~segment_configurations ?timeouts ~auto_update
      ~az_mode ~database_name ~environment_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
