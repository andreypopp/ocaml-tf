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

type azurerm_voice_services_communications_gateway_test_line = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
  purpose : string prop;  (** purpose *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  voice_services_communications_gateway_id : string prop;
      (** voice_services_communications_gateway_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway_test_line *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_voice_services_communications_gateway_test_line ?id ?tags
    ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id () :
    azurerm_voice_services_communications_gateway_test_line =
  {
    id;
    location;
    name;
    phone_number;
    purpose;
    tags;
    voice_services_communications_gateway_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  phone_number : string prop;
  purpose : string prop;
  tags : (string * string) list prop;
  voice_services_communications_gateway_id : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id __id =
  let __type =
    "azurerm_voice_services_communications_gateway_test_line"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       phone_number = Prop.computed __type __id "phone_number";
       purpose = Prop.computed __type __id "purpose";
       tags = Prop.computed __type __id "tags";
       voice_services_communications_gateway_id =
         Prop.computed __type __id
           "voice_services_communications_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_voice_services_communications_gateway_test_line
        (azurerm_voice_services_communications_gateway_test_line ?id
           ?tags ?timeouts ~location ~name ~phone_number ~purpose
           ~voice_services_communications_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~phone_number ~purpose ~voice_services_communications_gateway_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~phone_number ~purpose
      ~voice_services_communications_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
