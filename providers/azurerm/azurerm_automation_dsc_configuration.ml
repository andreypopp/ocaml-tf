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

let make ?description ?id ?log_verbose ?tags ?timeouts
    ~automation_account_name ~content_embedded ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_automation_dsc_configuration" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       content_embedded =
         Prop.computed __type __id "content_embedded";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       log_verbose = Prop.computed __type __id "log_verbose";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_dsc_configuration
        (azurerm_automation_dsc_configuration ?description ?id
           ?log_verbose ?tags ?timeouts ~automation_account_name
           ~content_embedded ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?log_verbose ?tags ?timeouts
    ~automation_account_name ~content_embedded ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?log_verbose ?tags ?timeouts
      ~automation_account_name ~content_embedded ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
