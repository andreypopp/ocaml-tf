(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_gallery_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application__timeouts *)

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
  timeouts : azurerm_gallery_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application *)

let azurerm_gallery_application ?description ?end_of_life_date ?eula
    ?id ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __resource_id =
  let __resource_type = "azurerm_gallery_application" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_gallery_application __resource);
  ()
