(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_center_gallery = {
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  shared_gallery_id : string prop;  (** shared_gallery_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_gallery *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id () : azurerm_dev_center_gallery =
  { dev_center_id; id; name; shared_gallery_id; timeouts }

type t = {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  shared_gallery_id : string prop;
}

let make ?id ?timeouts ~dev_center_id ~name ~shared_gallery_id __id =
  let __type = "azurerm_dev_center_gallery" in
  let __attrs =
    ({
       dev_center_id = Prop.computed __type __id "dev_center_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       shared_gallery_id =
         Prop.computed __type __id "shared_gallery_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_gallery
        (azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id
           ~name ~shared_gallery_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dev_center_id ~name ~shared_gallery_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
