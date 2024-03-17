(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_gallery_application__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application__timeouts *)

type azurerm_gallery_application = {
  description : string option; [@option]  (** description *)
  end_of_life_date : string option; [@option]
      (** end_of_life_date *)
  eula : string option; [@option]  (** eula *)
  gallery_id : string;  (** gallery_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  privacy_statement_uri : string option; [@option]
      (** privacy_statement_uri *)
  release_note_uri : string option; [@option]
      (** release_note_uri *)
  supported_os_type : string;  (** supported_os_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_gallery_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application *)

let azurerm_gallery_application ?description ?end_of_life_date ?eula
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __resource_id =
  let __resource_type = "azurerm_gallery_application" in
  let __resource =
    {
      description;
      end_of_life_date;
      eula;
      gallery_id;
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
