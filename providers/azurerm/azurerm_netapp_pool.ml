(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_netapp_pool = {
  account_name : string prop;  (** account_name *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  qos_type : string prop option; [@option]  (** qos_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_level : string prop;  (** service_level *)
  size_in_tb : float prop;  (** size_in_tb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb () : azurerm_netapp_pool =
  {
    account_name;
    encryption_type;
    id;
    location;
    name;
    qos_type;
    resource_group_name;
    service_level;
    size_in_tb;
    tags;
    timeouts;
  }

type t = {
  account_name : string prop;
  encryption_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  qos_type : string prop;
  resource_group_name : string prop;
  service_level : string prop;
  size_in_tb : float prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb __resource_id =
  let __resource_type = "azurerm_netapp_pool" in
  let __resource =
    azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
      ?timeouts ~account_name ~location ~name ~resource_group_name
      ~service_level ~size_in_tb ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_pool __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       encryption_type =
         Prop.computed __resource_type __resource_id
           "encryption_type";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       qos_type =
         Prop.computed __resource_type __resource_id "qos_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_level =
         Prop.computed __resource_type __resource_id "service_level";
       size_in_tb =
         Prop.computed __resource_type __resource_id "size_in_tb";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
