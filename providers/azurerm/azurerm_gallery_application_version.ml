(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type manage_action = {
  install : string prop;  (** install *)
  remove : string prop;  (** remove *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** manage_action *)

type source = {
  default_configuration_link : string prop option; [@option]
      (** default_configuration_link *)
  media_link : string prop;  (** media_link *)
}
[@@deriving yojson_of]
(** source *)

type target_region = {
  exclude_from_latest : bool prop option; [@option]
      (** exclude_from_latest *)
  name : string prop;  (** name *)
  regional_replica_count : float prop;  (** regional_replica_count *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** target_region *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_gallery_application_version = {
  config_file : string prop option; [@option]  (** config_file *)
  enable_health_check : bool prop option; [@option]
      (** enable_health_check *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  exclude_from_latest : bool prop option; [@option]
      (** exclude_from_latest *)
  gallery_application_id : string prop;
      (** gallery_application_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  package_file : string prop option; [@option]  (** package_file *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  manage_action : manage_action list;
  source : source list;
  target_region : target_region list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version *)

let manage_action ?update ~install ~remove () : manage_action =
  { install; remove; update }

let source ?default_configuration_link ~media_link () : source =
  { default_configuration_link; media_link }

let target_region ?exclude_from_latest ?storage_account_type ~name
    ~regional_replica_count () : target_region =
  {
    exclude_from_latest;
    name;
    regional_replica_count;
    storage_account_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_gallery_application_version ?config_file
    ?enable_health_check ?end_of_life_date ?exclude_from_latest ?id
    ?package_file ?tags ?timeouts ~gallery_application_id ~location
    ~name ~manage_action ~source ~target_region () :
    azurerm_gallery_application_version =
  {
    config_file;
    enable_health_check;
    end_of_life_date;
    exclude_from_latest;
    gallery_application_id;
    id;
    location;
    name;
    package_file;
    tags;
    manage_action;
    source;
    target_region;
    timeouts;
  }

type t = {
  config_file : string prop;
  enable_health_check : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_application_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  package_file : string prop;
  tags : (string * string) list prop;
}

let make ?config_file ?enable_health_check ?end_of_life_date
    ?exclude_from_latest ?id ?package_file ?tags ?timeouts
    ~gallery_application_id ~location ~name ~manage_action ~source
    ~target_region __id =
  let __type = "azurerm_gallery_application_version" in
  let __attrs =
    ({
       config_file = Prop.computed __type __id "config_file";
       enable_health_check =
         Prop.computed __type __id "enable_health_check";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       exclude_from_latest =
         Prop.computed __type __id "exclude_from_latest";
       gallery_application_id =
         Prop.computed __type __id "gallery_application_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       package_file = Prop.computed __type __id "package_file";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_gallery_application_version
        (azurerm_gallery_application_version ?config_file
           ?enable_health_check ?end_of_life_date
           ?exclude_from_latest ?id ?package_file ?tags ?timeouts
           ~gallery_application_id ~location ~name ~manage_action
           ~source ~target_region ());
    attrs = __attrs;
  }

let register ?tf_module ?config_file ?enable_health_check
    ?end_of_life_date ?exclude_from_latest ?id ?package_file ?tags
    ?timeouts ~gallery_application_id ~location ~name ~manage_action
    ~source ~target_region __id =
  let (r : _ Tf_core.resource) =
    make ?config_file ?enable_health_check ?end_of_life_date
      ?exclude_from_latest ?id ?package_file ?tags ?timeouts
      ~gallery_application_id ~location ~name ~manage_action ~source
      ~target_region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
