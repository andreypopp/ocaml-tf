(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container_image = {
  repository : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_image) -> ()

let yojson_of_container_image =
  (function
   | { repository = v_repository; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       `Assoc bnds
    : container_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_image

[@@@deriving.end]

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

type vm_image = {
  image_family : string prop option; [@option]
  image_name : string prop option; [@option]
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vm_image) -> ()

let yojson_of_vm_image =
  (function
   | {
       image_family = v_image_family;
       image_name = v_image_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         match v_image_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_family", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vm_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vm_image

[@@@deriving.end]

type google_notebooks_environment = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  post_startup_script : string prop option; [@option]
  project : string prop option; [@option]
  container_image : container_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vm_image : vm_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_notebooks_environment) -> ()

let yojson_of_google_notebooks_environment =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       name = v_name;
       post_startup_script = v_post_startup_script;
       project = v_project;
       container_image = v_container_image;
       timeouts = v_timeouts;
       vm_image = v_vm_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vm_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vm_image) v_vm_image
           in
           let bnd = "vm_image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container_image)
               v_container_image
           in
           let bnd = "container_image", arg in
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
         match v_post_startup_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_startup_script", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_notebooks_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_notebooks_environment

[@@@deriving.end]

let container_image ?tag ~repository () : container_image =
  { repository; tag }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vm_image ?image_family ?image_name ~project () : vm_image =
  { image_family; image_name; project }

let google_notebooks_environment ?description ?display_name ?id
    ?post_startup_script ?project ?(container_image = []) ?timeouts
    ?(vm_image = []) ~location ~name () :
    google_notebooks_environment =
  {
    description;
    display_name;
    id;
    location;
    name;
    post_startup_script;
    project;
    container_image;
    timeouts;
    vm_image;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  post_startup_script : string prop;
  project : string prop;
}

let make ?description ?display_name ?id ?post_startup_script ?project
    ?(container_image = []) ?timeouts ?(vm_image = []) ~location
    ~name __id =
  let __type = "google_notebooks_environment" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       post_startup_script =
         Prop.computed __type __id "post_startup_script";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_notebooks_environment
        (google_notebooks_environment ?description ?display_name ?id
           ?post_startup_script ?project ~container_image ?timeouts
           ~vm_image ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?post_startup_script ?project ?(container_image = []) ?timeouts
    ?(vm_image = []) ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?post_startup_script ?project
      ~container_image ?timeouts ~vm_image ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
