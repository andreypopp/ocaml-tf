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

type azurerm_automation_watcher = {
  automation_account_id : string prop;  (** automation_account_id *)
  description : string prop option; [@option]  (** description *)
  etag : string prop option; [@option]  (** etag *)
  execution_frequency_in_seconds : float prop;
      (** execution_frequency_in_seconds *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  script_name : string prop;  (** script_name *)
  script_parameters : (string * string prop) list option; [@option]
      (** script_parameters *)
  script_run_on : string prop;  (** script_run_on *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_watcher *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_watcher ?description ?etag ?id
    ?script_parameters ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on () : azurerm_automation_watcher =
  {
    automation_account_id;
    description;
    etag;
    execution_frequency_in_seconds;
    id;
    location;
    name;
    script_name;
    script_parameters;
    script_run_on;
    tags;
    timeouts;
  }

type t = {
  automation_account_id : string prop;
  description : string prop;
  etag : string prop;
  execution_frequency_in_seconds : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : (string * string) list prop;
  script_run_on : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?description ?etag ?id ?script_parameters ?tags ?timeouts
    ~automation_account_id ~execution_frequency_in_seconds ~location
    ~name ~script_name ~script_run_on __id =
  let __type = "azurerm_automation_watcher" in
  let __attrs =
    ({
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       execution_frequency_in_seconds =
         Prop.computed __type __id "execution_frequency_in_seconds";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       script_name = Prop.computed __type __id "script_name";
       script_parameters =
         Prop.computed __type __id "script_parameters";
       script_run_on = Prop.computed __type __id "script_run_on";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_watcher
        (azurerm_automation_watcher ?description ?etag ?id
           ?script_parameters ?tags ?timeouts ~automation_account_id
           ~execution_frequency_in_seconds ~location ~name
           ~script_name ~script_run_on ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?etag ?id ?script_parameters
    ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on __id =
  let (r : _ Tf_core.resource) =
    make ?description ?etag ?id ?script_parameters ?tags ?timeouts
      ~automation_account_id ~execution_frequency_in_seconds
      ~location ~name ~script_name ~script_run_on __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
