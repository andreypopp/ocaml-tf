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

type google_compute_instance_group_membership = {
  id : string prop option; [@option]
  instance : string prop;
  instance_group : string prop;
  project : string prop option; [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_group_membership) -> ()

let yojson_of_google_compute_instance_group_membership =
  (function
   | {
       id = v_id;
       instance = v_instance;
       instance_group = v_instance_group;
       project = v_project;
       zone = v_zone;
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
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_group
         in
         ("instance_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
    : google_compute_instance_group_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_group_membership

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_instance_group_membership ?id ?project ?zone
    ?timeouts ~instance ~instance_group () :
    google_compute_instance_group_membership =
  { id; instance; instance_group; project; zone; timeouts }

type t = {
  id : string prop;
  instance : string prop;
  instance_group : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ?timeouts ~instance ~instance_group __id
    =
  let __type = "google_compute_instance_group_membership" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       instance_group = Prop.computed __type __id "instance_group";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group_membership
        (google_compute_instance_group_membership ?id ?project ?zone
           ?timeouts ~instance ~instance_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ?timeouts ~instance
    ~instance_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ?timeouts ~instance ~instance_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
