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

type project_team = {
  project_number : string prop;
  team : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : project_team) -> ()

let yojson_of_project_team =
  (function
   | { project_number = v_project_number; team = v_team } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team in
         ("team", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_project_number
         in
         ("project_number", arg) :: bnds
       in
       `Assoc bnds
    : project_team -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_project_team

[@@@deriving.end]

type google_storage_object_access_control = {
  bucket : string prop;
  entity : string prop;
  id : string prop option; [@option]
  object_ : string prop; [@key "object"]
  role : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_object_access_control) -> ()

let yojson_of_google_storage_object_access_control =
  (function
   | {
       bucket = v_bucket;
       entity = v_entity;
       id = v_id;
       object_ = v_object_;
       role = v_role;
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
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_entity in
         ("entity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_object_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_object_access_control

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_object_access_control ?id ?timeouts ~bucket
    ~entity ~object_ ~role () : google_storage_object_access_control
    =
  { bucket; entity; id; object_; role; timeouts }

type t = {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  entity_id : string prop;
  generation : float prop;
  id : string prop;
  object_ : string prop;
  project_team : project_team list prop;
  role : string prop;
}

let make ?id ?timeouts ~bucket ~entity ~object_ ~role __id =
  let __type = "google_storage_object_access_control" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       domain = Prop.computed __type __id "domain";
       email = Prop.computed __type __id "email";
       entity = Prop.computed __type __id "entity";
       entity_id = Prop.computed __type __id "entity_id";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       object_ = Prop.computed __type __id "object";
       project_team = Prop.computed __type __id "project_team";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_object_access_control
        (google_storage_object_access_control ?id ?timeouts ~bucket
           ~entity ~object_ ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bucket ~entity ~object_ ~role
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bucket ~entity ~object_ ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
