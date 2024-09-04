(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend_metastores = {
  metastore_type : string prop;
  name : string prop;
  rank : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_metastores) -> ()

let yojson_of_backend_metastores =
  (function
   | {
       metastore_type = v_metastore_type;
       name = v_name;
       rank = v_rank;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rank in
         ("rank", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metastore_type
         in
         ("metastore_type", arg) :: bnds
       in
       `Assoc bnds
    : backend_metastores -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_metastores

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

type google_dataproc_metastore_federation = {
  federation_id : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  version : string prop;
  backend_metastores : backend_metastores list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_metastore_federation) -> ()

let yojson_of_google_dataproc_metastore_federation =
  (function
   | {
       federation_id = v_federation_id;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       version = v_version;
       backend_metastores = v_backend_metastores;
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
         if Stdlib.( = ) [] v_backend_metastores then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_metastores)
               v_backend_metastores
           in
           let bnd = "backend_metastores", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         let arg = yojson_of_prop yojson_of_string v_federation_id in
         ("federation_id", arg) :: bnds
       in
       `Assoc bnds
    : google_dataproc_metastore_federation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_metastore_federation

[@@@deriving.end]

let backend_metastores ~metastore_type ~name ~rank () :
    backend_metastores =
  { metastore_type; name; rank }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataproc_metastore_federation ?id ?labels ?location
    ?project ?timeouts ~federation_id ~version ~backend_metastores ()
    : google_dataproc_metastore_federation =
  {
    federation_id;
    id;
    labels;
    location;
    project;
    version;
    backend_metastores;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : string Tf_core.assoc prop;
  endpoint_uri : string prop;
  federation_id : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_message : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  version : string prop;
}

let make ?id ?labels ?location ?project ?timeouts ~federation_id
    ~version ~backend_metastores __id =
  let __type = "google_dataproc_metastore_federation" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       federation_id = Prop.computed __type __id "federation_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_message = Prop.computed __type __id "state_message";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_metastore_federation
        (google_dataproc_metastore_federation ?id ?labels ?location
           ?project ?timeouts ~federation_id ~version
           ~backend_metastores ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?location ?project ?timeouts
    ~federation_id ~version ~backend_metastores __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?location ?project ?timeouts ~federation_id
      ~version ~backend_metastores __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
