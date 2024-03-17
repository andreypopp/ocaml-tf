(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_share_file__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share_file__timeouts *)

type azurerm_storage_share_file = {
  content_disposition : string option; [@option]
      (** content_disposition *)
  content_encoding : string option; [@option]
      (** content_encoding *)
  content_md5 : string option; [@option]  (** content_md5 *)
  content_type : string option; [@option]  (** content_type *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  source : string option; [@option]  (** source *)
  storage_share_id : string;  (** storage_share_id *)
  timeouts : azurerm_storage_share_file__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_file *)

let azurerm_storage_share_file ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id __resource_id =
  let __resource_type = "azurerm_storage_share_file" in
  let __resource =
    {
      content_disposition;
      content_encoding;
      content_md5;
      content_type;
      metadata;
      name;
      path;
      source;
      storage_share_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share_file __resource);
  ()
