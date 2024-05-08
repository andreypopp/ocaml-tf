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

type vpc_peering_config = {
  subnet : string prop;
  vpc_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_peering_config) -> ()

let yojson_of_vpc_peering_config =
  (function
   | { subnet = v_subnet; vpc_name = v_vpc_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_name in
         ("vpc_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet in
         ("subnet", arg) :: bnds
       in
       `Assoc bnds
    : vpc_peering_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_peering_config

[@@@deriving.end]

type error = {
  details : (string * string prop) list;
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error) -> ()

let yojson_of_error =
  (function
   | { details = v_details; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_details
         in
         ("details", arg) :: bnds
       in
       `Assoc bnds
    : error -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error

[@@@deriving.end]

type google_database_migration_service_private_connection = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  private_connection_id : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
  vpc_peering_config : vpc_peering_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_database_migration_service_private_connection) -> ()

let yojson_of_google_database_migration_service_private_connection =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       private_connection_id = v_private_connection_id;
       project = v_project;
       timeouts = v_timeouts;
       vpc_peering_config = v_vpc_peering_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_peering_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_peering_config)
               v_vpc_peering_config
           in
           let bnd = "vpc_peering_config", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_private_connection_id
         in
         ("private_connection_id", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_database_migration_service_private_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_database_migration_service_private_connection

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_peering_config ~subnet ~vpc_name () : vpc_peering_config =
  { subnet; vpc_name }

let google_database_migration_service_private_connection
    ?display_name ?id ?labels ?project ?timeouts ~location
    ~private_connection_id ~vpc_peering_config () :
    google_database_migration_service_private_connection =
  {
    display_name;
    id;
    labels;
    location;
    private_connection_id;
    project;
    timeouts;
    vpc_peering_config;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error : error list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  private_connection_id : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?display_name ?id ?labels ?project ?timeouts ~location
    ~private_connection_id ~vpc_peering_config __id =
  let __type =
    "google_database_migration_service_private_connection"
  in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       error = Prop.computed __type __id "error";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_connection_id =
         Prop.computed __type __id "private_connection_id";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_database_migration_service_private_connection
        (google_database_migration_service_private_connection
           ?display_name ?id ?labels ?project ?timeouts ~location
           ~private_connection_id ~vpc_peering_config ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?project ?timeouts
    ~location ~private_connection_id ~vpc_peering_config __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?project ?timeouts ~location
      ~private_connection_id ~vpc_peering_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
