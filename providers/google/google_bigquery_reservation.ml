(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale = { max_slots : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscale) -> ()

let yojson_of_autoscale =
  (function
   | { max_slots = v_max_slots } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_slots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_slots", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscale

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

type google_bigquery_reservation = {
  concurrency : float prop option; [@option]
  edition : string prop option; [@option]
  id : string prop option; [@option]
  ignore_idle_slots : bool prop option; [@option]
  location : string prop option; [@option]
  multi_region_auxiliary : bool prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  slot_capacity : float prop;
  autoscale : autoscale list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_reservation) -> ()

let yojson_of_google_bigquery_reservation =
  (function
   | {
       concurrency = v_concurrency;
       edition = v_edition;
       id = v_id;
       ignore_idle_slots = v_ignore_idle_slots;
       location = v_location;
       multi_region_auxiliary = v_multi_region_auxiliary;
       name = v_name;
       project = v_project;
       slot_capacity = v_slot_capacity;
       autoscale = v_autoscale;
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
         let arg = yojson_of_list yojson_of_autoscale v_autoscale in
         ("autoscale", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_slot_capacity in
         ("slot_capacity", arg) :: bnds
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
         match v_multi_region_auxiliary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_region_auxiliary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_idle_slots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_idle_slots", arg in
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
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "concurrency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_reservation

[@@@deriving.end]

let autoscale ?max_slots () : autoscale = { max_slots }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_reservation ?concurrency ?edition ?id
    ?ignore_idle_slots ?location ?multi_region_auxiliary ?project
    ?(autoscale = []) ?timeouts ~name ~slot_capacity () :
    google_bigquery_reservation =
  {
    concurrency;
    edition;
    id;
    ignore_idle_slots;
    location;
    multi_region_auxiliary;
    name;
    project;
    slot_capacity;
    autoscale;
    timeouts;
  }

type t = {
  tf_name : string;
  concurrency : float prop;
  edition : string prop;
  id : string prop;
  ignore_idle_slots : bool prop;
  location : string prop;
  multi_region_auxiliary : bool prop;
  name : string prop;
  project : string prop;
  slot_capacity : float prop;
}

let make ?concurrency ?edition ?id ?ignore_idle_slots ?location
    ?multi_region_auxiliary ?project ?(autoscale = []) ?timeouts
    ~name ~slot_capacity __id =
  let __type = "google_bigquery_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       concurrency = Prop.computed __type __id "concurrency";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       ignore_idle_slots =
         Prop.computed __type __id "ignore_idle_slots";
       location = Prop.computed __type __id "location";
       multi_region_auxiliary =
         Prop.computed __type __id "multi_region_auxiliary";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       slot_capacity = Prop.computed __type __id "slot_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_reservation
        (google_bigquery_reservation ?concurrency ?edition ?id
           ?ignore_idle_slots ?location ?multi_region_auxiliary
           ?project ~autoscale ?timeouts ~name ~slot_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?concurrency ?edition ?id ?ignore_idle_slots
    ?location ?multi_region_auxiliary ?project ?(autoscale = [])
    ?timeouts ~name ~slot_capacity __id =
  let (r : _ Tf_core.resource) =
    make ?concurrency ?edition ?id ?ignore_idle_slots ?location
      ?multi_region_auxiliary ?project ~autoscale ?timeouts ~name
      ~slot_capacity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
