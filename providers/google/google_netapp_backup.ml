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

type google_netapp_backup = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  source_snapshot : string prop option; [@option]
  source_volume : string prop option; [@option]
  vault_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_backup) -> ()

let yojson_of_google_netapp_backup =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       source_snapshot = v_source_snapshot;
       source_volume = v_source_volume;
       vault_name = v_vault_name;
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
         let arg = yojson_of_prop yojson_of_string v_vault_name in
         ("vault_name", arg) :: bnds
       in
       let bnds =
         match v_source_volume with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_volume", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_snapshot", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_netapp_backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_backup

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_backup ?description ?id ?labels ?project
    ?source_snapshot ?source_volume ?timeouts ~location ~name
    ~vault_name () : google_netapp_backup =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    source_snapshot;
    source_volume;
    vault_name;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_type : string prop;
  chain_storage_bytes : string prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  source_snapshot : string prop;
  source_volume : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  vault_name : string prop;
  volume_usage_bytes : string prop;
}

let make ?description ?id ?labels ?project ?source_snapshot
    ?source_volume ?timeouts ~location ~name ~vault_name __id =
  let __type = "google_netapp_backup" in
  let __attrs =
    ({
       tf_name = __id;
       backup_type = Prop.computed __type __id "backup_type";
       chain_storage_bytes =
         Prop.computed __type __id "chain_storage_bytes";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       source_snapshot = Prop.computed __type __id "source_snapshot";
       source_volume = Prop.computed __type __id "source_volume";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       vault_name = Prop.computed __type __id "vault_name";
       volume_usage_bytes =
         Prop.computed __type __id "volume_usage_bytes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_backup
        (google_netapp_backup ?description ?id ?labels ?project
           ?source_snapshot ?source_volume ?timeouts ~location ~name
           ~vault_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?source_snapshot ?source_volume ?timeouts ~location ~name
    ~vault_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?source_snapshot
      ?source_volume ?timeouts ~location ~name ~vault_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
