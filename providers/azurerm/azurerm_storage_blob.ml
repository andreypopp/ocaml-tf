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

type t = {
  access_tier : string prop;
  cache_control : string prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  parallelism : float prop;
  size : float prop;
  source : string prop;
  source_content : string prop;
  source_uri : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop;
  url : string prop;
}

let azurerm_storage_blob ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ __resource_id =
  let __resource_type = "azurerm_storage_blob" in
  let __resource =
    ({
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
      : azurerm_storage_blob)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_blob __resource);
  let __resource_attributes =
    ({
       access_tier =
         Prop.computed __resource_type __resource_id "access_tier";
       cache_control =
         Prop.computed __resource_type __resource_id "cache_control";
       content_md5 =
         Prop.computed __resource_type __resource_id "content_md5";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       parallelism =
         Prop.computed __resource_type __resource_id "parallelism";
       size = Prop.computed __resource_type __resource_id "size";
       source = Prop.computed __resource_type __resource_id "source";
       source_content =
         Prop.computed __resource_type __resource_id "source_content";
       source_uri =
         Prop.computed __resource_type __resource_id "source_uri";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       storage_container_name =
         Prop.computed __resource_type __resource_id
           "storage_container_name";
       type_ = Prop.computed __resource_type __resource_id "type";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
