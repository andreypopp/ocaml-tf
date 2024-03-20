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

type azurerm_dev_center_project = {
  description : string prop option; [@option]  (** description *)
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maximum_dev_boxes_per_user : float prop option; [@option]
      (** maximum_dev_boxes_per_user *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_project *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_center_project ?description ?id
    ?maximum_dev_boxes_per_user ?tags ?timeouts ~dev_center_id
    ~location ~name ~resource_group_name () :
    azurerm_dev_center_project =
  {
    description;
    dev_center_id;
    id;
    location;
    maximum_dev_boxes_per_user;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  dev_center_id : string prop;
  dev_center_uri : string prop;
  id : string prop;
  location : string prop;
  maximum_dev_boxes_per_user : float prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?maximum_dev_boxes_per_user ?tags ?timeouts
    ~dev_center_id ~location ~name ~resource_group_name __id =
  let __type = "azurerm_dev_center_project" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       dev_center_id = Prop.computed __type __id "dev_center_id";
       dev_center_uri = Prop.computed __type __id "dev_center_uri";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maximum_dev_boxes_per_user =
         Prop.computed __type __id "maximum_dev_boxes_per_user";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_project
        (azurerm_dev_center_project ?description ?id
           ?maximum_dev_boxes_per_user ?tags ?timeouts ~dev_center_id
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?maximum_dev_boxes_per_user
    ?tags ?timeouts ~dev_center_id ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?maximum_dev_boxes_per_user ?tags ?timeouts
      ~dev_center_id ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
