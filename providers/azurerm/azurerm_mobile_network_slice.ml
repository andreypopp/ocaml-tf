(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type single_network_slice_selection_assistance_information = {
  slice_differentiator : string prop option; [@option]
      (** slice_differentiator *)
  slice_service_type : float prop;  (** slice_service_type *)
}
[@@deriving yojson_of]
(** single_network_slice_selection_assistance_information *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mobile_network_slice = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  single_network_slice_selection_assistance_information :
    single_network_slice_selection_assistance_information list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice *)

let single_network_slice_selection_assistance_information
    ?slice_differentiator ~slice_service_type () :
    single_network_slice_selection_assistance_information =
  { slice_differentiator; slice_service_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_slice ?description ?id ?tags ?timeouts
    ~location ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information () :
    azurerm_mobile_network_slice =
  {
    description;
    id;
    location;
    mobile_network_id;
    name;
    tags;
    single_network_slice_selection_assistance_information;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information __id =
  let __type = "azurerm_mobile_network_slice" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_slice
        (azurerm_mobile_network_slice ?description ?id ?tags
           ?timeouts ~location ~mobile_network_id ~name
           ~single_network_slice_selection_assistance_information ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~location
      ~mobile_network_id ~name
      ~single_network_slice_selection_assistance_information __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
