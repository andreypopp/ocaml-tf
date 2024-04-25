(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type license_resource = {
  amount : string prop option; [@option]
  cores_per_license : string prop option; [@option]
  license : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : license_resource) -> ()

let yojson_of_license_resource =
  (function
   | {
       amount = v_amount;
       cores_per_license = v_cores_per_license;
       license = v_license;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_license in
         ("license", arg) :: bnds
       in
       let bnds =
         match v_cores_per_license with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cores_per_license", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amount", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : license_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_license_resource

[@@@deriving.end]

type resources = {
  accelerator_type : string prop option; [@option]
  amount : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | {
       accelerator_type = v_accelerator_type;
       amount = v_amount;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amount", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_region_commitment = {
  auto_renew : bool prop option; [@option]
  category : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  plan : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  license_resource : license_resource list;
  resources : resources list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_commitment) -> ()

let yojson_of_google_compute_region_commitment =
  (function
   | {
       auto_renew = v_auto_renew;
       category = v_category;
       description = v_description;
       id = v_id;
       name = v_name;
       plan = v_plan;
       project = v_project;
       region = v_region;
       type_ = v_type_;
       license_resource = v_license_resource;
       resources = v_resources;
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
         let arg = yojson_of_list yojson_of_resources v_resources in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_license_resource
             v_license_resource
         in
         ("license_resource", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_renew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_renew", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_commitment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_commitment

[@@@deriving.end]

let license_resource ?amount ?cores_per_license ~license () :
    license_resource =
  { amount; cores_per_license; license }

let resources ?accelerator_type ?amount ?type_ () : resources =
  { accelerator_type; amount; type_ }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_commitment ?auto_renew ?category
    ?description ?id ?project ?region ?type_ ?(license_resource = [])
    ?(resources = []) ?timeouts ~name ~plan () :
    google_compute_region_commitment =
  {
    auto_renew;
    category;
    description;
    id;
    name;
    plan;
    project;
    region;
    type_;
    license_resource;
    resources;
    timeouts;
  }

type t = {
  auto_renew : bool prop;
  category : string prop;
  commitment_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  end_timestamp : string prop;
  id : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  start_timestamp : string prop;
  status : string prop;
  status_message : string prop;
  type_ : string prop;
}

let make ?auto_renew ?category ?description ?id ?project ?region
    ?type_ ?(license_resource = []) ?(resources = []) ?timeouts ~name
    ~plan __id =
  let __type = "google_compute_region_commitment" in
  let __attrs =
    ({
       auto_renew = Prop.computed __type __id "auto_renew";
       category = Prop.computed __type __id "category";
       commitment_id = Prop.computed __type __id "commitment_id";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       end_timestamp = Prop.computed __type __id "end_timestamp";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       plan = Prop.computed __type __id "plan";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       start_timestamp = Prop.computed __type __id "start_timestamp";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_commitment
        (google_compute_region_commitment ?auto_renew ?category
           ?description ?id ?project ?region ?type_ ~license_resource
           ~resources ?timeouts ~name ~plan ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_renew ?category ?description ?id
    ?project ?region ?type_ ?(license_resource = [])
    ?(resources = []) ?timeouts ~name ~plan __id =
  let (r : _ Tf_core.resource) =
    make ?auto_renew ?category ?description ?id ?project ?region
      ?type_ ~license_resource ~resources ?timeouts ~name ~plan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
