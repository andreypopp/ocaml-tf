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

type google_compute_target_instance = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance : string prop;
  name : string prop;
  nat_policy : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_target_instance) -> ()

let yojson_of_google_compute_target_instance =
  (function
   | {
       description = v_description;
       id = v_id;
       instance = v_instance;
       name = v_name;
       nat_policy = v_nat_policy;
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
         match v_nat_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_target_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_target_instance

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_target_instance ?description ?id ?nat_policy
    ?project ?zone ?timeouts ~instance ~name () :
    google_compute_target_instance =
  {
    description;
    id;
    instance;
    name;
    nat_policy;
    project;
    zone;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  nat_policy : string prop;
  project : string prop;
  self_link : string prop;
  zone : string prop;
}

let make ?description ?id ?nat_policy ?project ?zone ?timeouts
    ~instance ~name __id =
  let __type = "google_compute_target_instance" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       name = Prop.computed __type __id "name";
       nat_policy = Prop.computed __type __id "nat_policy";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_instance
        (google_compute_target_instance ?description ?id ?nat_policy
           ?project ?zone ?timeouts ~instance ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?nat_policy ?project ?zone
    ?timeouts ~instance ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?nat_policy ?project ?zone ?timeouts
      ~instance ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
