(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?end_of_life_date ?eula ?id
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __resource_id =
  let __resource_type = "azurerm_gallery_application" in
  let __resource =
    azurerm_gallery_application ?description ?end_of_life_date ?eula
      ?id ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
      ~gallery_id ~location ~name ~supported_os_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_gallery_application __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       end_of_life_date =
         Prop.computed __resource_type __resource_id
           "end_of_life_date";
       eula = Prop.computed __resource_type __resource_id "eula";
       gallery_id =
         Prop.computed __resource_type __resource_id "gallery_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       privacy_statement_uri =
         Prop.computed __resource_type __resource_id
           "privacy_statement_uri";
       release_note_uri =
         Prop.computed __resource_type __resource_id
           "release_note_uri";
       supported_os_type =
         Prop.computed __resource_type __resource_id
           "supported_os_type";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
