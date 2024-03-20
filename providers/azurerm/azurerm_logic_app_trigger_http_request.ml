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

type azurerm_logic_app_trigger_http_request = {
  id : string prop option; [@option]  (** id *)
  logic_app_id : string prop;  (** logic_app_id *)
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  name : string prop;  (** name *)
  relative_path : string prop option; [@option]  (** relative_path *)
  schema : string prop;  (** schema *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_http_request *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_http_request ?id ?method_
    ?relative_path ?timeouts ~logic_app_id ~name ~schema () :
    azurerm_logic_app_trigger_http_request =
  {
    id;
    logic_app_id;
    method_;
    name;
    relative_path;
    schema;
    timeouts;
  }

type t = {
  callback_url : string prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  relative_path : string prop;
  schema : string prop;
}

let make ?id ?method_ ?relative_path ?timeouts ~logic_app_id ~name
    ~schema __id =
  let __type = "azurerm_logic_app_trigger_http_request" in
  let __attrs =
    ({
       callback_url = Prop.computed __type __id "callback_url";
       id = Prop.computed __type __id "id";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       method_ = Prop.computed __type __id "method";
       name = Prop.computed __type __id "name";
       relative_path = Prop.computed __type __id "relative_path";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_trigger_http_request
        (azurerm_logic_app_trigger_http_request ?id ?method_
           ?relative_path ?timeouts ~logic_app_id ~name ~schema ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?method_ ?relative_path ?timeouts
    ~logic_app_id ~name ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?id ?method_ ?relative_path ?timeouts ~logic_app_id ~name
      ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
