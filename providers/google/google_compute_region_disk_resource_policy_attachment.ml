(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_compute_region_disk_resource_policy_attachment = {
  disk : string prop;
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_compute_region_disk_resource_policy_attachment) ->
  ()

let yojson_of_google_compute_region_disk_resource_policy_attachment =
  (function
   | {
       disk = v_disk;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
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
         let arg = yojson_of_prop yojson_of_string v_disk in
         ("disk", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_region_disk_resource_policy_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_compute_region_disk_resource_policy_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_disk_resource_policy_attachment ?id
    ?project ?region ?timeouts ~disk ~name () :
    google_compute_region_disk_resource_policy_attachment =
  { disk; id; name; project; region; timeouts }

type t = {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ?timeouts ~disk ~name __id =
  let __type =
    "google_compute_region_disk_resource_policy_attachment"
  in
  let __attrs =
    ({
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_disk_resource_policy_attachment
        (google_compute_region_disk_resource_policy_attachment ?id
           ?project ?region ?timeouts ~disk ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?timeouts ~disk ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?timeouts ~disk ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
