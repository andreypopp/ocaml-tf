(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type git_repository__basic_auth = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_repository__basic_auth) -> ()

let yojson_of_git_repository__basic_auth =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : git_repository__basic_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_repository__basic_auth

[@@@deriving.end]

type git_repository__ssh_auth = {
  host_key : string prop option; [@option]
  host_key_algorithm : string prop option; [@option]
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_repository__ssh_auth) -> ()

let yojson_of_git_repository__ssh_auth =
  (function
   | {
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
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
       `Assoc bnds
    : git_repository__ssh_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_repository__ssh_auth

[@@@deriving.end]

type git_repository = {
  branch : string prop option; [@option]
  ca_certificate_id : string prop option; [@option]
  commit : string prop option; [@option]
  git_tag : string prop option; [@option]
  interval_in_seconds : float prop option; [@option]
  path : string prop option; [@option]
  url : string prop;
  basic_auth : git_repository__basic_auth list;
  ssh_auth : git_repository__ssh_auth list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_repository) -> ()

let yojson_of_git_repository =
  (function
   | {
       branch = v_branch;
       ca_certificate_id = v_ca_certificate_id;
       commit = v_commit;
       git_tag = v_git_tag;
       interval_in_seconds = v_interval_in_seconds;
       path = v_path;
       url = v_url;
       basic_auth = v_basic_auth;
       ssh_auth = v_ssh_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_git_repository__ssh_auth
             v_ssh_auth
         in
         ("ssh_auth", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_git_repository__basic_auth
             v_basic_auth
         in
         ("basic_auth", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_git_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "git_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commit", arg in
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
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : git_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_repository

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

type azurerm_spring_cloud_customized_accelerator = {
  accelerator_tags : string prop list option; [@option]
  accelerator_type : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  icon_url : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_accelerator_id : string prop;
  git_repository : git_repository list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_customized_accelerator) -> ()

let yojson_of_azurerm_spring_cloud_customized_accelerator =
  (function
   | {
       accelerator_tags = v_accelerator_tags;
       accelerator_type = v_accelerator_type;
       description = v_description;
       display_name = v_display_name;
       icon_url = v_icon_url;
       id = v_id;
       name = v_name;
       spring_cloud_accelerator_id = v_spring_cloud_accelerator_id;
       git_repository = v_git_repository;
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
           yojson_of_list yojson_of_git_repository v_git_repository
         in
         ("git_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_spring_cloud_accelerator_id
         in
         ("spring_cloud_accelerator_id", arg) :: bnds
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
         match v_icon_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "icon_url", arg in
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
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_customized_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_customized_accelerator

[@@@deriving.end]

let git_repository__basic_auth ~password ~username () :
    git_repository__basic_auth =
  { password; username }

let git_repository__ssh_auth ?host_key ?host_key_algorithm
    ~private_key () : git_repository__ssh_auth =
  { host_key; host_key_algorithm; private_key }

let git_repository ?branch ?ca_certificate_id ?commit ?git_tag
    ?interval_in_seconds ?path ~url ~basic_auth ~ssh_auth () :
    git_repository =
  {
    branch;
    ca_certificate_id;
    commit;
    git_tag;
    interval_in_seconds;
    path;
    url;
    basic_auth;
    ssh_auth;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_customized_accelerator ?accelerator_tags
    ?accelerator_type ?description ?display_name ?icon_url ?id
    ?timeouts ~name ~spring_cloud_accelerator_id ~git_repository () :
    azurerm_spring_cloud_customized_accelerator =
  {
    accelerator_tags;
    accelerator_type;
    description;
    display_name;
    icon_url;
    id;
    name;
    spring_cloud_accelerator_id;
    git_repository;
    timeouts;
  }

type t = {
  accelerator_tags : string list prop;
  accelerator_type : string prop;
  description : string prop;
  display_name : string prop;
  icon_url : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_accelerator_id : string prop;
}

let make ?accelerator_tags ?accelerator_type ?description
    ?display_name ?icon_url ?id ?timeouts ~name
    ~spring_cloud_accelerator_id ~git_repository __id =
  let __type = "azurerm_spring_cloud_customized_accelerator" in
  let __attrs =
    ({
       accelerator_tags =
         Prop.computed __type __id "accelerator_tags";
       accelerator_type =
         Prop.computed __type __id "accelerator_type";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       icon_url = Prop.computed __type __id "icon_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_accelerator_id =
         Prop.computed __type __id "spring_cloud_accelerator_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_customized_accelerator
        (azurerm_spring_cloud_customized_accelerator
           ?accelerator_tags ?accelerator_type ?description
           ?display_name ?icon_url ?id ?timeouts ~name
           ~spring_cloud_accelerator_id ~git_repository ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerator_tags ?accelerator_type
    ?description ?display_name ?icon_url ?id ?timeouts ~name
    ~spring_cloud_accelerator_id ~git_repository __id =
  let (r : _ Tf_core.resource) =
    make ?accelerator_tags ?accelerator_type ?description
      ?display_name ?icon_url ?id ?timeouts ~name
      ~spring_cloud_accelerator_id ~git_repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
