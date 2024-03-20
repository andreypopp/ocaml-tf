(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_project_default_network_tier = {
  id : string prop option; [@option]
  network_tier : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_project_default_network_tier) -> ()

let yojson_of_google_compute_project_default_network_tier =
  (function
   | {
       id = v_id;
       network_tier = v_network_tier;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_tier in
         ("network_tier", arg) :: bnds
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
    : google_compute_project_default_network_tier ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_project_default_network_tier

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let google_compute_project_default_network_tier ?id ?project
    ?timeouts ~network_tier () :
    google_compute_project_default_network_tier =
  { id; network_tier; project; timeouts }

type t = {
  id : string prop;
  network_tier : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~network_tier __id =
  let __type = "google_compute_project_default_network_tier" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       network_tier = Prop.computed __type __id "network_tier";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_project_default_network_tier
        (google_compute_project_default_network_tier ?id ?project
           ?timeouts ~network_tier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~network_tier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~network_tier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
