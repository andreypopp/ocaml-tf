(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type repository = {
  ca_certificate_id : string prop option; [@option]
      (** ca_certificate_id *)
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  label : string prop;  (** label *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  patterns : string prop list;  (** patterns *)
  private_key : string prop option; [@option]  (** private_key *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  strict_host_key_checking : bool prop option; [@option]
      (** strict_host_key_checking *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** repository *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_configuration_service = {
  generation : string prop option; [@option]  (** generation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  refresh_interval_in_seconds : float prop option; [@option]
      (** refresh_interval_in_seconds *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  repository : repository list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service *)

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
    ?refresh_interval_in_seconds ?timeouts ~name
    ~spring_cloud_service_id ~repository () :
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
  generation : string prop;
  id : string prop;
  name : string prop;
  refresh_interval_in_seconds : float prop;
  spring_cloud_service_id : string prop;
}

let make ?generation ?id ?refresh_interval_in_seconds ?timeouts ~name
    ~spring_cloud_service_id ~repository __id =
  let __type = "azurerm_spring_cloud_configuration_service" in
  let __attrs =
    ({
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
           ?refresh_interval_in_seconds ?timeouts ~name
           ~spring_cloud_service_id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?generation ?id ?refresh_interval_in_seconds
    ?timeouts ~name ~spring_cloud_service_id ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?generation ?id ?refresh_interval_in_seconds ?timeouts ~name
      ~spring_cloud_service_id ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
