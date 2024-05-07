(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type repository = {
  ca_certificate_id : string prop option; [@option]
  host_key : string prop option; [@option]
  host_key_algorithm : string prop option; [@option]
  label : string prop;
  name : string prop;
  password : string prop option; [@option]
  patterns : string prop list;
  private_key : string prop option; [@option]
  search_paths : string prop list option; [@option]
  strict_host_key_checking : bool prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository) -> ()

let yojson_of_repository =
  (function
   | {
       ca_certificate_id = v_ca_certificate_id;
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       label = v_label;
       name = v_name;
       password = v_password;
       patterns = v_patterns;
       private_key = v_private_key;
       search_paths = v_search_paths;
       strict_host_key_checking = v_strict_host_key_checking;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_strict_host_key_checking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_host_key_checking", arg in
             bnd :: bnds
       in
       let bnds =
         match v_search_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "search_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_patterns
         in
         ("patterns", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         match v_host_key_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository

[@@@deriving.end]

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

type azurerm_spring_cloud_configuration_service = {
  generation : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  refresh_interval_in_seconds : float prop option; [@option]
  spring_cloud_service_id : string prop;
  repository : repository list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_configuration_service) -> ()

let yojson_of_azurerm_spring_cloud_configuration_service =
  (function
   | {
       generation = v_generation;
       id = v_id;
       name = v_name;
       refresh_interval_in_seconds = v_refresh_interval_in_seconds;
       spring_cloud_service_id = v_spring_cloud_service_id;
       repository = v_repository;
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
         let arg =
           yojson_of_list yojson_of_repository v_repository
         in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
       in
       let bnds =
         match v_refresh_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_interval_in_seconds", arg in
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
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_configuration_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_configuration_service

[@@@deriving.end]

let repository ?ca_certificate_id ?host_key ?host_key_algorithm
    ?password ?private_key ?search_paths ?strict_host_key_checking
    ?username ~label ~name ~patterns ~uri () : repository =
  {
    ca_certificate_id;
    host_key;
    host_key_algorithm;
    label;
    name;
    password;
    patterns;
    private_key;
    search_paths;
    strict_host_key_checking;
    uri;
    username;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_configuration_service ?generation ?id
    ?refresh_interval_in_seconds ?(repository = []) ?timeouts ~name
    ~spring_cloud_service_id () :
    azurerm_spring_cloud_configuration_service =
  {
    generation;
    id;
    name;
    refresh_interval_in_seconds;
    spring_cloud_service_id;
    repository;
    timeouts;
  }

type t = {
  tf_name : string;
  generation : string prop;
  id : string prop;
  name : string prop;
  refresh_interval_in_seconds : float prop;
  spring_cloud_service_id : string prop;
}

let make ?generation ?id ?refresh_interval_in_seconds
    ?(repository = []) ?timeouts ~name ~spring_cloud_service_id __id
    =
  let __type = "azurerm_spring_cloud_configuration_service" in
  let __attrs =
    ({
       tf_name = __id;
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       refresh_interval_in_seconds =
         Prop.computed __type __id "refresh_interval_in_seconds";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_configuration_service
        (azurerm_spring_cloud_configuration_service ?generation ?id
           ?refresh_interval_in_seconds ~repository ?timeouts ~name
           ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?generation ?id ?refresh_interval_in_seconds
    ?(repository = []) ?timeouts ~name ~spring_cloud_service_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?generation ?id ?refresh_interval_in_seconds ~repository
      ?timeouts ~name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
