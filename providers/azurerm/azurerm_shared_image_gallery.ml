(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sharing__community_gallery = {
  eula : string prop;  (** eula *)
  prefix : string prop;  (** prefix *)
  publisher_email : string prop;  (** publisher_email *)
  publisher_uri : string prop;  (** publisher_uri *)
}
[@@deriving yojson_of]
(** sharing__community_gallery *)

type sharing = {
  permission : string prop;  (** permission *)
  community_gallery : sharing__community_gallery list;
}
[@@deriving yojson_of]
(** sharing *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_shared_image_gallery = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  sharing : sharing list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image_gallery *)

let sharing__community_gallery ~eula ~prefix ~publisher_email
    ~publisher_uri () : sharing__community_gallery =
  { eula; prefix; publisher_email; publisher_uri }

let sharing ~permission ~community_gallery () : sharing =
  { permission; community_gallery }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_shared_image_gallery ?description ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~sharing () :
    azurerm_shared_image_gallery =
  {
    description;
    id;
    location;
    name;
    resource_group_name;
    tags;
    sharing;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_name : string prop;
}

let make ?description ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sharing __id =
  let __type = "azurerm_shared_image_gallery" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       unique_name = Prop.computed __type __id "unique_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_shared_image_gallery
        (azurerm_shared_image_gallery ?description ?id ?tags
           ?timeouts ~location ~name ~resource_group_name ~sharing ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sharing __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~sharing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
