(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_project = {
  auto_create_network : bool prop option; [@option]
  billing_account : string prop option; [@option]
  folder_id : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  org_id : string prop option; [@option]
  project_id : string prop;
  skip_delete : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project) -> ()

let yojson_of_google_project =
  (function
   | {
       auto_create_network = v_auto_create_network;
       billing_account = v_billing_account;
       folder_id = v_folder_id;
       id = v_id;
       labels = v_labels;
       name = v_name;
       org_id = v_org_id;
       project_id = v_project_id;
       skip_delete = v_skip_delete;
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
         match v_skip_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_delete", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         match v_org_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_folder_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_create_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_create_network", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_project ?auto_create_network ?billing_account ?folder_id
    ?id ?labels ?org_id ?skip_delete ?timeouts ~name ~project_id () :
    google_project =
  {
    auto_create_network;
    billing_account;
    folder_id;
    id;
    labels;
    name;
    org_id;
    project_id;
    skip_delete;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_create_network : bool prop;
  billing_account : string prop;
  effective_labels : (string * string) list prop;
  folder_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  number : string prop;
  org_id : string prop;
  project_id : string prop;
  skip_delete : bool prop;
  terraform_labels : (string * string) list prop;
}

let make ?auto_create_network ?billing_account ?folder_id ?id ?labels
    ?org_id ?skip_delete ?timeouts ~name ~project_id __id =
  let __type = "google_project" in
  let __attrs =
    ({
       tf_name = __id;
       auto_create_network =
         Prop.computed __type __id "auto_create_network";
       billing_account = Prop.computed __type __id "billing_account";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       number = Prop.computed __type __id "number";
       org_id = Prop.computed __type __id "org_id";
       project_id = Prop.computed __type __id "project_id";
       skip_delete = Prop.computed __type __id "skip_delete";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project
        (google_project ?auto_create_network ?billing_account
           ?folder_id ?id ?labels ?org_id ?skip_delete ?timeouts
           ~name ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_network ?billing_account
    ?folder_id ?id ?labels ?org_id ?skip_delete ?timeouts ~name
    ~project_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_network ?billing_account ?folder_id ?id ?labels
      ?org_id ?skip_delete ?timeouts ~name ~project_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
