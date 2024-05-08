(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nas1_configuration = {
  size : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nas1_configuration) -> ()

let yojson_of_nas1_configuration =
  (function
   | { size = v_size; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       `Assoc bnds
    : nas1_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nas1_configuration

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

type attached_clusters = {
  cluster_name : string prop;
  cluster_status : string prop;
  cluster_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attached_clusters) -> ()

let yojson_of_attached_clusters =
  (function
   | {
       cluster_name = v_cluster_name;
       cluster_status = v_cluster_status;
       cluster_type = v_cluster_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_type in
         ("cluster_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_status
         in
         ("cluster_status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : attached_clusters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attached_clusters

[@@@deriving.end]

type aws_finspace_kx_volume = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  az_mode : string prop;
  description : string prop option; [@option]
  environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  nas1_configuration : nas1_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_finspace_kx_volume) -> ()

let yojson_of_aws_finspace_kx_volume =
  (function
   | {
       availability_zones = v_availability_zones;
       az_mode = v_az_mode;
       description = v_description;
       environment_id = v_environment_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       nas1_configuration = v_nas1_configuration;
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
         if Stdlib.( = ) [] v_nas1_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nas1_configuration)
               v_nas1_configuration
           in
           let bnd = "nas1_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_az_mode in
         ("az_mode", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_finspace_kx_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_finspace_kx_volume

[@@@deriving.end]

let nas1_configuration ~size ~type_ () : nas1_configuration =
  { size; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_volume ?description ?id ?tags ?tags_all
    ?(nas1_configuration = []) ?timeouts ~availability_zones ~az_mode
    ~environment_id ~name ~type_ () : aws_finspace_kx_volume =
  {
    availability_zones;
    az_mode;
    description;
    environment_id;
    id;
    name;
    tags;
    tags_all;
    type_;
    nas1_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  attached_clusters : attached_clusters list prop;
  availability_zones : string list prop;
  az_mode : string prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?tags ?tags_all ?(nas1_configuration = [])
    ?timeouts ~availability_zones ~az_mode ~environment_id ~name
    ~type_ __id =
  let __type = "aws_finspace_kx_volume" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       attached_clusters =
         Prop.computed __type __id "attached_clusters";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       az_mode = Prop.computed __type __id "az_mode";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_volume
        (aws_finspace_kx_volume ?description ?id ?tags ?tags_all
           ~nas1_configuration ?timeouts ~availability_zones ~az_mode
           ~environment_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(nas1_configuration = []) ?timeouts ~availability_zones ~az_mode
    ~environment_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~nas1_configuration
      ?timeouts ~availability_zones ~az_mode ~environment_id ~name
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
