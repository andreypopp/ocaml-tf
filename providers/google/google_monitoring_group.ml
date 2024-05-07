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

type google_monitoring_group = {
  display_name : string prop;
  filter : string prop;
  id : string prop option; [@option]
  is_cluster : bool prop option; [@option]
  parent_name : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_group) -> ()

let yojson_of_google_monitoring_group =
  (function
   | {
       display_name = v_display_name;
       filter = v_filter;
       id = v_id;
       is_cluster = v_is_cluster;
       parent_name = v_parent_name;
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
         match v_parent_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_cluster", arg in
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
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_group

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_group ?id ?is_cluster ?parent_name ?project
    ?timeouts ~display_name ~filter () : google_monitoring_group =
  {
    display_name;
    filter;
    id;
    is_cluster;
    parent_name;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  filter : string prop;
  id : string prop;
  is_cluster : bool prop;
  name : string prop;
  parent_name : string prop;
  project : string prop;
}

let make ?id ?is_cluster ?parent_name ?project ?timeouts
    ~display_name ~filter __id =
  let __type = "google_monitoring_group" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       is_cluster = Prop.computed __type __id "is_cluster";
       name = Prop.computed __type __id "name";
       parent_name = Prop.computed __type __id "parent_name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_group
        (google_monitoring_group ?id ?is_cluster ?parent_name
           ?project ?timeouts ~display_name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_cluster ?parent_name ?project
    ?timeouts ~display_name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_cluster ?parent_name ?project ?timeouts
      ~display_name ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
