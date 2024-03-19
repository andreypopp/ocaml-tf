(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type plan = {
  billing_cycle : string prop;  (** billing_cycle *)
  effective_date : string prop;  (** effective_date *)
  plan_id : string prop option; [@option]  (** plan_id *)
  usage_type : string prop;  (** usage_type *)
}
[@@deriving yojson_of]
(** plan *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user = {
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** user *)

type azurerm_logz_monitor = {
  company_name : string prop option; [@option]  (** company_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  enterprise_app_id : string prop option; [@option]
      (** enterprise_app_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  plan : plan list;
  timeouts : timeouts option;
  user : user list;
}
[@@deriving yojson_of]
(** azurerm_logz_monitor *)

let plan ?plan_id ~billing_cycle ~effective_date ~usage_type () :
    plan =
  { billing_cycle; effective_date; plan_id; usage_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ~email ~first_name ~last_name ~phone_number () : user =
  { email; first_name; last_name; phone_number }

let azurerm_logz_monitor ?company_name ?enabled ?enterprise_app_id
    ?id ?tags ?timeouts ~location ~name ~resource_group_name ~plan
    ~user () : azurerm_logz_monitor =
  {
    company_name;
    enabled;
    enterprise_app_id;
    id;
    location;
    name;
    resource_group_name;
    tags;
    plan;
    timeouts;
    user;
  }

type t = {
  company_name : string prop;
  enabled : bool prop;
  enterprise_app_id : string prop;
  id : string prop;
  location : string prop;
  logz_organization_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  single_sign_on_url : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?company_name ?enabled ?enterprise_app_id ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~plan ~user
    __resource_id =
  let __resource_type = "azurerm_logz_monitor" in
  let __resource =
    azurerm_logz_monitor ?company_name ?enabled ?enterprise_app_id
      ?id ?tags ?timeouts ~location ~name ~resource_group_name ~plan
      ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_monitor __resource);
  let __resource_attributes =
    ({
       company_name =
         Prop.computed __resource_type __resource_id "company_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       enterprise_app_id =
         Prop.computed __resource_type __resource_id
           "enterprise_app_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       logz_organization_id =
         Prop.computed __resource_type __resource_id
           "logz_organization_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       single_sign_on_url =
         Prop.computed __resource_type __resource_id
           "single_sign_on_url";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
