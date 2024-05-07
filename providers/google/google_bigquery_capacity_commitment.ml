(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_bigquery_capacity_commitment = {
  capacity_commitment_id : string prop option; [@option]
  edition : string prop option; [@option]
  enforce_single_admin_project_per_org : string prop option;
      [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  plan : string prop;
  project : string prop option; [@option]
  renewal_plan : string prop option; [@option]
  slot_count : float prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_capacity_commitment) -> ()

let yojson_of_google_bigquery_capacity_commitment =
  (function
   | {
       capacity_commitment_id = v_capacity_commitment_id;
       edition = v_edition;
       enforce_single_admin_project_per_org =
         v_enforce_single_admin_project_per_org;
       id = v_id;
       location = v_location;
       plan = v_plan;
       project = v_project;
       renewal_plan = v_renewal_plan;
       slot_count = v_slot_count;
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
         let arg = yojson_of_prop yojson_of_float v_slot_count in
         ("slot_count", arg) :: bnds
       in
       let bnds =
         match v_renewal_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "renewal_plan", arg in
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
         let arg = yojson_of_prop yojson_of_string v_plan in
         ("plan", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_single_admin_project_per_org with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce_single_admin_project_per_org", arg in
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
         match v_capacity_commitment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_commitment_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_capacity_commitment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_capacity_commitment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_capacity_commitment ?capacity_commitment_id
    ?edition ?enforce_single_admin_project_per_org ?id ?location
    ?project ?renewal_plan ?timeouts ~plan ~slot_count () :
    google_bigquery_capacity_commitment =
  {
    capacity_commitment_id;
    edition;
    enforce_single_admin_project_per_org;
    id;
    location;
    plan;
    project;
    renewal_plan;
    slot_count;
    timeouts;
  }

type t = {
  tf_name : string;
  capacity_commitment_id : string prop;
  commitment_end_time : string prop;
  commitment_start_time : string prop;
  edition : string prop;
  enforce_single_admin_project_per_org : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  renewal_plan : string prop;
  slot_count : float prop;
  state : string prop;
}

let make ?capacity_commitment_id ?edition
    ?enforce_single_admin_project_per_org ?id ?location ?project
    ?renewal_plan ?timeouts ~plan ~slot_count __id =
  let __type = "google_bigquery_capacity_commitment" in
  let __attrs =
    ({
       tf_name = __id;
       capacity_commitment_id =
         Prop.computed __type __id "capacity_commitment_id";
       commitment_end_time =
         Prop.computed __type __id "commitment_end_time";
       commitment_start_time =
         Prop.computed __type __id "commitment_start_time";
       edition = Prop.computed __type __id "edition";
       enforce_single_admin_project_per_org =
         Prop.computed __type __id
           "enforce_single_admin_project_per_org";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       plan = Prop.computed __type __id "plan";
       project = Prop.computed __type __id "project";
       renewal_plan = Prop.computed __type __id "renewal_plan";
       slot_count = Prop.computed __type __id "slot_count";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_capacity_commitment
        (google_bigquery_capacity_commitment ?capacity_commitment_id
           ?edition ?enforce_single_admin_project_per_org ?id
           ?location ?project ?renewal_plan ?timeouts ~plan
           ~slot_count ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity_commitment_id ?edition
    ?enforce_single_admin_project_per_org ?id ?location ?project
    ?renewal_plan ?timeouts ~plan ~slot_count __id =
  let (r : _ Tf_core.resource) =
    make ?capacity_commitment_id ?edition
      ?enforce_single_admin_project_per_org ?id ?location ?project
      ?renewal_plan ?timeouts ~plan ~slot_count __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
