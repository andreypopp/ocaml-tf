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

type azurerm_iothub_endpoint_storage_container = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  batch_frequency_in_seconds : float prop option; [@option]
      (** batch_frequency_in_seconds *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  container_name : string prop;  (** container_name *)
  encoding : string prop option; [@option]  (** encoding *)
  endpoint_uri : string prop option; [@option]  (** endpoint_uri *)
  file_name_format : string prop option; [@option]
      (** file_name_format *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  iothub_id : string prop;  (** iothub_id *)
  max_chunk_size_in_bytes : float prop option; [@option]
      (** max_chunk_size_in_bytes *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_storage_container *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_endpoint_storage_container ?authentication_type
    ?batch_frequency_in_seconds ?connection_string ?encoding
    ?endpoint_uri ?file_name_format ?id ?identity_id
    ?max_chunk_size_in_bytes ?timeouts ~container_name ~iothub_id
    ~name ~resource_group_name () :
    azurerm_iothub_endpoint_storage_container =
  {
    authentication_type;
    batch_frequency_in_seconds;
    connection_string;
    container_name;
    encoding;
    endpoint_uri;
    file_name_format;
    id;
    identity_id;
    iothub_id;
    max_chunk_size_in_bytes;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  batch_frequency_in_seconds : float prop;
  connection_string : string prop;
  container_name : string prop;
  encoding : string prop;
  endpoint_uri : string prop;
  file_name_format : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  max_chunk_size_in_bytes : float prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?authentication_type ?batch_frequency_in_seconds
    ?connection_string ?encoding ?endpoint_uri ?file_name_format ?id
    ?identity_id ?max_chunk_size_in_bytes ?timeouts ~container_name
    ~iothub_id ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_endpoint_storage_container" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       batch_frequency_in_seconds =
         Prop.computed __type __id "batch_frequency_in_seconds";
       connection_string =
         Prop.computed __type __id "connection_string";
       container_name = Prop.computed __type __id "container_name";
       encoding = Prop.computed __type __id "encoding";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       file_name_format =
         Prop.computed __type __id "file_name_format";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       iothub_id = Prop.computed __type __id "iothub_id";
       max_chunk_size_in_bytes =
         Prop.computed __type __id "max_chunk_size_in_bytes";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_endpoint_storage_container
        (azurerm_iothub_endpoint_storage_container
           ?authentication_type ?batch_frequency_in_seconds
           ?connection_string ?encoding ?endpoint_uri
           ?file_name_format ?id ?identity_id
           ?max_chunk_size_in_bytes ?timeouts ~container_name
           ~iothub_id ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type
    ?batch_frequency_in_seconds ?connection_string ?encoding
    ?endpoint_uri ?file_name_format ?id ?identity_id
    ?max_chunk_size_in_bytes ?timeouts ~container_name ~iothub_id
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?batch_frequency_in_seconds
      ?connection_string ?encoding ?endpoint_uri ?file_name_format
      ?id ?identity_id ?max_chunk_size_in_bytes ?timeouts
      ~container_name ~iothub_id ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
