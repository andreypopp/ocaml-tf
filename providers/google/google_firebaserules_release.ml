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

type google_firebaserules_release = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  ruleset_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firebaserules_release) -> ()

let yojson_of_google_firebaserules_release =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       ruleset_name = v_ruleset_name;
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
         let arg = yojson_of_prop yojson_of_string v_ruleset_name in
         ("ruleset_name", arg) :: bnds
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
       `Assoc bnds
    : google_firebaserules_release ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firebaserules_release

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_firebaserules_release ?id ?project ?timeouts ~name
    ~ruleset_name () : google_firebaserules_release =
  { id; name; project; ruleset_name; timeouts }

type t = {
  tf_name : string;
  create_time : string prop;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  ruleset_name : string prop;
  update_time : string prop;
}

let make ?id ?project ?timeouts ~name ~ruleset_name __id =
  let __type = "google_firebaserules_release" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       ruleset_name = Prop.computed __type __id "ruleset_name";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebaserules_release
        (google_firebaserules_release ?id ?project ?timeouts ~name
           ~ruleset_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~name ~ruleset_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~name ~ruleset_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
