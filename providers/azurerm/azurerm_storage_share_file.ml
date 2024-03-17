(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_share_file__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share_file__timeouts *)

type azurerm_storage_share_file = {
  content_disposition : string prop option; [@option]
      (** content_disposition *)
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  content_md5 : string prop option; [@option]  (** content_md5 *)
  content_type : string prop option; [@option]  (** content_type *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  source : string prop option; [@option]  (** source *)
  storage_share_id : string prop;  (** storage_share_id *)
  timeouts : azurerm_storage_share_file__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_file *)

type t = {
  content_disposition : string prop;
  content_encoding : string prop;
  content_length : float prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  path : string prop;
  source : string prop;
  storage_share_id : string prop;
}

let azurerm_storage_share_file ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?id ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id __resource_id =
  let __resource_type = "azurerm_storage_share_file" in
  let __resource =
    ({
       content_disposition;
       content_encoding;
       content_md5;
       content_type;
       id;
       metadata;
       name;
       path;
       source;
       storage_share_id;
       timeouts;
     }
      : azurerm_storage_share_file)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share_file __resource);
  let __resource_attributes =
    ({
       content_disposition =
         Prop.computed __resource_type __resource_id
           "content_disposition";
       content_encoding =
         Prop.computed __resource_type __resource_id
           "content_encoding";
       content_length =
         Prop.computed __resource_type __resource_id "content_length";
       content_md5 =
         Prop.computed __resource_type __resource_id "content_md5";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       path = Prop.computed __resource_type __resource_id "path";
       source = Prop.computed __resource_type __resource_id "source";
       storage_share_id =
         Prop.computed __resource_type __resource_id
           "storage_share_id";
     }
      : t)
  in
  __resource_attributes
