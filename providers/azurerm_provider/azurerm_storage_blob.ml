(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_blob__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob__timeouts *)

type azurerm_storage_blob = {
  access_tier : string option; [@option]  (** access_tier *)
  cache_control : string option; [@option]  (** cache_control *)
  content_md5 : string option; [@option]  (** content_md5 *)
  content_type : string option; [@option]  (** content_type *)
  id : string option; [@option]  (** id *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  parallelism : float option; [@option]  (** parallelism *)
  size : float option; [@option]  (** size *)
  source : string option; [@option]  (** source *)
  source_content : string option; [@option]  (** source_content *)
  source_uri : string option; [@option]  (** source_uri *)
  storage_account_name : string;  (** storage_account_name *)
  storage_container_name : string;  (** storage_container_name *)
  type_ : string; [@key "type"]  (** type *)
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
