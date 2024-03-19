(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type links = {
  bandwidth_mhz : float prop;  (** bandwidth_mhz *)
  center_frequency_mhz : float prop;  (** center_frequency_mhz *)
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  polarization : string prop;  (** polarization *)
}
[@@deriving yojson_of]
(** links *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_orbital_spacecraft = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  norad_id : string prop;  (** norad_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  title_line : string prop;  (** title_line *)
  two_line_elements : string prop list;  (** two_line_elements *)
  links : links list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_spacecraft *)

let links ~bandwidth_mhz ~center_frequency_mhz ~direction ~name
    ~polarization () : links =
  {
    bandwidth_mhz;
    center_frequency_mhz;
    direction;
    name;
    polarization;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_orbital_spacecraft ?id ?tags ?timeouts ~location ~name
    ~norad_id ~resource_group_name ~title_line ~two_line_elements
    ~links () : azurerm_orbital_spacecraft =
  {
    id;
    location;
    name;
    norad_id;
    resource_group_name;
    tags;
    title_line;
    two_line_elements;
    links;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  norad_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title_line : string prop;
  two_line_elements : string list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name ~norad_id
    ~resource_group_name ~title_line ~two_line_elements ~links
    __resource_id =
  let __resource_type = "azurerm_orbital_spacecraft" in
  let __resource =
    azurerm_orbital_spacecraft ?id ?tags ?timeouts ~location ~name
      ~norad_id ~resource_group_name ~title_line ~two_line_elements
      ~links ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_spacecraft __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       norad_id =
         Prop.computed __resource_type __resource_id "norad_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       title_line =
         Prop.computed __resource_type __resource_id "title_line";
       two_line_elements =
         Prop.computed __resource_type __resource_id
           "two_line_elements";
     }
      : t)
  in
  __resource_attributes
