(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_spec) -> ()

let yojson_of_encryption_spec =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_spec

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

type google_vertex_ai_tensorboard = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  encryption_spec : encryption_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_tensorboard) -> ()

let yojson_of_google_vertex_ai_tensorboard =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       project = v_project;
       region = v_region;
       encryption_spec = v_encryption_spec;
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
         if Stdlib.( = ) [] v_encryption_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_spec)
               v_encryption_spec
           in
           let bnd = "encryption_spec", arg in
           bnd :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : google_vertex_ai_tensorboard ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_tensorboard

[@@@deriving.end]

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_tensorboard ?description ?id ?labels ?project
    ?region ?(encryption_spec = []) ?timeouts ~display_name () :
    google_vertex_ai_tensorboard =
  {
    description;
    display_name;
    id;
    labels;
    project;
    region;
    encryption_spec;
    timeouts;
  }

type t = {
  tf_name : string;
  blob_storage_path_prefix : string prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  run_count : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?region
    ?(encryption_spec = []) ?timeouts ~display_name __id =
  let __type = "google_vertex_ai_tensorboard" in
  let __attrs =
    ({
       tf_name = __id;
       blob_storage_path_prefix =
         Prop.computed __type __id "blob_storage_path_prefix";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       run_count = Prop.computed __type __id "run_count";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_tensorboard
        (google_vertex_ai_tensorboard ?description ?id ?labels
           ?project ?region ~encryption_spec ?timeouts ~display_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?region
    ?(encryption_spec = []) ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?region ~encryption_spec
      ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
