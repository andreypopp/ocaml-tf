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

type azurerm_automation_dsc_configuration = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content_embedded : string prop;  (** content_embedded *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  log_verbose : bool prop option; [@option]  (** log_verbose *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_dsc_configuration ?description ?id
    ?log_verbose ?tags ?timeouts ~automation_account_name
    ~content_embedded ~location ~name ~resource_group_name () :
    azurerm_automation_dsc_configuration =
  {
    automation_account_name;
    content_embedded;
    description;
    id;
    location;
    log_verbose;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  content_embedded : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?description ?id ?log_verbose ?tags ?timeouts
    ~automation_account_name ~content_embedded ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_dsc_configuration" in
  let __resource =
    azurerm_automation_dsc_configuration ?description ?id
      ?log_verbose ?tags ?timeouts ~automation_account_name
      ~content_embedded ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_dsc_configuration __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       content_embedded =
         Prop.computed __resource_type __resource_id
           "content_embedded";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       log_verbose =
         Prop.computed __resource_type __resource_id "log_verbose";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
