(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_spec) -> ()

let yojson_of_encryption_spec =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
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

type google_vertex_ai_dataset = {
  display_name : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  metadata_schema_uri : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  encryption_spec : encryption_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_dataset) -> ()

let yojson_of_google_vertex_ai_dataset =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       metadata_schema_uri = v_metadata_schema_uri;
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
         let arg =
           yojson_of_prop yojson_of_string v_metadata_schema_uri
         in
         ("metadata_schema_uri", arg) :: bnds
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
       `Assoc bnds
    : google_vertex_ai_dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_dataset

[@@@deriving.end]

let encryption_spec ?kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_dataset ?id ?labels ?project ?region
    ?(encryption_spec = []) ?timeouts ~display_name
    ~metadata_schema_uri () : google_vertex_ai_dataset =
  {
    display_name;
    id;
    labels;
    metadata_schema_uri;
    project;
    region;
    encryption_spec;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?id ?labels ?project ?region ?(encryption_spec = [])
    ?timeouts ~display_name ~metadata_schema_uri __id =
  let __type = "google_vertex_ai_dataset" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       metadata_schema_uri =
         Prop.computed __type __id "metadata_schema_uri";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
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
      yojson_of_google_vertex_ai_dataset
        (google_vertex_ai_dataset ?id ?labels ?project ?region
           ~encryption_spec ?timeouts ~display_name
           ~metadata_schema_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?region
    ?(encryption_spec = []) ?timeouts ~display_name
    ~metadata_schema_uri __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?region ~encryption_spec ?timeouts
      ~display_name ~metadata_schema_uri __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
