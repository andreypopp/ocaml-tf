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

type azurerm_gallery_application = {
  description : string prop option; [@option]  (** description *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  eula : string prop option; [@option]  (** eula *)
  gallery_id : string prop;  (** gallery_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  privacy_statement_uri : string prop option; [@option]
      (** privacy_statement_uri *)
  release_note_uri : string prop option; [@option]
      (** release_note_uri *)
  supported_os_type : string prop;  (** supported_os_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_gallery_application ?description ?end_of_life_date ?eula
    ?id ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type () :
    azurerm_gallery_application =
  {
    description;
    end_of_life_date;
    eula;
    gallery_id;
    id;
    location;
    name;
    privacy_statement_uri;
    release_note_uri;
    supported_os_type;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  end_of_life_date : string prop;
  eula : string prop;
  gallery_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  privacy_statement_uri : string prop;
  release_note_uri : string prop;
  supported_os_type : string prop;
  tags : (string * string) list prop;
}

let make ?description ?end_of_life_date ?eula ?id
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __id =
  let __type = "azurerm_gallery_application" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       eula = Prop.computed __type __id "eula";
       gallery_id = Prop.computed __type __id "gallery_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       privacy_statement_uri =
         Prop.computed __type __id "privacy_statement_uri";
       release_note_uri =
         Prop.computed __type __id "release_note_uri";
       supported_os_type =
         Prop.computed __type __id "supported_os_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_gallery_application
        (azurerm_gallery_application ?description ?end_of_life_date
           ?eula ?id ?privacy_statement_uri ?release_note_uri ?tags
           ?timeouts ~gallery_id ~location ~name ~supported_os_type
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?end_of_life_date ?eula ?id
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?end_of_life_date ?eula ?id
      ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
      ~gallery_id ~location ~name ~supported_os_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
