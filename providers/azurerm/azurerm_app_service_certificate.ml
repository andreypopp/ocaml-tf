(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_certificate = {
  app_service_plan_id : string prop option; [@option]
      (** app_service_plan_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  pfx_blob : string prop option; [@option]  (** pfx_blob *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate *)

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
