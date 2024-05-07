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

type azurerm_app_service_certificate = {
  app_service_plan_id : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_id : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  password : string prop option; [@option]
  pfx_blob : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_certificate) -> ()

let yojson_of_azurerm_app_service_certificate =
  (function
   | {
       app_service_plan_id = v_app_service_plan_id;
       id = v_id;
       key_vault_id = v_key_vault_id;
       key_vault_secret_id = v_key_vault_secret_id;
       location = v_location;
       name = v_name;
       password = v_password;
       pfx_blob = v_pfx_blob;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
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
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_pfx_blob with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pfx_blob", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
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
         match v_app_service_plan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_service_plan_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_certificate ?app_service_plan_id ?id
    ?key_vault_id ?key_vault_secret_id ?password ?pfx_blob ?tags
    ?timeouts ~location ~name ~resource_group_name () :
    azurerm_app_service_certificate =
  {
    app_service_plan_id;
    id;
    key_vault_id;
    key_vault_secret_id;
    location;
    name;
    password;
    pfx_blob;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_plan_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  hosting_environment_profile_id : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  key_vault_id : string prop;
  key_vault_secret_id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  pfx_blob : string prop;
  resource_group_name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let make ?app_service_plan_id ?id ?key_vault_id ?key_vault_secret_id
    ?password ?pfx_blob ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_app_service_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       friendly_name = Prop.computed __type __id "friendly_name";
       host_names = Prop.computed __type __id "host_names";
       hosting_environment_profile_id =
         Prop.computed __type __id "hosting_environment_profile_id";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       key_vault_secret_id =
         Prop.computed __type __id "key_vault_secret_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       pfx_blob = Prop.computed __type __id "pfx_blob";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject_name = Prop.computed __type __id "subject_name";
       tags = Prop.computed __type __id "tags";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_certificate
        (azurerm_app_service_certificate ?app_service_plan_id ?id
           ?key_vault_id ?key_vault_secret_id ?password ?pfx_blob
           ?tags ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?app_service_plan_id ?id ?key_vault_id
    ?key_vault_secret_id ?password ?pfx_blob ?tags ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?app_service_plan_id ?id ?key_vault_id ?key_vault_secret_id
      ?password ?pfx_blob ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
