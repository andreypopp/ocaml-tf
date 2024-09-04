(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type split = {
  allocations : string prop Tf_core.assoc;
  shard_by : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : split) -> ()

let yojson_of_split =
  (function
   | { allocations = v_allocations; shard_by = v_shard_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_shard_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shard_by", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_allocations
         in
         ("allocations", arg) :: bnds
       in
       `Assoc bnds
    : split -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_split

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

type google_app_engine_service_split_traffic = {
  id : string prop option; [@option]
  migrate_traffic : bool prop option; [@option]
  project : string prop option; [@option]
  service : string prop;
  split : split list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_service_split_traffic) -> ()

let yojson_of_google_app_engine_service_split_traffic =
  (function
   | {
       id = v_id;
       migrate_traffic = v_migrate_traffic;
       project = v_project;
       service = v_service;
       split = v_split;
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
         if Stdlib.( = ) [] v_split then bnds
         else
           let arg = (yojson_of_list yojson_of_split) v_split in
           let bnd = "split", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_migrate_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "migrate_traffic", arg in
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
    : google_app_engine_service_split_traffic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_service_split_traffic

[@@@deriving.end]

let split ?shard_by ~allocations () : split =
  { allocations; shard_by }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_service_split_traffic ?id ?migrate_traffic
    ?project ?timeouts ~service ~split () :
    google_app_engine_service_split_traffic =
  { id; migrate_traffic; project; service; split; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  migrate_traffic : bool prop;
  project : string prop;
  service : string prop;
}

let make ?id ?migrate_traffic ?project ?timeouts ~service ~split __id
    =
  let __type = "google_app_engine_service_split_traffic" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       migrate_traffic = Prop.computed __type __id "migrate_traffic";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_service_split_traffic
        (google_app_engine_service_split_traffic ?id ?migrate_traffic
           ?project ?timeouts ~service ~split ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?migrate_traffic ?project ?timeouts
    ~service ~split __id =
  let (r : _ Tf_core.resource) =
    make ?id ?migrate_traffic ?project ?timeouts ~service ~split __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
