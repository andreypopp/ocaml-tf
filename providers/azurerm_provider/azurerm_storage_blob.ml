(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_blob__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob__timeouts *)

type azurerm_storage_blob = {
  access_tier : string prop option; [@option]  (** access_tier *)
  cache_control : string prop option; [@option]  (** cache_control *)
  content_md5 : string prop option; [@option]  (** content_md5 *)
  content_type : string prop option; [@option]  (** content_type *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  parallelism : float prop option; [@option]  (** parallelism *)
  size : float prop option; [@option]  (** size *)
  source : string prop option; [@option]  (** source *)
  source_content : string prop option; [@option]
      (** source_content *)
  source_uri : string prop option; [@option]  (** source_uri *)
  storage_account_name : string prop;  (** storage_account_name *)
  storage_container_name : string prop;
      (** storage_container_name *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : azurerm_storage_blob__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_blob *)

let azurerm_storage_blob ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ __resource_id =
  let __resource_type = "azurerm_storage_blob" in
  let __resource =
    {
      access_tier;
      cache_control;
      content_md5;
      content_type;
      id;
      metadata;
      name;
      parallelism;
      size;
      source;
      source_content;
      source_uri;
      storage_account_name;
      storage_container_name;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_blob __resource);
  ()
