(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bandwidth_limit = { limit_mbps : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : bandwidth_limit) -> ()

let yojson_of_bandwidth_limit =
  (function
   | { limit_mbps = v_limit_mbps } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_limit_mbps in
         ("limit_mbps", arg) :: bnds
       in
       `Assoc bnds
    : bandwidth_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bandwidth_limit

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

type google_storage_transfer_agent_pool = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  bandwidth_limit : bandwidth_limit list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_transfer_agent_pool) -> ()

let yojson_of_google_storage_transfer_agent_pool =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       project = v_project;
       bandwidth_limit = v_bandwidth_limit;
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
         if [] = v_bandwidth_limit then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bandwidth_limit)
               v_bandwidth_limit
           in
           let bnd = "bandwidth_limit", arg in
           bnd :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_transfer_agent_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_transfer_agent_pool

[@@@deriving.end]

let bandwidth_limit ~limit_mbps () : bandwidth_limit = { limit_mbps }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_transfer_agent_pool ?display_name ?id ?project
    ?(bandwidth_limit = []) ?timeouts ~name () :
    google_storage_transfer_agent_pool =
  { display_name; id; name; project; bandwidth_limit; timeouts }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
}

let make ?display_name ?id ?project ?(bandwidth_limit = []) ?timeouts
    ~name __id =
  let __type = "google_storage_transfer_agent_pool" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_transfer_agent_pool
        (google_storage_transfer_agent_pool ?display_name ?id
           ?project ~bandwidth_limit ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project
    ?(bandwidth_limit = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ~bandwidth_limit ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
