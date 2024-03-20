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

type google_securityposture_posture_deployment = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  parent : string prop;
  posture_deployment_id : string prop;
  posture_id : string prop;
  posture_revision_id : string prop;
  target_resource : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_securityposture_posture_deployment) -> ()

let yojson_of_google_securityposture_posture_deployment =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       parent = v_parent;
       posture_deployment_id = v_posture_deployment_id;
       posture_id = v_posture_id;
       posture_revision_id = v_posture_revision_id;
       target_resource = v_target_resource;
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
         let arg =
           yojson_of_prop yojson_of_string v_target_resource
         in
         ("target_resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_posture_revision_id
         in
         ("posture_revision_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_posture_id in
         ("posture_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_posture_deployment_id
         in
         ("posture_deployment_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_securityposture_posture_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_securityposture_posture_deployment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_securityposture_posture_deployment ?description ?id
    ?timeouts ~location ~parent ~posture_deployment_id ~posture_id
    ~posture_revision_id ~target_resource () :
    google_securityposture_posture_deployment =
  {
    description;
    id;
    location;
    parent;
    posture_deployment_id;
    posture_id;
    posture_revision_id;
    target_resource;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  desired_posture_id : string prop;
  desired_posture_revision_id : string prop;
  etag : string prop;
  failure_message : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  posture_deployment_id : string prop;
  posture_id : string prop;
  posture_revision_id : string prop;
  reconciling : bool prop;
  state : string prop;
  target_resource : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~location ~parent
    ~posture_deployment_id ~posture_id ~posture_revision_id
    ~target_resource __id =
  let __type = "google_securityposture_posture_deployment" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       desired_posture_id =
         Prop.computed __type __id "desired_posture_id";
       desired_posture_revision_id =
         Prop.computed __type __id "desired_posture_revision_id";
       etag = Prop.computed __type __id "etag";
       failure_message = Prop.computed __type __id "failure_message";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       posture_deployment_id =
         Prop.computed __type __id "posture_deployment_id";
       posture_id = Prop.computed __type __id "posture_id";
       posture_revision_id =
         Prop.computed __type __id "posture_revision_id";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       target_resource = Prop.computed __type __id "target_resource";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_securityposture_posture_deployment
        (google_securityposture_posture_deployment ?description ?id
           ?timeouts ~location ~parent ~posture_deployment_id
           ~posture_id ~posture_revision_id ~target_resource ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~location ~parent
    ~posture_deployment_id ~posture_id ~posture_revision_id
    ~target_resource __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~location ~parent
      ~posture_deployment_id ~posture_id ~posture_revision_id
      ~target_resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
