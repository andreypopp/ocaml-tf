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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_blob *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_blob ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ () : azurerm_storage_blob =
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

let make ?access_tier ?cache_control ?content_md5 ?content_type ?id
    ?metadata ?parallelism ?size ?source ?source_content ?source_uri
    ?timeouts ~name ~storage_account_name ~storage_container_name
    ~type_ __id =
  let __type = "azurerm_storage_blob" in
  let __attrs =
    ({
       access_tier = Prop.computed __type __id "access_tier";
       cache_control = Prop.computed __type __id "cache_control";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parallelism = Prop.computed __type __id "parallelism";
       size = Prop.computed __type __id "size";
       source = Prop.computed __type __id "source";
       source_content = Prop.computed __type __id "source_content";
       source_uri = Prop.computed __type __id "source_uri";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_container_name =
         Prop.computed __type __id "storage_container_name";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_blob
        (azurerm_storage_blob ?access_tier ?cache_control
           ?content_md5 ?content_type ?id ?metadata ?parallelism
           ?size ?source ?source_content ?source_uri ?timeouts ~name
           ~storage_account_name ~storage_container_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?cache_control ?content_md5 ?content_type ?id
      ?metadata ?parallelism ?size ?source ?source_content
      ?source_uri ?timeouts ~name ~storage_account_name
      ~storage_container_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
